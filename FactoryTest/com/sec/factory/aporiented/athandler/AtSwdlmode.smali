.class public Lcom/sec/factory/aporiented/athandler/AtSwdlmode;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtSwdlmode.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "SWDLMODE"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSwdlmode;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtSwdlmode"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSwdlmode;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtSwdlmode;->NUM_ARGS:I

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

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtSwdlmode;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 23
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_2b

    .line 36
    :goto_9
    monitor-exit p0

    return-object v1

    .line 26
    :cond_b
    const/4 v1, 0x1

    :try_start_c
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSwdlmode;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 28
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtSwdlmode;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtSwdlmode;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModulePower;->reboot(B)V

    :goto_26
    move-object v1, v0

    .line 36
    goto :goto_9

    .line 33
    :cond_28
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_2b

    goto :goto_26

    .line 20
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method
