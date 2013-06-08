.class public Lcom/sec/factory/aporiented/athandler/AtIRledcheck;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtIRledcheck.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "IRLEDCHK"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->CMD_NAME:Ljava/lang/String;

    .line 25
    const-string v0, "AtIRledcheck"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->CLASS_NAME:Ljava/lang/String;

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->NUM_ARGS:I

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "argu"

    .prologue
    .line 31
    monitor-enter p0

    const/4 v1, 0x0

    .line 33
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->NUM_ARGS:I

    if-eq v2, v3, :cond_b

    .line 34
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_12e

    .line 101
    :goto_9
    monitor-exit p0

    return-object v2

    .line 40
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

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_12e

    move-result v2

    if-eqz v2, :cond_65

    .line 42
    :try_start_1e
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v3, "38400,173,171,24,62,24,61,24,62,24,17,24,17,24,18,24,17,24,18,23,62,24,61,24,62,24,17,24,17,25,17,24,17,24,17,24,19,23,61,24,18,24,17,24,61,24,19,23,17,24,17,24,62,24,17,24,62,24,61,24,19,23,61,24,62,24,61,24,1880,0"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->controlIRLED(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 43
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseOK(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_12e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_53

    move-result-object v1

    .line 100
    :goto_2f
    :try_start_2f
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_2f .. :try_end_49} :catchall_12e

    move-object v2, v1

    .line 101
    goto :goto_9

    .line 45
    :cond_4b
    const/4 v2, 0x0

    :try_start_4c
    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseNG(Ljava/lang/String;)Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_12e
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_51} :catch_53

    move-result-object v1

    goto :goto_2f

    .line 46
    :catch_53
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    :try_start_54
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    const-string v4, "AtIRledcheck error 0,0"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    goto :goto_2f

    .line 56
    .end local v0           #e:Ljava/lang/Exception;
    :cond_65
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_12e

    move-result v2

    if-eqz v2, :cond_a4

    .line 58
    :try_start_78
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v3, "38400,173,171,24,62,24,61,24,62,24,17,24,17,24,18,24,17,24,18,23,62,24,61,24,62,24,18,23,17,25,17,24,17,24,17,24,19,23,17,24,17,24,18,24,61,24,17,25,17,24,17,24,62,24,61,24,62,24,61,24,19,23,61,24,62,24,61,24,1880,0"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->controlIRLED(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 59
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    .line 61
    :cond_8a
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseNG(Ljava/lang/String;)Ljava/lang/String;
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_12e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_90} :catch_92

    move-result-object v1

    goto :goto_2f

    .line 62
    :catch_92
    move-exception v0

    .line 63
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_93
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    const-string v4, "AtIRledcheck error 0,1"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    goto :goto_2f

    .line 71
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a4
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "2"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_b4
    .catchall {:try_start_93 .. :try_end_b4} :catchall_12e

    move-result v2

    if-eqz v2, :cond_e6

    .line 73
    :try_start_b7
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v3, "38400,173,171,24,62,24,61,24,62,24,17,24,17,24,18,24,17,24,19,22,62,24,61,24,62,24,19,22,17,25,17,24,17,24,17,24,62,24,61,25,61,24,17,24,19,23,17,24,17,24,20,22,17,24,17,24,17,25,61,24,62,24,61,24,62,24,61,24,1880,0"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->controlIRLED(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 74
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2f

    .line 76
    :cond_ca
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseNG(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d0
    .catchall {:try_start_b7 .. :try_end_d0} :catchall_12e
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_d0} :catch_d3

    move-result-object v1

    goto/16 :goto_2f

    .line 77
    :catch_d3
    move-exception v0

    .line 78
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_d4
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    const-string v4, "AtIRledcheck error 0,2"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    goto/16 :goto_2f

    .line 86
    .end local v0           #e:Ljava/lang/Exception;
    :cond_e6
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "3"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_f6
    .catchall {:try_start_d4 .. :try_end_f6} :catchall_12e

    move-result v2

    if-eqz v2, :cond_128

    .line 88
    :try_start_f9
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v3, "38400,173,171,24,62,24,61,24,62,24,17,24,17,24,18,24,17,24,18,23,62,24,61,24,62,24,18,23,17,25,17,24,17,24,17,24,62,24,61,25,17,24,61,24,18,24,17,24,17,24,18,24,17,24,17,24,62,24,17,24,62,24,61,24,62,24,61,24,1880,0"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->controlIRLED(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 89
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2f

    .line 91
    :cond_10c
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseNG(Ljava/lang/String;)Ljava/lang/String;
    :try_end_112
    .catchall {:try_start_f9 .. :try_end_112} :catchall_12e
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_112} :catch_115

    move-result-object v1

    goto/16 :goto_2f

    .line 92
    :catch_115
    move-exception v0

    .line 93
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_116
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    const-string v4, "AtIRledcheck error 0,3"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    goto/16 :goto_2f

    .line 97
    .end local v0           #e:Ljava/lang/Exception;
    :cond_128
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtIRledcheck;->responseNA()Ljava/lang/String;
    :try_end_12b
    .catchall {:try_start_116 .. :try_end_12b} :catchall_12e

    move-result-object v1

    goto/16 :goto_2f

    .line 31
    :catchall_12e
    move-exception v2

    monitor-exit p0

    throw v2
.end method
