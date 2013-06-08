.class public Lcom/sec/factory/aporiented/athandler/AtImemtest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtImemtest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "IMEMTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtImemtest;->CMD_NAME:Ljava/lang/String;

    .line 14
    const-string v0, "AtImemtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtImemtest;->CLASS_NAME:Ljava/lang/String;

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtImemtest;->NUM_ARGS:I

    .line 16
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "argu"

    .prologue
    .line 20
    monitor-enter p0

    const/4 v2, 0x0

    .line 22
    .local v2, resData:Ljava/lang/String;
    :try_start_2
    array-length v7, p1

    iget v8, p0, Lcom/sec/factory/aporiented/athandler/AtImemtest;->NUM_ARGS:I

    if-eq v7, v8, :cond_b

    .line 23
    const-string v7, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_fc

    .line 62
    :goto_9
    monitor-exit p0

    return-object v7

    .line 26
    :cond_b
    const/4 v7, 0x2

    :try_start_c
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "1"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtImemtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    :goto_1e
    move-object v7, v2

    .line 62
    goto :goto_9

    .line 29
    :cond_20
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "1"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtImemtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 31
    sget-object v7, Lcom/sec/factory/aporiented/athandler/AtImemtest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v7}, Lcom/sec/factory/modules/ModuleDevice;->isInnerMemoryExist()Z

    move-result v7

    if-eqz v7, :cond_43

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {p0, v7}, Lcom/sec/factory/aporiented/athandler/AtImemtest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_42
    goto :goto_1e

    :cond_43
    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {p0, v7}, Lcom/sec/factory/aporiented/athandler/AtImemtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_42

    .line 33
    :cond_4b
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "2"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtImemtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 34
    const/4 v7, 0x0

    aget-object v7, p1, v7

    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtImemtest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v8}, Lcom/sec/factory/modules/ModuleDevice;->getInnerMemorySize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/factory/aporiented/athandler/AtImemtest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    .line 35
    :cond_70
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "4"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtImemtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 37
    sget-object v7, Lcom/sec/factory/aporiented/athandler/AtImemtest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v8, 0x2

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Lcom/sec/factory/modules/ModuleDevice;->getAvailableSize(II)J

    move-result-wide v3

    .line 39
    .local v3, systemSize:J
    sget-object v7, Lcom/sec/factory/aporiented/athandler/AtImemtest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Lcom/sec/factory/modules/ModuleDevice;->getAvailableSize(II)J

    move-result-wide v0

    .line 41
    .local v0, internalSize:J
    sget-object v7, Lcom/sec/factory/aporiented/athandler/AtImemtest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Lcom/sec/factory/modules/ModuleDevice;->getSize(II)J

    move-result-wide v7

    long-to-float v5, v7

    .line 43
    .local v5, tempSize:F
    const/high16 v7, 0x4980

    div-float v6, v5, v7

    .line 45
    .local v6, totalSize:F
    const/high16 v7, 0x4080

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_da

    .line 46
    const/high16 v6, 0x4080

    .line 56
    :goto_ab
    const/4 v7, 0x0

    aget-object v7, p1, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/factory/aporiented/athandler/AtImemtest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    goto/16 :goto_1e

    .line 47
    :cond_da
    const/high16 v7, 0x4100

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_e3

    .line 48
    const/high16 v6, 0x4100

    goto :goto_ab

    .line 49
    :cond_e3
    const/high16 v7, 0x4180

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_ec

    .line 50
    const/high16 v6, 0x4180

    goto :goto_ab

    .line 51
    :cond_ec
    const/high16 v7, 0x4200

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_f5

    .line 52
    const/high16 v6, 0x4200

    goto :goto_ab

    .line 54
    :cond_f5
    const/high16 v6, 0x4280

    goto :goto_ab

    .line 59
    .end local v0           #internalSize:J
    .end local v3           #systemSize:J
    .end local v5           #tempSize:F
    .end local v6           #totalSize:F
    :cond_f8
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_fa
    .catchall {:try_start_c .. :try_end_fa} :catchall_fc

    goto/16 :goto_1e

    .line 20
    :catchall_fc
    move-exception v7

    monitor-exit p0

    throw v7
.end method
