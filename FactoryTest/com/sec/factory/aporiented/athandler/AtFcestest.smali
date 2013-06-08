.class public Lcom/sec/factory/aporiented/athandler/AtFcestest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFcestest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, "FCESTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcestest;->CMD_NAME:Ljava/lang/String;

    .line 12
    const-string v0, "AtFcestest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcestest;->CLASS_NAME:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcestest;->NUM_ARGS:I

    .line 14
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

    .line 20
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtFcestest;->NUM_ARGS:I

    if-eq v2, v3, :cond_b

    .line 21
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_3f

    .line 41
    :goto_9
    monitor-exit p0

    return-object v2

    .line 24
    :cond_b
    const/4 v2, 0x1

    :try_start_c
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtFcestest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_3f

    move-result v2

    if-eqz v2, :cond_4c

    .line 26
    :try_start_19
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcestest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "delay"

    const-string v4, " : 1s"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_3f
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_27} :catch_3a

    .line 32
    :goto_27
    :try_start_27
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtFcestest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleDevice;->isEarSwitchPress()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 33
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const-string v3, "ON"

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtFcestest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_38
    move-object v2, v1

    .line 41
    goto :goto_9

    .line 28
    :catch_3a
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_3f

    goto :goto_27

    .line 18
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_3f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 35
    :cond_42
    const/4 v2, 0x0

    :try_start_43
    aget-object v2, p1, v2

    const-string v3, "OFF"

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtFcestest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    .line 38
    :cond_4c
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_3f

    goto :goto_38
.end method
