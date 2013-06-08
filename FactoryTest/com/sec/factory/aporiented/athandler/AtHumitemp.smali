.class public Lcom/sec/factory/aporiented/athandler/AtHumitemp;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtHumitemp.java"


# instance fields
.field private mSensorID:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mSensorID:[I

    .line 15
    const-string v0, "HUMITEMP"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->CMD_NAME:Ljava/lang/String;

    .line 16
    const-string v0, "AtHumitemp"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->CLASS_NAME:Ljava/lang/String;

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->NUM_ARGS:I

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "argu"

    .prologue
    .line 23
    monitor-enter p0

    const/4 v1, 0x0

    .line 25
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    array-length v4, p1

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->NUM_ARGS:I

    if-eq v4, v5, :cond_b

    .line 26
    const-string v4, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_5f

    .line 101
    :goto_9
    monitor-exit p0

    return-object v4

    .line 29
    :cond_b
    const/4 v4, 0x3

    :try_start_c
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 31
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 33
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_HUMIDITY:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-nez v4, :cond_3c

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_TEMPERATURE:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 35
    :cond_3c
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Sensor OFF (0,0,0)"

    const-string v6, " Sensor Off : NG"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    move-object v4, v1

    .line 101
    goto :goto_9

    .line 38
    :cond_4e
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Sensor OFF (0,0,0)"

    const-string v6, " Sensor Off : OK"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_c .. :try_end_5e} :catchall_5f

    goto :goto_4c

    .line 23
    :catchall_5f
    move-exception v4

    monitor-exit p0

    throw v4

    .line 42
    :cond_62
    const/4 v4, 0x3

    :try_start_63
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 45
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 47
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    sget v6, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_HUMIDITY:I

    aput v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_TEMPERATURE:I

    aput v6, v4, v5

    iput-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mSensorID:[I

    .line 50
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mSensorID:[I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 52
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_HUMIDITY:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_ba

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_TEMPERATURE:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 54
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Sensor ON (0,1,0)"

    const-string v6, " Sensor On : OK"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 57
    :cond_ba
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Sensor ON (0,1,0)"

    const-string v6, " Sensor On : NG"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 61
    :cond_cb
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_199

    .line 64
    const-string v0, ""

    .line 65
    .local v0, humi:Ljava/lang/String;
    const-string v3, ""

    .line 66
    .local v3, temp:Ljava/lang/String;
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_HUMIDITY:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_175

    .line 67
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_HUMIDITY:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, result:[Ljava/lang/String;
    if-eqz v2, :cond_169

    .line 70
    const/4 v4, 0x2

    aget-object v0, v2, v4

    .line 71
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Sensor read (1,0,0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Humidity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v2           #result:[Ljava/lang/String;
    :goto_118
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_TEMPERATURE:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v4

    if-eqz v4, :cond_18d

    .line 82
    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_TEMPERATURE:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v2

    .line 83
    .restart local v2       #result:[Ljava/lang/String;
    if-eqz v2, :cond_181

    .line 84
    const/4 v4, 0x2

    aget-object v3, v2, v4

    .line 85
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Sensor read (1,0,0)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Temperature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v2           #result:[Ljava/lang/String;
    :goto_149
    const/4 v4, 0x0

    aget-object v4, p1, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    goto/16 :goto_4c

    .line 73
    .restart local v2       #result:[Ljava/lang/String;
    :cond_169
    const-string v0, "NG"

    .line 74
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Sensor read (1,0,0)"

    const-string v6, "Humidity: null"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_118

    .line 77
    .end local v2           #result:[Ljava/lang/String;
    :cond_175
    const-string v0, "NG"

    .line 78
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Sensor read (1,0,0)"

    const-string v6, "Humidity Sensor On Fail"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_118

    .line 87
    .restart local v2       #result:[Ljava/lang/String;
    :cond_181
    const-string v3, "NG"

    .line 88
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Sensor read (1,0,0)"

    const-string v6, "Temperature: null"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_149

    .line 91
    .end local v2           #result:[Ljava/lang/String;
    :cond_18d
    const-string v3, "NG"

    .line 92
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtHumitemp;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "Sensor read (1,0,0)"

    const-string v6, "Temperature Sensor On Fail"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_149

    .line 98
    .end local v0           #humi:Ljava/lang/String;
    .end local v3           #temp:Ljava/lang/String;
    :cond_199
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_19b
    .catchall {:try_start_63 .. :try_end_19b} :catchall_5f

    goto/16 :goto_4c
.end method
