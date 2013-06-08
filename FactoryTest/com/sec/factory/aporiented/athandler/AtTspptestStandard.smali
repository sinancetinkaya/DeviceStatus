.class public Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtTspptestStandard.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "TSPPTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtTspptestStandard"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->NUM_ARGS:I

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "argu"

    .prologue
    .line 18
    monitor-enter p0

    const/4 v2, 0x0

    .line 19
    .local v2, resData:Ljava/lang/String;
    :try_start_2
    const-string v3, ""

    .line 21
    .local v3, result:Ljava/lang/String;
    array-length v8, p1

    iget v9, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->NUM_ARGS:I

    if-eq v8, v9, :cond_d

    .line 22
    const-string v8, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_174

    .line 117
    :goto_b
    monitor-exit p0

    return-object v8

    .line 25
    :cond_d
    const/4 v8, 0x3

    :try_start_e
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "0"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 27
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v9, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_OFF:I

    invoke-virtual {v8, v9}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    const-string v8, "OK"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 29
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3c
    move-object v8, v2

    .line 117
    goto :goto_b

    .line 30
    :cond_3e
    const-string v8, "NA"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 31
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto :goto_3c

    .line 33
    :cond_49
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    .line 34
    :cond_51
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "0"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 38
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v9, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_ON:I

    invoke-virtual {v8, v9}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v3

    .line 39
    const-string v8, "OK"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_81

    .line 40
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    .line 41
    :cond_81
    const-string v8, "NA"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 42
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto :goto_3c

    .line 44
    :cond_8c
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    .line 45
    :cond_94
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "2"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "0"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_da

    .line 49
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v9, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_OFF_SECOND_CHIP:I

    invoke-virtual {v8, v9}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    const-string v8, "OK"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 52
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3c

    .line 53
    :cond_c5
    const-string v8, "NA"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 54
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto/16 :goto_3c

    .line 56
    :cond_d1
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3c

    .line 57
    :cond_da
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "3"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "0"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_120

    .line 61
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v9, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_ON_SECOND_CHIP:I

    invoke-virtual {v8, v9}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    const-string v8, "OK"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10b

    .line 64
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3c

    .line 65
    :cond_10b
    const-string v8, "NA"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_117

    .line 66
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto/16 :goto_3c

    .line 68
    :cond_117
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3c

    .line 69
    :cond_120
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "4"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "0"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1cf

    .line 71
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v9, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RESULT_CONNECTION:I

    invoke-virtual {v8, v9}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, str:Ljava/lang/String;
    const-string v8, "NG"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_177

    .line 74
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    const-string v10, "TSP_RESULT_VALUE_NG"

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    :goto_158
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resData : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_172
    .catchall {:try_start_e .. :try_end_172} :catchall_174

    goto/16 :goto_3c

    .line 18
    .end local v3           #result:Ljava/lang/String;
    .end local v4           #str:Ljava/lang/String;
    :catchall_174
    move-exception v8

    monitor-exit p0

    throw v8

    .line 77
    .restart local v3       #result:Ljava/lang/String;
    .restart local v4       #str:Ljava/lang/String;
    :cond_177
    :try_start_177
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, data:[Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[0]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , [1]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , [2]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v8, 0x0

    aget-object v8, v1, v8

    const-string v9, "OK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c7

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1c6
    goto :goto_158

    :cond_1c7
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c6

    .line 83
    .end local v1           #data:[Ljava/lang/String;
    .end local v4           #str:Ljava/lang/String;
    :cond_1cf
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "1"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "0"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_217

    .line 86
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v9, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__VENDOR_NAME:I

    invoke-virtual {v8, v9}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, vendor:Ljava/lang/String;
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v9, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CHIP_NAME:I

    invoke-virtual {v8, v9}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, chip:Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, p1, v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    goto/16 :goto_3c

    .end local v0           #chip:Ljava/lang/String;
    .end local v5           #vendor:Ljava/lang/String;
    :cond_217
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "1"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25b

    .line 90
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    const/4 v9, 0x1

    const/4 v10, 0x2

    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult_Read(II)Ljava/lang/String;

    move-result-object v2

    .line 91
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resData : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 93
    :cond_25b
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "1"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "2"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29f

    .line 94
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    const/4 v9, 0x2

    const/4 v10, 0x2

    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult_Read(II)Ljava/lang/String;

    move-result-object v2

    .line 95
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resData : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 97
    :cond_29f
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "1"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "3"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e3

    .line 98
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    const/4 v9, 0x3

    const/4 v10, 0x2

    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult_Read(II)Ljava/lang/String;

    move-result-object v2

    .line 99
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resData : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3c

    .line 101
    :cond_2e3
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "1"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "4"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_327

    .line 102
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    const/4 v9, 0x4

    const/4 v10, 0x2

    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult_Read(II)Ljava/lang/String;

    move-result-object v2

    .line 103
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8, v2}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resData : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 105
    :cond_327
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "1"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "5"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "0"

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v8}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39f

    .line 107
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v8}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountX()Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, x:Ljava/lang/String;
    sget-object v8, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v8}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountY()Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, y:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "result : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {p0, v8, v3}, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtTspptestStandard;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "handleCommand"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resData : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 114
    .end local v6           #x:Ljava/lang/String;
    .end local v7           #y:Ljava/lang/String;
    :cond_39f
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_3a1
    .catchall {:try_start_177 .. :try_end_3a1} :catchall_174

    goto/16 :goto_3c
.end method
