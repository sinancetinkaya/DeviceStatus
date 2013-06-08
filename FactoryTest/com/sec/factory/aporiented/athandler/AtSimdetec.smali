.class public Lcom/sec/factory/aporiented/athandler/AtSimdetec;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtSimdetec.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "SIMDETEC"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSimdetec;->CMD_NAME:Ljava/lang/String;

    .line 11
    const-string v0, "AtSimdetec"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSimdetec;->CLASS_NAME:Ljava/lang/String;

    .line 12
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtSimdetec;->NUM_ARGS:I

    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 16
    monitor-enter p0

    const/4 v0, 0x0

    .line 18
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtSimdetec;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 19
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_6d

    .line 38
    :goto_9
    monitor-exit p0

    return-object v1

    .line 22
    :cond_b
    const/4 v1, 0x2

    :try_start_c
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSimdetec;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 23
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSimdetec;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->isSimCardExist()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 24
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "SIM"

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtSimdetec;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    move-object v1, v0

    .line 38
    goto :goto_9

    .line 26
    :cond_31
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "NOS"

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtSimdetec;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 28
    :cond_3b
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSimdetec;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 29
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSimdetec;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->isSimCardExist2()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 30
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "SIM"

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtSimdetec;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 32
    :cond_60
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "NOS"

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtSimdetec;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 35
    :cond_6a
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_6c
    .catchall {:try_start_c .. :try_end_6c} :catchall_6d

    goto :goto_2f

    .line 16
    :catchall_6d
    move-exception v1

    monitor-exit p0

    throw v1
.end method
