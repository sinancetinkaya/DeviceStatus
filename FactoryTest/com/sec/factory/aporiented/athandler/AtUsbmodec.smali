.class public Lcom/sec/factory/aporiented/athandler/AtUsbmodec;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtUsbmodec.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, "USBMODEC"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->CMD_NAME:Ljava/lang/String;

    .line 12
    const-string v0, "AtUsbmodec"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->CLASS_NAME:Ljava/lang/String;

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->NUM_ARGS:I

    .line 14
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

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 21
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_cd

    .line 54
    :goto_9
    monitor-exit p0

    return-object v1

    .line 24
    :cond_b
    const/4 v1, 0x2

    :try_start_c
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 25
    const/4 v1, 0x0

    aget-object v1, p1, v1

    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleDevice;->getUSBMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2b
    move-object v1, v0

    .line 54
    goto :goto_9

    .line 26
    :cond_2d
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 28
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->setUSBMode(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 29
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 31
    :cond_51
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 33
    :cond_59
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 35
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto :goto_2b

    .line 36
    :cond_6f
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 38
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->setUSBMode(I)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 39
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 41
    :cond_93
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 43
    :cond_9b
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 45
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->setUSBMode(I)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 46
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 48
    :cond_c0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtUsbmodec;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 51
    :cond_c9
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_cb
    .catchall {:try_start_c .. :try_end_cb} :catchall_cd

    goto/16 :goto_2b

    .line 18
    :catchall_cd
    move-exception v1

    monitor-exit p0

    throw v1
.end method
