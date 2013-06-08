.class public Lcom/sec/factory/aporiented/athandler/AtLightest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtLightest.java"


# instance fields
.field private final NEW_DM_DATA_LEN:I

.field private mSensorID:[I

.field private mSensorID_LIGHT_CCT:I

.field private mSensorID_LIGHT_LUX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 18
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 11
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->NEW_DM_DATA_LEN:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID:[I

    .line 14
    iput v1, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID_LIGHT_LUX:I

    .line 15
    iput v1, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID_LIGHT_CCT:I

    .line 19
    const-string v0, "LIGHTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CMD_NAME:Ljava/lang/String;

    .line 20
    const-string v0, "AtLightest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->NUM_ARGS:I

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "argu"

    .prologue
    .line 26
    monitor-enter p0

    const/4 v2, 0x0

    .line 28
    .local v2, resData:Ljava/lang/String;
    :try_start_2
    array-length v4, p1

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->NUM_ARGS:I

    if-eq v4, v5, :cond_b

    .line 29
    const-string v4, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_24a

    .line 149
    :goto_9
    monitor-exit p0

    return-object v4

    .line 36
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

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtLightest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 38
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtLightest;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 40
    sget v4, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT:I

    iput v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID_LIGHT_LUX:I

    .line 41
    sget v4, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT_CCT:I

    iput v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID_LIGHT_CCT:I

    .line 42
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID_LIGHT_LUX:I

    aput v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID_LIGHT_CCT:I

    aput v6, v4, v5

    iput-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID:[I

    .line 43
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtLightest;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID:[I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 45
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtLightest;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID_LIGHT_LUX:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 46
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "0,0 - Sensor On : OK"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtLightest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5b
    :goto_5b
    move-object v4, v2

    .line 149
    goto :goto_9

    .line 49
    :cond_5d
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "0,0 - Sensor On : NG"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtLightest;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v2

    goto :goto_5b

    .line 57
    :cond_6b
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtLightest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 58
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtLightest;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 60
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtLightest;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID_LIGHT_LUX:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 61
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "0,1 - Sensor Off : NG"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtLightest;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v2

    goto :goto_5b

    .line 64
    :cond_9b
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "0,1 - Sensor Off : OK"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtLightest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5b

    .line 72
    :cond_ac
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtLightest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_178

    .line 73
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtLightest;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID_LIGHT_LUX:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_169

    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, result:[Ljava/lang/String;
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtLightest;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID_LIGHT_LUX:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v3

    .line 77
    if-eqz v3, :cond_15a

    .line 78
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1,0 - Total Read : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_c .. :try_end_f1} :catchall_24a

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, data:I
    const/4 v4, 0x2

    :try_start_f3
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_f8
    .catchall {:try_start_f3 .. :try_end_f8} :catchall_24a
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f8} :catch_154

    move-result v4

    float-to-int v0, v4

    .line 86
    :goto_fa
    :try_start_fa
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1,0 - Totaldata: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v4, 0x0

    aget-object v4, p1, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtLightest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string v4, "NEW_DM"

    const-string v5, "FACTORY_TEST_PROTOCOL"

    invoke-static {v5}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14a

    const-string v4, "NEW_ETS"

    const-string v5, "FACTORY_TEST_PROTOCOL"

    invoke-static {v5}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 95
    :cond_14a
    const/16 v4, 0xa

    const/16 v5, 0x20

    invoke-static {v2, v4, v5}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5b

    .line 82
    :catch_154
    move-exception v1

    .line 83
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const/4 v0, 0x0

    goto :goto_fa

    .line 100
    .end local v0           #data:I
    .end local v1           #e:Ljava/lang/Exception;
    :cond_15a
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "1,0 - Total Read : NG (null)"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtLightest;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5b

    .line 104
    .end local v3           #result:[Ljava/lang/String;
    :cond_169
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "1,0 - Total Read : NG (Sensor Off)"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtLightest;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5b

    .line 110
    :cond_178
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtLightest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_244

    .line 111
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtLightest;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID_LIGHT_CCT:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_235

    .line 112
    const/4 v3, 0x0

    .line 113
    .restart local v3       #result:[Ljava/lang/String;
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtLightest;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->mSensorID_LIGHT_CCT:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v3

    .line 115
    if-eqz v3, :cond_226

    .line 116
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1,1 - Total Read : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bd
    .catchall {:try_start_fa .. :try_end_1bd} :catchall_24a

    .line 117
    const/4 v0, 0x0

    .line 119
    .restart local v0       #data:I
    const/4 v4, 0x2

    :try_start_1bf
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1c4
    .catchall {:try_start_1bf .. :try_end_1c4} :catchall_24a
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1c4} :catch_220

    move-result v4

    float-to-int v0, v4

    .line 124
    :goto_1c6
    :try_start_1c6
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1,1 - Totaldata: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v4, 0x0

    aget-object v4, p1, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtLightest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    const-string v4, "NEW_DM"

    const-string v5, "FACTORY_TEST_PROTOCOL"

    invoke-static {v5}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_216

    const-string v4, "NEW_ETS"

    const-string v5, "FACTORY_TEST_PROTOCOL"

    invoke-static {v5}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 133
    :cond_216
    const/16 v4, 0xa

    const/16 v5, 0x20

    invoke-static {v2, v4, v5}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5b

    .line 120
    :catch_220
    move-exception v1

    .line 121
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    const/4 v0, 0x0

    goto :goto_1c6

    .line 138
    .end local v0           #data:I
    .end local v1           #e:Ljava/lang/Exception;
    :cond_226
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "1,1 - Total Read : NG (null)"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtLightest;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5b

    .line 142
    .end local v3           #result:[Ljava/lang/String;
    :cond_235
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtLightest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "1,1 - Total Read : NG (Sensor Off)"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtLightest;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5b

    .line 146
    :cond_244
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtLightest;->responseNA()Ljava/lang/String;
    :try_end_247
    .catchall {:try_start_1c6 .. :try_end_247} :catchall_24a

    move-result-object v2

    goto/16 :goto_5b

    .line 26
    :catchall_24a
    move-exception v4

    monitor-exit p0

    throw v4
.end method
