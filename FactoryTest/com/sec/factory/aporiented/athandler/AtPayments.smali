.class public Lcom/sec/factory/aporiented/athandler/AtPayments;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtPayments.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 15
    const-string v0, "PAYMENTS"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtPayments;->CMD_NAME:Ljava/lang/String;

    .line 16
    const-string v0, "AtPayments"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtPayments;->CLASS_NAME:Ljava/lang/String;

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtPayments;->NUM_ARGS:I

    .line 19
    new-instance v7, Ljava/io/File;

    const-string v0, "PRE_PAY"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v7, mPrePay:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_44

    .line 23
    monitor-enter p0

    .line 24
    :try_start_20
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtPayments;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleCommon;->writePrePay(Ljava/lang/String;)V

    .line 25
    const-string v0, "PRE_PAY"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sec/factory/support/Support$Kernel;->setPermission(Ljava/lang/String;ZZZZZZ)Z

    .line 27
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_41

    .line 28
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtPayments;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "AtPayments"

    const-string v2, "PRE_PAY is created..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_40
    return-void

    .line 27
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0

    .line 30
    :cond_44
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtPayments;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "AtPayments"

    const-string v2, "PRE_PAYis already existed..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "argu"

    .prologue
    .line 36
    monitor-enter p0

    const/4 v0, 0x0

    .line 37
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtPayments;->NUM_ARGS:I

    if-eq v2, v3, :cond_b

    .line 38
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_c9

    .line 82
    :goto_9
    monitor-exit p0

    return-object v2

    .line 41
    :cond_b
    const/4 v2, 0x2

    :try_start_c
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtPayments;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 42
    const/4 v1, 0x0

    .line 44
    .local v1, sResult:Ljava/lang/String;
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtPayments;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v3, "false"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleCommon;->writePrePay(Ljava/lang/String;)V

    .line 45
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtPayments;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->readPrePay()Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 48
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtPayments;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v1           #sResult:Ljava/lang/String;
    :goto_3b
    move-object v2, v0

    .line 82
    goto :goto_9

    .line 50
    .restart local v1       #sResult:Ljava/lang/String;
    :cond_3d
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtPayments;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 54
    .end local v1           #sResult:Ljava/lang/String;
    :cond_45
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtPayments;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 55
    const/4 v1, 0x0

    .line 57
    .restart local v1       #sResult:Ljava/lang/String;
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtPayments;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleCommon;->writePrePay(Ljava/lang/String;)V

    .line 58
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtPayments;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->readPrePay()Ljava/lang/String;

    move-result-object v1

    .line 60
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 61
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtPayments;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 63
    :cond_76
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtPayments;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 67
    .end local v1           #sResult:Ljava/lang/String;
    :cond_7e
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtPayments;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 68
    const/4 v1, 0x0

    .line 69
    .restart local v1       #sResult:Ljava/lang/String;
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtPayments;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->readPrePay()Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 72
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const-string v3, "POSTPAY"

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtPayments;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 73
    :cond_aa
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 74
    const/4 v2, 0x0

    aget-object v2, p1, v2

    const-string v3, "PREPAY"

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtPayments;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 76
    :cond_bc
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtPayments;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3b

    .line 79
    .end local v1           #sResult:Ljava/lang/String;
    :cond_c5
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_c7
    .catchall {:try_start_c .. :try_end_c7} :catchall_c9

    goto/16 :goto_3b

    .line 36
    :catchall_c9
    move-exception v2

    monitor-exit p0

    throw v2
.end method
