.class public Lcom/sec/factory/aporiented/athandler/AtBattcali;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtBattcali.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "BATTCALI"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBattcali;->CMD_NAME:Ljava/lang/String;

    .line 11
    const-string v0, "AtBattcali"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBattcali;->CLASS_NAME:Ljava/lang/String;

    .line 12
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtBattcali;->NUM_ARGS:I

    .line 14
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtBattcali;->setCalibrationOnBoot()V

    .line 15
    return-void
.end method

.method private setCalibrationOnBoot()V
    .registers 3

    .prologue
    .line 18
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtBattcali;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModulePower;->readBatteryCal()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, battVal:Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 21
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtBattcali;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v1, v0}, Lcom/sec/factory/modules/ModulePower;->writeBatteryAdcCal(Ljava/lang/String;)V

    .line 23
    :cond_13
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "argu"

    .prologue
    .line 28
    monitor-enter p0

    const/4 v1, 0x0

    .line 30
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtBattcali;->NUM_ARGS:I

    if-eq v2, v3, :cond_b

    .line 31
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_5b

    .line 49
    :goto_9
    monitor-exit p0

    return-object v2

    .line 34
    :cond_b
    const/4 v2, 0x3

    :try_start_c
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

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtBattcali;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 36
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtBattcali;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModulePower;->readBatteryAdcCal()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, adc:Ljava/lang/String;
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtBattcali;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v2, v0}, Lcom/sec/factory/modules/ModulePower;->writeBatteryAdcCal(Ljava/lang/String;)V

    .line 39
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2, v0}, Lcom/sec/factory/aporiented/athandler/AtBattcali;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v0           #adc:Ljava/lang/String;
    :goto_35
    move-object v2, v1

    .line 49
    goto :goto_9

    .line 40
    :cond_37
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "2"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtBattcali;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 42
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtBattcali;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModulePower;->writeBatteryCal(Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtBattcali;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    .line 46
    :cond_58
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_5a
    .catchall {:try_start_c .. :try_end_5a} :catchall_5b

    goto :goto_35

    .line 28
    :catchall_5b
    move-exception v2

    monitor-exit p0

    throw v2
.end method
