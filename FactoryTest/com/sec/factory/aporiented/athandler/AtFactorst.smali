.class public Lcom/sec/factory/aporiented/athandler/AtFactorst;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFactorst.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 15
    const-string v0, "FACTORST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFactorst;->CMD_NAME:Ljava/lang/String;

    .line 16
    const-string v0, "AtFactorst"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFactorst;->CLASS_NAME:Ljava/lang/String;

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFactorst;->NUM_ARGS:I

    .line 18
    return-void
.end method

.method private DoFactoryReset()V
    .registers 4

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEC_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, i:Landroid/content/Intent;
    const-string v1, "factory"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFactorst;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 28
    monitor-enter p0

    const/4 v0, 0x0

    .line 30
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtFactorst;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 31
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_36

    .line 44
    :goto_9
    monitor-exit p0

    return-object v1

    .line 34
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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFactorst;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 35
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFactorst;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "run factory reset"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtFactorst;->DoFactoryReset()V

    .line 37
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFactorst;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_31
    move-object v1, v0

    .line 44
    goto :goto_9

    .line 41
    :cond_33
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_36

    goto :goto_31

    .line 28
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method
