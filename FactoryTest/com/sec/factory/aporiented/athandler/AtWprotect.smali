.class public Lcom/sec/factory/aporiented/athandler/AtWprotect;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtWprotect.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, "WPROTECT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWprotect;->CMD_NAME:Ljava/lang/String;

    .line 23
    const-string v0, "AtWprotect"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWprotect;->CLASS_NAME:Ljava/lang/String;

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtWprotect;->NUM_ARGS:I

    .line 25
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "argu"

    .prologue
    .line 30
    monitor-enter p0

    const/4 v3, 0x0

    .line 32
    .local v3, resData:Ljava/lang/String;
    :try_start_2
    array-length v4, p1

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtWprotect;->NUM_ARGS:I

    if-eq v4, v5, :cond_b

    .line 33
    const-string v4, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_7c

    .line 72
    :goto_9
    monitor-exit p0

    return-object v4

    .line 36
    :cond_b
    const/4 v4, 0x2

    :try_start_c
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtWprotect;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 41
    const-string v4, "MMCBLK_DEVICE_CSD"

    invoke-static {v4}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, mCsd:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWprotect;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    invoke-static {v4, v5, v1}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    if-nez v1, :cond_36

    .line 45
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtWprotect;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 46
    goto :goto_9

    .line 49
    :cond_36
    const/16 v4, 0x1c

    const/16 v5, 0x1d

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, mWprotect:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWprotect;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    invoke-static {v4, v5, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, ch:I
    and-int/lit8 v0, v0, 0x3

    .line 54
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtWprotect;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    packed-switch v0, :pswitch_data_80

    .end local v0           #ch:I
    .end local v1           #mCsd:Ljava/lang/String;
    .end local v2           #mWprotect:Ljava/lang/String;
    :goto_59
    move-object v4, v3

    .line 72
    goto :goto_9

    .line 58
    .restart local v0       #ch:I
    .restart local v1       #mCsd:Ljava/lang/String;
    .restart local v2       #mWprotect:Ljava/lang/String;
    :pswitch_5b
    const/4 v4, 0x0

    aget-object v4, p1, v4

    const-string v5, "NONE"

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtWprotect;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    goto :goto_59

    .line 61
    :pswitch_65
    const/4 v4, 0x0

    aget-object v4, p1, v4

    const-string v5, "TEMP"

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtWprotect;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    goto :goto_59

    .line 65
    :pswitch_6f
    const/4 v4, 0x0

    aget-object v4, p1, v4

    const-string v5, "PERM"

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtWprotect;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_59

    .line 69
    .end local v0           #ch:I
    .end local v1           #mCsd:Ljava/lang/String;
    .end local v2           #mWprotect:Ljava/lang/String;
    :cond_79
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_7b
    .catchall {:try_start_c .. :try_end_7b} :catchall_7c

    goto :goto_59

    .line 30
    :catchall_7c
    move-exception v4

    monitor-exit p0

    throw v4

    .line 56
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_65
        :pswitch_6f
        :pswitch_6f
    .end packed-switch
.end method
