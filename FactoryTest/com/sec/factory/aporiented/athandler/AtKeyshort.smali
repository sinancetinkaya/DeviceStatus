.class public Lcom/sec/factory/aporiented/athandler/AtKeyshort;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtKeyshort.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "KEYSHORT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKeyshort;->CMD_NAME:Ljava/lang/String;

    .line 11
    const-string v0, "AtKeyshort"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKeyshort;->CLASS_NAME:Ljava/lang/String;

    .line 12
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtKeyshort;->NUM_ARGS:I

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

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtKeyshort;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 20
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_37

    .line 29
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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtKeyshort;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 24
    const/4 v1, 0x0

    aget-object v2, p1, v1

    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtKeyshort;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->isKeyPress()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "PRESS"

    :goto_2b
    invoke-virtual {p0, v2, v1}, Lcom/sec/factory/aporiented/athandler/AtKeyshort;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    move-object v1, v0

    .line 29
    goto :goto_9

    .line 24
    :cond_31
    const-string v1, "RELEASE"

    goto :goto_2b

    .line 26
    :cond_34
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_37

    goto :goto_2f

    .line 17
    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1
.end method
