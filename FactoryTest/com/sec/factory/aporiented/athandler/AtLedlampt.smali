.class public Lcom/sec/factory/aporiented/athandler/AtLedlampt;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtLedlampt.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "LEDLAMPT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtLedlampt"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->NUM_ARGS:I

    .line 16
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 20
    monitor-enter p0

    const/4 v0, 0x0

    .line 22
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 23
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_f0

    .line 63
    :goto_9
    monitor-exit p0

    return-object v1

    .line 26
    :cond_b
    const/4 v1, 0x2

    :try_start_c
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 28
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 29
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2e
    move-object v1, v0

    .line 63
    goto :goto_9

    .line 31
    :cond_30
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 32
    :cond_38
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 35
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 36
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 38
    :cond_5c
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 39
    :cond_64
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 41
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 42
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 44
    :cond_88
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 45
    :cond_90
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 48
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 49
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2e

    .line 51
    :cond_b5
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2e

    .line 52
    :cond_be
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "4"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 55
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 56
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2e

    .line 58
    :cond_e3
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtLedlampt;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2e

    .line 60
    :cond_ec
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_ee
    .catchall {:try_start_c .. :try_end_ee} :catchall_f0

    goto/16 :goto_2e

    .line 20
    :catchall_f0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
