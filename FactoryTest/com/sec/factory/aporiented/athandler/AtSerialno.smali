.class public Lcom/sec/factory/aporiented/athandler/AtSerialno;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtSerialno.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 14
    const-string v2, "SERIALNO"

    iput-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtSerialno;->CMD_NAME:Ljava/lang/String;

    .line 15
    const-string v2, "AtSerialno"

    iput-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtSerialno;->CLASS_NAME:Ljava/lang/String;

    .line 16
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/factory/aporiented/athandler/AtSerialno;->NUM_ARGS:I

    .line 17
    const-string v2, "SERIAL_NO"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->isExistFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 19
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtSerialno;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v3, "00000000000"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->writeSerialNo(Ljava/lang/String;)V

    .line 20
    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v6}, Lcom/sec/factory/support/Support$Kernel;->setPermission(Ljava/lang/String;ZZZZZZ)Z

    .line 22
    :cond_2a
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "argu"

    .prologue
    .line 26
    monitor-enter p0

    const/4 v1, 0x0

    .line 28
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    array-length v3, p1

    iget v4, p0, Lcom/sec/factory/aporiented/athandler/AtSerialno;->NUM_ARGS:I

    if-ge v3, v4, :cond_b

    .line 29
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_8f

    .line 57
    :goto_9
    monitor-exit p0

    return-object v3

    .line 32
    :cond_b
    const/4 v3, 0x2

    :try_start_c
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtSerialno;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 34
    const/4 v3, 0x0

    aget-object v3, p1, v3

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtSerialno;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleDevice;->readSerialNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtSerialno;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2b
    move-object v3, v1

    .line 57
    goto :goto_9

    .line 36
    :cond_2d
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtSerialno;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 40
    const/4 v3, 0x0

    aget-object v3, p1, v3

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtSerialno;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleDevice;->readiSerialNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtSerialno;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    .line 42
    :cond_4e
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "2"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtSerialno;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v2, serial_no:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_62
    array-length v3, p1

    if-ge v0, v3, :cond_72

    .line 46
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 49
    :cond_72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 50
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtSerialno;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleDevice;->writeSerialNo(Ljava/lang/String;)V

    .line 51
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtSerialno;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    goto :goto_2b

    .line 54
    .end local v0           #i:I
    .end local v2           #serial_no:Ljava/lang/StringBuilder;
    :cond_8c
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_8e
    .catchall {:try_start_c .. :try_end_8e} :catchall_8f

    goto :goto_2b

    .line 26
    :catchall_8f
    move-exception v3

    monitor-exit p0

    throw v3
.end method
