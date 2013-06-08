.class public Lcom/sec/factory/aporiented/athandler/AtKey;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtKey.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "KEY"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKey;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtKey"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKey;->CLASS_NAME:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtKey;->NUM_ARGS:I

    .line 18
    :goto_14
    return-void

    .line 17
    :cond_15
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtKey;->NUM_ARGS:I

    goto :goto_14
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "argu"

    .prologue
    .line 22
    monitor-enter p0

    const/4 v1, 0x0

    .line 24
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    array-length v3, p1

    iget v4, p0, Lcom/sec/factory/aporiented/athandler/AtKey;->NUM_ARGS:I

    if-eq v3, v4, :cond_b

    .line 25
    const-string v3, "wrong"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_59

    .line 43
    :goto_9
    monitor-exit p0

    return-object v3

    .line 27
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtKey;->getCmdType()I

    move-result v3

    if-nez v3, :cond_5c

    .line 28
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 29
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtKey;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleDFT;->DftKey(Ljava/lang/String;)V

    .line 34
    :cond_24
    :goto_24
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v2

    .line 35
    .local v2, stateValue:S
    const/4 v3, 0x1

    aget-object v3, p1, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    .line 36
    .local v0, keycodeValue:S
    mul-int/lit16 v3, v2, 0x100

    add-int/2addr v3, v0

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtKey;->setResultType(I)V

    .end local v0           #keycodeValue:S
    .end local v2           #stateValue:S
    :goto_43
    move-object v3, v1

    .line 43
    goto :goto_9

    .line 30
    :cond_45
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const-string v4, "01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 32
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtKey;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleDFT;->DftKeyHold(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_b .. :try_end_58} :catchall_59

    goto :goto_24

    .line 22
    :catchall_59
    move-exception v3

    monitor-exit p0

    throw v3

    .line 39
    :cond_5c
    :try_start_5c
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtKey;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleDFT;->DftKey(Ljava/lang/String;)V

    .line 40
    const-string v1, "OK\r\n"
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_59

    goto :goto_43
.end method
