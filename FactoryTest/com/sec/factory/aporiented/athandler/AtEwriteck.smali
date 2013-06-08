.class public Lcom/sec/factory/aporiented/athandler/AtEwriteck;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtEwriteck.java"


# instance fields
.field SpenDetectionReceiver:Landroid/content/BroadcastReceiver;

.field spenInserted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->spenInserted:Z

    .line 22
    const-string v0, "EWRITECK"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->CMD_NAME:Ljava/lang/String;

    .line 23
    const-string v0, "AtEwriteck"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->CLASS_NAME:Ljava/lang/String;

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->NUM_ARGS:I

    .line 25
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "argu"

    .prologue
    .line 30
    monitor-enter p0

    const/4 v1, 0x0

    .line 32
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    new-instance v3, Lcom/sec/factory/aporiented/athandler/AtEwriteck$1;

    invoke-direct {v3, p0}, Lcom/sec/factory/aporiented/athandler/AtEwriteck$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtEwriteck;)V

    iput-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->SpenDetectionReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.pen.INSERT"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->SpenDetectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "registerReceiver"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    array-length v3, p1

    iget v4, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->NUM_ARGS:I

    if-eq v3, v4, :cond_29

    .line 54
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_bd

    .line 90
    :goto_27
    monitor-exit p0

    return-object v3

    .line 57
    :cond_29
    const/4 v3, 0x2

    :try_start_2a
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 59
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    .line 88
    :goto_3e
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->SpenDetectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    move-object v3, v1

    .line 90
    goto :goto_27

    .line 60
    :cond_47
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 61
    const-string v3, "EPEN_DIGITIZER_CHECK"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, result:Ljava/lang/String;
    const-string v3, "OK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 64
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    .line 65
    :cond_70
    const-string v3, "NG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 66
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    .line 68
    :cond_80
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "AtEwriteck"

    const-string v5, " Sysfs file\'s value is not 0 or 1 "

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto :goto_3e

    .line 72
    .end local v2           #result:Ljava/lang/String;
    :cond_8c
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_9c
    .catchall {:try_start_2a .. :try_end_9c} :catchall_bd

    move-result v3

    if-eqz v3, :cond_b8

    .line 75
    const-wide/16 v3, 0x64

    :try_start_a1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_bd
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_a4} :catch_bb

    .line 79
    :goto_a4
    :try_start_a4
    iget-boolean v3, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->spenInserted:Z

    if-eqz v3, :cond_b0

    .line 80
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    .line 82
    :cond_b0
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    .line 85
    :cond_b8
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_ba
    .catchall {:try_start_a4 .. :try_end_ba} :catchall_bd

    goto :goto_3e

    .line 76
    :catch_bb
    move-exception v3

    goto :goto_a4

    .line 30
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_bd
    move-exception v3

    monitor-exit p0

    throw v3
.end method
