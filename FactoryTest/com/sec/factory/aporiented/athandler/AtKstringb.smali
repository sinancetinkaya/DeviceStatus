.class public Lcom/sec/factory/aporiented/athandler/AtKstringb;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtKstringb.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "KSTRINGB"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKstringb;->CMD_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "AtKstringb"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKstringb;->CLASS_NAME:Ljava/lang/String;

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtKstringb;->NUM_ARGS:I

    .line 23
    new-instance v7, Ljava/io/File;

    const-string v0, "FACTORY_MODE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v7, mFactoryMode:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_76

    .line 25
    monitor-enter p0

    .line 26
    :try_start_20
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtKstringb;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleCommon;->writeFactoryMode(Ljava/lang/String;)V

    .line 27
    const-string v0, "FACTORY_MODE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sec/factory/support/Support$Kernel;->setPermission(Ljava/lang/String;ZZZZZZ)Z

    .line 29
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_73

    .line 30
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKstringb;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "AtKstringb"

    const-string v2, "FACTORY_MODE is created..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_40
    new-instance v8, Ljava/io/File;

    const-string v0, "KEYSTRING_BLOCK"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v8, mKeyStringBlock:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_83

    .line 39
    monitor-enter p0

    .line 40
    :try_start_52
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtKstringb;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleCommon;->writeKeyStringBlock(Ljava/lang/String;)V

    .line 41
    const-string v0, "KEYSTRING_BLOCK"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sec/factory/support/Support$Kernel;->setPermission(Ljava/lang/String;ZZZZZZ)Z

    .line 43
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_52 .. :try_end_69} :catchall_80

    .line 44
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKstringb;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "AtKstringb"

    const-string v2, "KEYSTRING_BLOCK is created..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_72
    return-void

    .line 29
    .end local v8           #mKeyStringBlock:Ljava/io/File;
    :catchall_73
    move-exception v0

    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0

    .line 32
    :cond_76
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKstringb;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "AtKstringb"

    const-string v2, "FACTORY_MODEis already existed..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 43
    .restart local v8       #mKeyStringBlock:Ljava/io/File;
    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v0

    .line 47
    :cond_83
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKstringb;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "AtKstringb"

    const-string v2, "KEYSTRING_BLOCKis already existed..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "argu"

    .prologue
    .line 54
    monitor-enter p0

    const/4 v0, 0x0

    .line 56
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtKstringb;->NUM_ARGS:I

    if-eq v2, v3, :cond_b

    .line 57
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_de

    .line 86
    :goto_9
    monitor-exit p0

    return-object v2

    .line 60
    :cond_b
    const/4 v2, 0x2

    :try_start_c
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 62
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtKstringb;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->readKeyStringBlock()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, value:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v1           #value:Ljava/lang/String;
    :goto_2b
    move-object v2, v0

    .line 86
    goto :goto_9

    .line 64
    :cond_2d
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 66
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtKstringb;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleCommon;->writeKeyStringBlock(Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 68
    :cond_4f
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 70
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtKstringb;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v3, "OFF"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleCommon;->writeKeyStringBlock(Ljava/lang/String;)V

    .line 71
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 72
    :cond_71
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "4"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 74
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtKstringb;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v3, "OFF"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleCommon;->writeFactoryMode(Ljava/lang/String;)V

    .line 75
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 76
    :cond_93
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "5"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 77
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtKstringb;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleCommon;->writeFactoryMode(Ljava/lang/String;)V

    .line 78
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 79
    :cond_b6
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "2"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 80
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtKstringb;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->readFactoryMode()Ljava/lang/String;

    move-result-object v1

    .line 81
    .restart local v1       #value:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    goto/16 :goto_2b

    .line 83
    .end local v1           #value:Ljava/lang/String;
    :cond_d8
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtKstringb;->responseNA()Ljava/lang/String;
    :try_end_db
    .catchall {:try_start_c .. :try_end_db} :catchall_de

    move-result-object v0

    goto/16 :goto_2b

    .line 54
    :catchall_de
    move-exception v2

    monitor-exit p0

    throw v2
.end method
