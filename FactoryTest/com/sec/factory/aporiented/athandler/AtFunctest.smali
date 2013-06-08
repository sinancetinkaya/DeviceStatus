.class public Lcom/sec/factory/aporiented/athandler/AtFunctest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFunctest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "FUNCTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFunctest;->CMD_NAME:Ljava/lang/String;

    .line 11
    const-string v0, "AtFunctest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFunctest;->CLASS_NAME:Ljava/lang/String;

    .line 12
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFunctest;->NUM_ARGS:I

    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 18
    monitor-enter p0

    const/4 v0, 0x0

    .line 20
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtFunctest;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 21
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_99

    .line 48
    :goto_9
    monitor-exit p0

    return-object v1

    .line 24
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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFunctest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 25
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFunctest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModulePower;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 26
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFunctest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModulePower;->setScreenState(Z)V

    .line 28
    :cond_2c
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFunctest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->goIdle()V

    .line 29
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFunctest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_38
    move-object v1, v0

    .line 48
    goto :goto_9

    .line 30
    :cond_3a
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFunctest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 31
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFunctest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModulePower;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 32
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFunctest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModulePower;->setScreenState(Z)V

    .line 34
    :cond_5b
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFunctest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->goLcdtest()V

    .line 35
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFunctest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 37
    :cond_68
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFunctest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 38
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFunctest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModulePower;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_89

    .line 39
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFunctest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModulePower;->setScreenState(Z)V

    .line 41
    :cond_89
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFunctest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->go15mode()V

    .line 42
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFunctest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 45
    :cond_96
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_98
    .catchall {:try_start_c .. :try_end_98} :catchall_99

    goto :goto_38

    .line 18
    :catchall_99
    move-exception v1

    monitor-exit p0

    throw v1
.end method
