.class public Lcom/sec/factory/aporiented/athandler/AtSyssleep;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtSyssleep.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "SYSSLEEP"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtSyssleep"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->NUM_ARGS:I

    .line 15
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

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 23
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_74

    .line 47
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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 27
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModulePower;->sendAlarmManagerOnOff(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->reqestSleep()V

    .line 30
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->getCmdType()I

    move-result v1

    if-nez v1, :cond_3a

    .line 31
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_38
    move-object v1, v0

    .line 47
    goto :goto_9

    .line 33
    :cond_3a
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 35
    :cond_42
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 36
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModulePower;->doWakeLock(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->getCmdType()I

    move-result v1

    if-nez v1, :cond_69

    .line 39
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 41
    :cond_69
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSyssleep;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 44
    :cond_71
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_73
    .catchall {:try_start_c .. :try_end_73} :catchall_74

    goto :goto_38

    .line 20
    :catchall_74
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reqestSleep()V
    .registers 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/factory/aporiented/athandler/AtSyssleep$1;

    invoke-direct {v1, p0}, Lcom/sec/factory/aporiented/athandler/AtSyssleep$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtSyssleep;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 65
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    return-void
.end method
