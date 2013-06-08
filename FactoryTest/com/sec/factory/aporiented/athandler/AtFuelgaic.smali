.class public Lcom/sec/factory/aporiented/athandler/AtFuelgaic;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFuelgaic.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "FUELGAIC"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;->CMD_NAME:Ljava/lang/String;

    .line 11
    const-string v0, "AtFuelgaic"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;->CLASS_NAME:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;->NUM_ARGS:I

    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 18
    monitor-enter p0

    const/4 v0, 0x0

    .line 20
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 21
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_54

    .line 35
    :goto_9
    monitor-exit p0

    return-object v1

    .line 24
    :cond_b
    const/4 v1, 0x1

    :try_start_c
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 25
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModulePower;->resetFuelGaugeIC()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 26
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2b
    move-object v1, v0

    .line 35
    goto :goto_9

    .line 28
    :cond_2d
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 29
    :cond_35
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 30
    const/4 v1, 0x0

    aget-object v1, p1, v1

    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModulePower;->readFuelGaugeSOC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtFuelgaic;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 32
    :cond_51
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_53
    .catchall {:try_start_c .. :try_end_53} :catchall_54

    goto :goto_2b

    .line 18
    :catchall_54
    move-exception v1

    monitor-exit p0

    throw v1
.end method
