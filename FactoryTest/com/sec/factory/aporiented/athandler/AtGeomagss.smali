.class public Lcom/sec/factory/aporiented/athandler/AtGeomagss;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtGeomagss.java"


# instance fields
.field private final dummyData:C

.field private mFeature:Ljava/lang/String;

.field private mSensorID:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 13
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GEOMAGNETIC:I

    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mSensorID:[I

    .line 16
    const/16 v0, 0x20

    iput-char v0, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->dummyData:C

    .line 20
    const-string v0, "GEOMAGSS"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CMD_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "AtGeomagss"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->NUM_ARGS:I

    .line 23
    return-void
.end method

.method private commandFormat_Temperature(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "str"

    .prologue
    .line 274
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "commandFormat_Temperature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "str : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object v0, p1

    .line 276
    .local v0, returnValue:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2e

    .line 277
    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_2e
    const-string v2, "NEW_ETS"

    const-string v3, "FACTORY_TEST_PROTOCOL"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    const-string v2, "NEW_DM"

    const-string v3, "FACTORY_TEST_PROTOCOL"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 284
    :cond_4a
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "commandFormat_Temperature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "returnValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_88

    .line 286
    const-string v0, "NG"

    .line 295
    :cond_6d
    :goto_6d
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "commandFormat_Temperature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "returnValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-object v0

    .line 288
    :cond_88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 289
    .local v1, temp:I
    if-ltz v1, :cond_b0

    const/16 v2, 0x9

    if-gt v1, v2, :cond_b0

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6d

    .line 292
    :cond_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6d
.end method

.method private commandFormat_XYZ(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "str"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "commandFormat_XYZ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "str : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "NEW_ETS"

    const-string v1, "FACTORY_TEST_PROTOCOL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "NEW_DM"

    const-string v1, "FACTORY_TEST_PROTOCOL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 307
    :cond_36
    const/16 v0, 0x8

    const/16 v1, 0x20

    invoke-static {p1, v0, v1}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    .line 309
    .end local p1
    :cond_3e
    return-object p1
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "argu"

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFeature : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x0

    .line 30
    .local v1, resData:Ljava/lang/String;
    array-length v5, p1

    iget v6, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->NUM_ARGS:I

    if-eq v5, v6, :cond_27

    .line 31
    const-string v5, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_9a

    .line 270
    :goto_25
    monitor-exit p0

    return-object v5

    .line 38
    :cond_27
    const/4 v5, 0x2

    :try_start_28
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "0"

    aput-object v7, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 39
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "AK8963"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "AK8963C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 41
    :cond_4e
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_55
    move-object v5, v1

    .line 270
    goto :goto_25

    .line 43
    :cond_57
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_ON:I

    .line 44
    .local v0, id:I
    const/4 v5, 0x1

    new-array v4, v5, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    .line 45
    .local v4, senserID:[I
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 46
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 47
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, result:[Ljava/lang/String;
    if-eqz v3, :cond_bf

    .line 49
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 50
    const/4 v5, 0x2

    aget-object v5, v3, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 51
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "0,0 - Power On : OK"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    :goto_94
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V
    :try_end_99
    .catchall {:try_start_28 .. :try_end_99} :catchall_9a

    goto :goto_55

    .line 27
    .end local v0           #id:I
    .end local v1           #resData:Ljava/lang/String;
    .end local v3           #result:[Ljava/lang/String;
    .end local v4           #senserID:[I
    :catchall_9a
    move-exception v5

    monitor-exit p0

    throw v5

    .line 54
    .restart local v0       #id:I
    .restart local v1       #resData:Ljava/lang/String;
    .restart local v3       #result:[Ljava/lang/String;
    .restart local v4       #senserID:[I
    :cond_9d
    :try_start_9d
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "0,0 - Power On : NG"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_94

    .line 58
    :cond_ae
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "0,0 - Power On : NG (Sensor Off)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_94

    .line 62
    :cond_bf
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "0,0 - Power On : NG (null)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_94

    .line 73
    .end local v0           #id:I
    .end local v3           #result:[Ljava/lang/String;
    .end local v4           #senserID:[I
    :cond_d0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "0"

    aput-object v7, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1ed

    .line 74
    const-string v2, ""

    .line 75
    .local v2, responseData:Ljava/lang/String;
    const/4 v0, -0x1

    .line 76
    .restart local v0       #id:I
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 78
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "AK8975"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_113

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "YAS530C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_113

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "YAS532"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_113

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "AK8963C_MANAGER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1af

    .line 82
    :cond_113
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_STATUS:I

    .line 86
    :goto_115
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    iput-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mSensorID:[I

    .line 87
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mSensorID:[I

    invoke-virtual {v5, v6}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 88
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v5

    if-eqz v5, :cond_1c5

    .line 89
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v3

    .line 90
    .restart local v3       #result:[Ljava/lang/String;
    if-eqz v3, :cond_1b3

    .line 91
    const/4 v5, 0x2

    aget-object v2, v3, v5

    .line 100
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 103
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "YAS530C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_150

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "YAS532"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d7

    .line 105
    :cond_150
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_TEMPERATURE:I

    .line 108
    :goto_152
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    iput-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mSensorID:[I

    .line 109
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mSensorID:[I

    invoke-virtual {v5, v6}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 110
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v3

    .line 111
    if-eqz v3, :cond_1db

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->commandFormat_Temperature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "1,0 - Temperature : responseData => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 121
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5, v2}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    goto/16 :goto_55

    .line 84
    .end local v3           #result:[Ljava/lang/String;
    :cond_1af
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_STATUS:I

    goto/16 :goto_115

    .line 93
    .restart local v3       #result:[Ljava/lang/String;
    :cond_1b3
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "1,0 - Status : NG (null)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_25

    .line 97
    .end local v3           #result:[Ljava/lang/String;
    :cond_1c5
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "1,0 - Status : NG (Sensor Off)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_25

    .line 107
    .restart local v3       #result:[Ljava/lang/String;
    :cond_1d7
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_TEMPERATURE:I

    goto/16 :goto_152

    .line 116
    :cond_1db
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "1,0 - Temperature : NG (null)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_25

    .line 128
    .end local v0           #id:I
    .end local v2           #responseData:Ljava/lang/String;
    .end local v3           #result:[Ljava/lang/String;
    :cond_1ed
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "1"

    aput-object v7, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c1

    .line 129
    const/4 v0, -0x1

    .line 130
    .restart local v0       #id:I
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "AK8963"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_215

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "AK8963C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29b

    .line 132
    :cond_215
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_DAC:I

    .line 135
    :goto_217
    const/4 v5, 0x1

    new-array v4, v5, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    .line 137
    .restart local v4       #senserID:[I
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 138
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 139
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v3

    .line 140
    .restart local v3       #result:[Ljava/lang/String;
    if-eqz v3, :cond_2b0

    .line 141
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v5

    if-eqz v5, :cond_29f

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->commandFormat_XYZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->commandFormat_XYZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->commandFormat_XYZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .restart local v2       #responseData:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(1,1) responseData => ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5, v2}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .end local v2           #responseData:Ljava/lang/String;
    :goto_294
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    goto/16 :goto_55

    .line 134
    .end local v3           #result:[Ljava/lang/String;
    .end local v4           #senserID:[I
    :cond_29b
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_DAC:I

    goto/16 :goto_217

    .line 149
    .restart local v3       #result:[Ljava/lang/String;
    .restart local v4       #senserID:[I
    :cond_29f
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "1,1 - DAC X,Y,Z : NG (Sensor Off)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_294

    .line 153
    :cond_2b0
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "1,1 - DAC X,Y,Z : NG (null)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_294

    .line 163
    .end local v0           #id:I
    .end local v3           #result:[Ljava/lang/String;
    .end local v4           #senserID:[I
    :cond_2c1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "2"

    aput-object v7, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b3

    .line 164
    const/4 v0, -0x1

    .line 165
    .restart local v0       #id:I
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "AK8963"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_307

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "AK8963C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_307

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "HSCDTD004"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_307

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "HSCDTD004A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_307

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "HSCDTD006A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38d

    .line 170
    :cond_307
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    .line 173
    :goto_309
    const/4 v5, 0x1

    new-array v4, v5, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    .line 175
    .restart local v4       #senserID:[I
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 176
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 177
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v3

    .line 178
    .restart local v3       #result:[Ljava/lang/String;
    if-eqz v3, :cond_3a2

    .line 179
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v5

    if-eqz v5, :cond_391

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->commandFormat_XYZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->commandFormat_XYZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->commandFormat_XYZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .restart local v2       #responseData:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(1,2) responseData => ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5, v2}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .end local v2           #responseData:Ljava/lang/String;
    :goto_386
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    goto/16 :goto_55

    .line 172
    .end local v3           #result:[Ljava/lang/String;
    .end local v4           #senserID:[I
    :cond_38d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_ADC:I

    goto/16 :goto_309

    .line 187
    .restart local v3       #result:[Ljava/lang/String;
    .restart local v4       #senserID:[I
    :cond_391
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "1,2 - ADC X,Y,Z : NG (Sensor Off)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_386

    .line 191
    :cond_3a2
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "1,2 - ADC X,Y,Z : NG (null)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_386

    .line 201
    .end local v0           #id:I
    .end local v3           #result:[Ljava/lang/String;
    .end local v4           #senserID:[I
    :cond_3b3
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "3"

    aput-object v7, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_460

    .line 202
    const/4 v0, -0x1

    .line 203
    .restart local v0       #id:I
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "AK8963"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3db

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "AK8963C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_433

    .line 205
    :cond_3db
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_SELF:I

    .line 209
    :goto_3dd
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 210
    const/4 v5, 0x1

    new-array v4, v5, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    .line 211
    .restart local v4       #senserID:[I
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 212
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v3

    .line 213
    .restart local v3       #result:[Ljava/lang/String;
    if-eqz v3, :cond_452

    .line 214
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v5

    if-eqz v5, :cond_444

    .line 215
    const/4 v5, 0x1

    aget-object v5, v3, v5

    const-string v6, "OK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_436

    .line 216
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "1,3 - Self Test : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    :goto_42c
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    goto/16 :goto_55

    .line 207
    .end local v3           #result:[Ljava/lang/String;
    .end local v4           #senserID:[I
    :cond_433
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_SELF:I

    goto :goto_3dd

    .line 219
    .restart local v3       #result:[Ljava/lang/String;
    .restart local v4       #senserID:[I
    :cond_436
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "1,3 - Self Test : NG"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    goto :goto_42c

    .line 223
    :cond_444
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "1,3 - Self Test : NG (Sensor Off)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    goto :goto_42c

    .line 227
    :cond_452
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "1,3 - Self Test : NG (null)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    goto :goto_42c

    .line 237
    .end local v0           #id:I
    .end local v3           #result:[Ljava/lang/String;
    .end local v4           #senserID:[I
    :cond_460
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "4"

    aput-object v7, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_534

    .line 238
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "YAS530C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_487

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mFeature:Ljava/lang/String;

    const-string v6, "YAS532"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_530

    .line 240
    :cond_487
    const/4 v0, -0x1

    .line 241
    .restart local v0       #id:I
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_OFFSETH:I

    .line 242
    const/4 v5, 0x1

    new-array v4, v5, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    .line 244
    .restart local v4       #senserID:[I
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 245
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 246
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v3

    .line 247
    .restart local v3       #result:[Ljava/lang/String;
    if-eqz v3, :cond_51f

    .line 248
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5, v0}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v5

    if-eqz v5, :cond_50e

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->commandFormat_XYZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->commandFormat_XYZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->commandFormat_XYZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    .restart local v2       #responseData:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(1,4) responseData => ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5, v2}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .end local v2           #responseData:Ljava/lang/String;
    :goto_507
    sget-object v5, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    goto/16 :goto_55

    .line 256
    :cond_50e
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "1,4 - OffsetH X,Y,Z : NG (Sensor Off)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_507

    .line 261
    :cond_51f
    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "handleCommand"

    const-string v7, "1,4 - OffsetH X,Y,Z : NG (null)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/sec/factory/aporiented/athandler/AtGeomagss;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_507

    .line 266
    .end local v0           #id:I
    .end local v3           #result:[Ljava/lang/String;
    .end local v4           #senserID:[I
    :cond_530
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto/16 :goto_55

    .line 268
    :cond_534
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_536
    .catchall {:try_start_9d .. :try_end_536} :catchall_9a

    goto/16 :goto_55
.end method
