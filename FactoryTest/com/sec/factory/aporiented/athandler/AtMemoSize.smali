.class public Lcom/sec/factory/aporiented/athandler/AtMemoSize;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtMemoSize.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "MEMOSIZE"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtMemoSize"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->NUM_ARGS:I

    .line 15
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

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 22
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_a0

    .line 44
    :goto_9
    monitor-exit p0

    return-object v1

    .line 25
    :cond_b
    const/4 v1, 0x2

    :try_start_c
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 26
    const/4 v1, 0x0

    aget-object v1, p1, v1

    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleDevice;->mainMEMOSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2b
    move-object v1, v0

    .line 44
    goto :goto_9

    .line 27
    :cond_2d
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 29
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->isInnerMemoryExist()Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v1, 0x0

    aget-object v1, p1, v1

    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->int_extMEMOSize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_56
    goto :goto_2b

    :cond_57
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 32
    :cond_5f
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 34
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v1

    if-eqz v1, :cond_8a

    const/4 v1, 0x0

    aget-object v1, p1, v1

    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->int_extMEMOSize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_89
    goto :goto_2b

    :cond_8a
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_89

    .line 38
    :cond_92
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->getCmdType()I

    move-result v1

    if-nez v1, :cond_9d

    .line 39
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtMemoSize;->responseNA()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 41
    :cond_9d
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9f
    .catchall {:try_start_c .. :try_end_9f} :catchall_a0

    goto :goto_2b

    .line 19
    :catchall_a0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
