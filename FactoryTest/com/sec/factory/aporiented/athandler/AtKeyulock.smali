.class public Lcom/sec/factory/aporiented/athandler/AtKeyulock;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtKeyulock.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "KEYULOCK"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtKeyulock"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->NUM_ARGS:I

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "argu"

    .prologue
    const/4 v4, 0x1

    .line 20
    monitor-enter p0

    const/4 v0, 0x0

    .line 22
    .local v0, resData:Ljava/lang/String;
    :try_start_3
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->NUM_ARGS:I

    if-eq v1, v2, :cond_c

    .line 23
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_72

    .line 46
    :goto_a
    monitor-exit p0

    return-object v1

    .line 26
    :cond_c
    const/4 v1, 0x2

    :try_start_d
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 27
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommon;->setKeyLock(I)V

    .line 29
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->getKeyLockState()I

    move-result v1

    if-nez v1, :cond_36

    .line 30
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_34
    move-object v1, v0

    .line 46
    goto :goto_a

    .line 32
    :cond_36
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 34
    :cond_3e
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 35
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommon;->setKeyLock(I)V

    .line 37
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->getKeyLockState()I

    move-result v1

    if-ne v1, v4, :cond_67

    .line 38
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 40
    :cond_67
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtKeyulock;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 43
    :cond_6f
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_71
    .catchall {:try_start_d .. :try_end_71} :catchall_72

    goto :goto_34

    .line 20
    :catchall_72
    move-exception v1

    monitor-exit p0

    throw v1
.end method
