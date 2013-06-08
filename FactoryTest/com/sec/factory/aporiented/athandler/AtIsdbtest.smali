.class public Lcom/sec/factory/aporiented/athandler/AtIsdbtest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtIsdbtest.java"


# instance fields
.field private mCommand:Ljava/lang/String;

.field private mMTVTunerTest:Lcom/sec/factory/app/factorytest/MTVTunerTest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "ISDBTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->CMD_NAME:Ljava/lang/String;

    .line 20
    const-string v0, "AtIsdbtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->CLASS_NAME:Ljava/lang/String;

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->NUM_ARGS:I

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "argu"

    .prologue
    .line 29
    monitor-enter p0

    const/4 v2, 0x0

    .line 30
    .local v2, resData:Ljava/lang/String;
    const/4 v1, 0x0

    .line 32
    .local v1, mData:Ljava/lang/String;
    :try_start_3
    new-instance v4, Lcom/sec/factory/app/factorytest/MTVTunerTest;

    invoke-direct {v4}, Lcom/sec/factory/app/factorytest/MTVTunerTest;-><init>()V

    iput-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->mMTVTunerTest:Lcom/sec/factory/app/factorytest/MTVTunerTest;

    .line 34
    array-length v4, p1

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->NUM_ARGS:I

    if-eq v4, v5, :cond_13

    .line 36
    const-string v4, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_17a

    .line 93
    :goto_11
    monitor-exit p0

    return-object v4

    .line 40
    :cond_13
    const/4 v4, 0x3

    :try_start_14
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 41
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "ISDB off start"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->mMTVTunerTest:Lcom/sec/factory/app/factorytest/MTVTunerTest;

    invoke-virtual {v4}, Lcom/sec/factory/app/factorytest/MTVTunerTest;->nativeoneseg_mod_deinit()I

    move-result v4

    if-nez v4, :cond_45

    .line 43
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_43
    move-object v4, v2

    .line 93
    goto :goto_11

    .line 45
    :cond_45
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    .line 48
    :cond_4d
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 50
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "ISDB on start"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->mMTVTunerTest:Lcom/sec/factory/app/factorytest/MTVTunerTest;

    invoke-virtual {v4}, Lcom/sec/factory/app/factorytest/MTVTunerTest;->nativeoneseg_mod_init()I

    move-result v4

    if-nez v4, :cond_7e

    .line 52
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    .line 54
    :cond_7e
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    .line 58
    :cond_86
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "2"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 59
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "set freq"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v4, 0x2

    aget-object v4, p1, v4

    const/4 v5, 0x6

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->mCommand:Ljava/lang/String;

    .line 61
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->mMTVTunerTest:Lcom/sec/factory/app/factorytest/MTVTunerTest;

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->mCommand:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/factory/app/factorytest/MTVTunerTest;->nativeoneseg_mod_settune(I)I

    move-result v4

    if-nez v4, :cond_c4

    .line 62
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    .line 64
    :cond_c4
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_43

    .line 67
    :cond_cd
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 68
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "BER read"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->mMTVTunerTest:Lcom/sec/factory/app/factorytest/MTVTunerTest;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/factory/app/factorytest/MTVTunerTest;->nativeoneseg_mod_getsiginfo(I)I

    move-result v0

    .line 70
    .local v0, ber:I
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ber value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4, v1}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    goto/16 :goto_43

    .line 75
    .end local v0           #ber:I
    :cond_11c
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_176

    .line 76
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "RSSI read"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->mMTVTunerTest:Lcom/sec/factory/app/factorytest/MTVTunerTest;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/factory/app/factorytest/MTVTunerTest;->nativeoneseg_mod_getsiginfo(I)I

    move-result v3

    .line 78
    .local v3, rssi:I
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rssi value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-eqz v3, :cond_16d

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4, v1}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_43

    .line 83
    :cond_16d
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtIsdbtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_43

    .line 89
    .end local v3           #rssi:I
    :cond_176
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_178
    .catchall {:try_start_14 .. :try_end_178} :catchall_17a

    goto/16 :goto_43

    .line 29
    :catchall_17a
    move-exception v4

    monitor-exit p0

    throw v4
.end method
