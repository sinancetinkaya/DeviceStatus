.class public Lcom/sec/factory/aporiented/athandler/AtCalidate;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtCalidate.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "CALIDATE"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCalidate;->CMD_NAME:Ljava/lang/String;

    .line 11
    const-string v0, "AtCalidate"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCalidate;->CLASS_NAME:Ljava/lang/String;

    .line 12
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtCalidate;->NUM_ARGS:I

    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "argu"

    .prologue
    .line 18
    monitor-enter p0

    const/4 v1, 0x0

    .line 19
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtCalidate;->NUM_ARGS:I

    if-eq v2, v3, :cond_b

    .line 20
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_73

    .line 33
    :goto_9
    monitor-exit p0

    return-object v2

    .line 23
    :cond_b
    const/4 v2, 0x4

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

    const/4 v3, 0x3

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtCalidate;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 24
    const/4 v2, 0x0

    aget-object v2, p1, v2

    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtCalidate;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v3}, Lcom/sec/factory/modules/ModuleCommon;->getCalDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtCalidate;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_35
    move-object v2, v1

    .line 33
    goto :goto_9

    .line 25
    :cond_37
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "2"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtCalidate;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, argtmp:Ljava/lang/String;
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtCalidate;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2, v0}, Lcom/sec/factory/modules/ModuleCommon;->setCalDate(Ljava/lang/String;)Z

    .line 28
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtCalidate;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    goto :goto_35

    .line 31
    .end local v0           #argtmp:Ljava/lang/String;
    :cond_70
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_72
    .catchall {:try_start_c .. :try_end_72} :catchall_73

    goto :goto_35

    .line 18
    :catchall_73
    move-exception v2

    monitor-exit p0

    throw v2
.end method
