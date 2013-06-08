.class public Lcom/sec/factory/aporiented/athandler/AtEmemtest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtEmemtest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "EMEMTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtEmemtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->NUM_ARGS:I

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "argu"

    .prologue
    .line 19
    monitor-enter p0

    const/4 v0, 0x0

    .line 21
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 22
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_9a

    .line 48
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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 26
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->isDetectExternalMemory()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 27
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    move-object v1, v0

    .line 48
    goto :goto_9

    .line 29
    :cond_2f
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 31
    :cond_37
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 32
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 33
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 35
    :cond_5b
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 37
    :cond_63
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 40
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    const/4 v1, 0x0

    aget-object v1, p1, v1

    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleDevice;->int_extMEMOSize(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8e
    goto :goto_2d

    :cond_8f
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtEmemtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8e

    .line 45
    :cond_97
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_99
    .catchall {:try_start_c .. :try_end_99} :catchall_9a

    goto :goto_2d

    .line 19
    :catchall_9a
    move-exception v1

    monitor-exit p0

    throw v1
.end method
