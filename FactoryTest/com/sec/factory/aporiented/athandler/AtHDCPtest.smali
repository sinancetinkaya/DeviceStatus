.class public Lcom/sec/factory/aporiented/athandler/AtHDCPtest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtHDCPtest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "HDCPTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->CMD_NAME:Ljava/lang/String;

    .line 14
    const-string v0, "AtHDCPtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->CLASS_NAME:Ljava/lang/String;

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->NUM_ARGS:I

    .line 16
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "argu"

    .prologue
    .line 20
    monitor-enter p0

    const/4 v0, 0x0

    .line 21
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    const-string v1, ""

    .line 23
    .local v1, result:Ljava/lang/String;
    array-length v3, p1

    iget v4, p0, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->NUM_ARGS:I

    if-eq v3, v4, :cond_d

    .line 24
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_165

    .line 94
    :goto_b
    monitor-exit p0

    return-object v3

    .line 27
    :cond_d
    const/4 v3, 0x2

    :try_start_e
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 29
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleCommon;->hdcpCheck(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_42

    .line 31
    const-string v3, "OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 32
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_38
    move-object v3, v0

    .line 94
    goto :goto_b

    .line 34
    :cond_3a
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 36
    :cond_42
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 38
    :cond_4a
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 41
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleCommon;->hdcpCheck(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_7e

    .line 43
    const-string v3, "OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 44
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 46
    :cond_76
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 48
    :cond_7e
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 50
    :cond_86
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "2"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 54
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleCommon;->hdcpCheck(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_bb

    .line 56
    const-string v3, "OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 57
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 59
    :cond_b2
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_38

    .line 61
    :cond_bb
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_38

    .line 63
    :cond_c4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "3"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 66
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleCommon;->hdcpCheck(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_fa

    .line 69
    const-string v3, "OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 70
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_38

    .line 72
    :cond_f1
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_38

    .line 74
    :cond_fa
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_38

    .line 76
    :cond_103
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_161

    .line 78
    const-string v2, "0000000000000000"

    .line 79
    .local v2, temp:Ljava/lang/String;
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v3}, Lcom/sec/factory/modules/ModuleCommon;->hdcpReadSN()Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v3, "Unknown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 81
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_38

    .line 83
    :cond_12f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_158

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_158
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3, v1}, Lcom/sec/factory/aporiented/athandler/AtHDCPtest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_38

    .line 91
    .end local v2           #temp:Ljava/lang/String;
    :cond_161
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_163
    .catchall {:try_start_e .. :try_end_163} :catchall_165

    goto/16 :goto_38

    .line 20
    .end local v1           #result:Ljava/lang/String;
    :catchall_165
    move-exception v3

    monitor-exit p0

    throw v3
.end method
