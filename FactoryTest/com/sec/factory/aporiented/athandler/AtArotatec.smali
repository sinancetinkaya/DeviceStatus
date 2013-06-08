.class public Lcom/sec/factory/aporiented/athandler/AtArotatec;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtArotatec.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "AROTATEC"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtArotatec;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtArotatec"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtArotatec;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtArotatec;->NUM_ARGS:I

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "argu"

    .prologue
    const/4 v5, 0x1

    .line 20
    monitor-enter p0

    const/4 v0, 0x0

    .line 22
    .local v0, resData:Ljava/lang/String;
    :try_start_3
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtArotatec;->NUM_ARGS:I

    if-eq v2, v3, :cond_c

    .line 23
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_a9

    .line 52
    :goto_a
    monitor-exit p0

    return-object v2

    .line 26
    :cond_c
    const/4 v2, 0x2

    :try_start_d
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtArotatec;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 27
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtArotatec;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleCommon;->setAutoRotate(I)V

    .line 29
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtArotatec;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->getAutoRotateState()I

    move-result v2

    if-nez v2, :cond_36

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtArotatec;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_34
    move-object v2, v0

    .line 52
    goto :goto_a

    .line 29
    :cond_36
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtArotatec;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 31
    :cond_3e
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtArotatec;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 33
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtArotatec;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleCommon;->setAutoRotate(I)V

    .line 35
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtArotatec;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->getAutoRotateState()I

    move-result v2

    if-ne v2, v5, :cond_67

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtArotatec;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_66
    goto :goto_34

    :cond_67
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtArotatec;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    .line 37
    :cond_6f
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtArotatec;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 39
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtArotatec;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->getAutoRotateState()I

    move-result v1

    .line 41
    .local v1, state:I
    if-ne v1, v5, :cond_93

    .line 42
    const-string v2, "1"

    const-string v3, "ON"

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtArotatec;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 43
    :cond_93
    if-nez v1, :cond_9e

    .line 44
    const-string v2, "1"

    const-string v3, "OFF"

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtArotatec;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 46
    :cond_9e
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtArotatec;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 49
    .end local v1           #state:I
    :cond_a6
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_a8
    .catchall {:try_start_d .. :try_end_a8} :catchall_a9

    goto :goto_34

    .line 20
    :catchall_a9
    move-exception v2

    monitor-exit p0

    throw v2
.end method
