.class public Lcom/sec/factory/aporiented/athandler/AtPowreset;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtPowreset.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "POWRESET"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtPowreset;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtPowreset"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtPowreset;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtPowreset;->NUM_ARGS:I

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

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtPowreset;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 22
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_30

    .line 32
    :goto_9
    monitor-exit p0

    return-object v1

    .line 25
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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtPowreset;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 26
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtPowreset;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtPowreset;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModulePower;->reboot(B)V

    :goto_2b
    move-object v1, v0

    .line 32
    goto :goto_9

    .line 29
    :cond_2d
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_30

    goto :goto_2b

    .line 19
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1
.end method
