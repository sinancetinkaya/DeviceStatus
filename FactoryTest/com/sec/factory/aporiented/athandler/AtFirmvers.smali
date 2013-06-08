.class public Lcom/sec/factory/aporiented/athandler/AtFirmvers;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFirmvers.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "FIRMVERS"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->CMD_NAME:Ljava/lang/String;

    .line 14
    const-string v0, "AtFirmvers"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->CLASS_NAME:Ljava/lang/String;

    .line 15
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->NUM_ARGS:I

    .line 16
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "argu"

    .prologue
    .line 20
    monitor-enter p0

    const/4 v0, 0x0

    .line 22
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v3, p1

    iget v4, p0, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->NUM_ARGS:I

    if-eq v3, v4, :cond_b

    .line 23
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_25b

    .line 159
    :goto_9
    monitor-exit p0

    return-object v3

    .line 26
    :cond_b
    const/4 v3, 0x3

    :try_start_c
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 34
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    :goto_25
    move-object v3, v0

    .line 159
    goto :goto_9

    .line 35
    :cond_27
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 45
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto :goto_25

    .line 46
    :cond_42
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 50
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleDevice;->firmwareDownload(I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 51
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 53
    :cond_6b
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 55
    :cond_73
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 59
    const/4 v3, 0x0

    aget-object v3, p1, v3

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->readModuleUpdateStatus(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 61
    :cond_9a
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 65
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleDevice;->firmwareDownload(I)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 66
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    .line 68
    :cond_c4
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    .line 70
    :cond_cd
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 74
    const/4 v3, 0x0

    aget-object v3, p1, v3

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->readModuleUpdateStatus(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    .line 76
    :cond_f5
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 88
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto/16 :goto_25

    .line 89
    :cond_111
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12d

    .line 101
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto/16 :goto_25

    .line 102
    :cond_12d
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_155

    .line 107
    const/4 v3, 0x0

    aget-object v3, p1, v3

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    .line 109
    :cond_155
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17d

    .line 113
    const/4 v3, 0x0

    aget-object v3, p1, v3

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->readModuleBinVersion(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    .line 115
    :cond_17d
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 120
    const/4 v3, 0x0

    aget-object v3, p1, v3

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    .line 122
    :cond_1a5
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1cd

    .line 126
    const/4 v3, 0x0

    aget-object v3, p1, v3

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->readModuleBinVersion(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    .line 130
    :cond_1cd
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "3"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f5

    .line 135
    const/4 v3, 0x0

    aget-object v3, p1, v3

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    .line 139
    :cond_1f5
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "4"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_226

    .line 144
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, sensorHubFirmModule:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    goto/16 :goto_25

    .line 147
    .end local v2           #sensorHubFirmModule:[Ljava/lang/String;
    :cond_226
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "4"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_257

    .line 152
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, sensorHubFirmBin:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtFirmvers;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    goto/16 :goto_25

    .line 156
    .end local v1           #sensorHubFirmBin:[Ljava/lang/String;
    :cond_257
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_259
    .catchall {:try_start_c .. :try_end_259} :catchall_25b

    goto/16 :goto_25

    .line 20
    :catchall_25b
    move-exception v3

    monitor-exit p0

    throw v3
.end method
