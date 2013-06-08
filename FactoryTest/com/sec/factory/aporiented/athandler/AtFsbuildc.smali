.class public Lcom/sec/factory/aporiented/athandler/AtFsbuildc;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFsbuildc.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "FSBUILDC"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;->CMD_NAME:Ljava/lang/String;

    .line 11
    const-string v0, "AtFsbuildc"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;->CLASS_NAME:Ljava/lang/String;

    .line 12
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;->NUM_ARGS:I

    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 17
    monitor-enter p0

    const/4 v0, 0x0

    .line 19
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 20
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_66

    .line 44
    :goto_9
    monitor-exit p0

    return-object v1

    .line 23
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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 26
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    :goto_20
    move-object v1, v0

    .line 44
    goto :goto_9

    .line 27
    :cond_22
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 32
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto :goto_20

    .line 33
    :cond_38
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 35
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->isCompleteFileSystemBuildingNAND()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 36
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 38
    :cond_5b
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFsbuildc;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 41
    :cond_63
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_65
    .catchall {:try_start_c .. :try_end_65} :catchall_66

    goto :goto_20

    .line 17
    :catchall_66
    move-exception v1

    monitor-exit p0

    throw v1
.end method
