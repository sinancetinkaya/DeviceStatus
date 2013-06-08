.class public Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtTspptest_atmel.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "TSPPTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtTspptest_atmel"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->NUM_ARGS:I

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "argu"

    .prologue
    .line 18
    monitor-enter p0

    const/4 v0, 0x0

    .line 19
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    const-string v1, ""

    .line 21
    .local v1, result:Ljava/lang/String;
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->NUM_ARGS:I

    if-eq v2, v3, :cond_d

    .line 22
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_1f7

    .line 99
    :goto_b
    monitor-exit p0

    return-object v2

    .line 25
    :cond_d
    const/4 v2, 0x3

    :try_start_e
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 27
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->tsp_module_mode(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_33
    move-object v2, v0

    .line 99
    goto :goto_b

    .line 29
    :cond_35
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 33
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->tsp_module_mode(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 35
    :cond_5c
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 39
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto :goto_33

    .line 40
    :cond_77
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 44
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto :goto_33

    .line 48
    :cond_92
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "4"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 50
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPConnectionTest_atmel_temporary()Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, "NG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 52
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 54
    :cond_c1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 59
    :cond_ca
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 62
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->tsp_module_mode(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 64
    :cond_f2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 66
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const-string v4, "TSP_COMMAND_REFER_SET"

    const-string v5, "TSP_COMMAND_REFER_DATA"

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->tsp_module_data_read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    const-string v2, "NG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 69
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 71
    :cond_123
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 73
    :cond_12c
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "2"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_166

    .line 75
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const-string v4, "TSP_COMMAND_DELTA_SET"

    const-string v5, "TSP_COMMAND_DELTA_DATA"

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->tsp_module_data_read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v2, "NG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 78
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 80
    :cond_15d
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 82
    :cond_166
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "3"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a0

    .line 83
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const-string v4, "TSP_COMMAND_REFER_SET"

    const-string v5, "TSP_COMMAND_REFER_DATA"

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->tsp_module_refer_diff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v2, "NG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_197

    .line 86
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 88
    :cond_197
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 89
    :cond_1a0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "4"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b7

    .line 90
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto/16 :goto_33

    .line 91
    :cond_1b7
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 93
    const-string v2, "%d,%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_X:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_Y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 94
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/factory/aporiented/athandler/AtTspptest_atmel;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 96
    :cond_1f3
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_1f5
    .catchall {:try_start_e .. :try_end_1f5} :catchall_1f7

    goto/16 :goto_33

    .line 18
    .end local v1           #result:Ljava/lang/String;
    :catchall_1f7
    move-exception v2

    monitor-exit p0

    throw v2
.end method
