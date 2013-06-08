.class public Lcom/sec/factory/aporiented/athandler/AtVibrtest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtVibrtest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, "VIBRTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtVibrtest;->CMD_NAME:Ljava/lang/String;

    .line 12
    const-string v0, "AtVibrtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtVibrtest;->CLASS_NAME:Ljava/lang/String;

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtVibrtest;->NUM_ARGS:I

    .line 14
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 19
    monitor-enter p0

    const/4 v0, 0x0

    .line 21
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtVibrtest;->NUM_ARGS:I

    if-ne v1, v2, :cond_10

    const-string v1, "SUPPORT_VIBRATOR"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_14

    .line 23
    :cond_10
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_58

    .line 38
    :goto_12
    monitor-exit p0

    return-object v1

    .line 26
    :cond_14
    const/4 v1, 0x2

    :try_start_15
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtVibrtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 27
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtVibrtest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->startVibrate()V

    .line 29
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtVibrtest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_33
    move-object v1, v0

    .line 38
    goto :goto_12

    .line 30
    :cond_35
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtVibrtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 31
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtVibrtest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 33
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtVibrtest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 35
    :cond_55
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_57
    .catchall {:try_start_15 .. :try_end_57} :catchall_58

    goto :goto_33

    .line 19
    :catchall_58
    move-exception v1

    monitor-exit p0

    throw v1
.end method
