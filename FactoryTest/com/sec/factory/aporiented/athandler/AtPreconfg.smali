.class public Lcom/sec/factory/aporiented/athandler/AtPreconfg;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtPreconfg.java"


# instance fields
.field private code:Ljava/lang/String;

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->code:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtPreconfg$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtPreconfg$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtPreconfg;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    const-string v0, "PRECONFG"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->CMD_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "AtPreconfg"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->CLASS_NAME:Ljava/lang/String;

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->NUM_ARGS:I

    .line 24
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "argu"

    .prologue
    .line 44
    monitor-enter p0

    const/4 v2, 0x0

    .line 46
    .local v2, resData:Ljava/lang/String;
    :try_start_2
    array-length v4, p1

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->NUM_ARGS:I

    if-eq v4, v5, :cond_b

    .line 47
    const-string v4, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_c0

    .line 94
    :goto_9
    monitor-exit p0

    return-object v4

    .line 50
    :cond_b
    const/4 v4, 0x2

    :try_start_c
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 51
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "AtPreconfg=0,0"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->startReceiver()V

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CSC_COMPARE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, i:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v1           #i:Landroid/content/Intent;
    :goto_36
    move-object v4, v2

    .line 94
    goto :goto_9

    .line 57
    :cond_38
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 58
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "AtPreconfg=1,0"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v4, "efs/imei/mps_code.dat"

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 60
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_36

    .line 62
    :cond_64
    const-string v4, "efs/imei/mps_code.dat"

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, value:Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4, v3}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    goto :goto_36

    .line 66
    .end local v3           #value:Ljava/lang/String;
    :cond_72
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "2"

    aput-object v6, v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 67
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    const-string v6, "AtPreconfg=2,STRING"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v4, 0x1

    aget-object v0, p1, v4

    .line 69
    .local v0, buyerCode:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_9b

    .line 70
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_36

    .line 77
    :cond_9b
    const-string v4, "efs/imei/mps_code.dat"

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 78
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_36

    .line 80
    :cond_ab
    const-string v4, "efs/imei/mps_code.dat"

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_36

    .line 91
    .end local v0           #buyerCode:Ljava/lang/String;
    :cond_bc
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_be
    .catchall {:try_start_c .. :try_end_be} :catchall_c0

    goto/16 :goto_36

    .line 44
    :catchall_c0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public isFileExist(Ljava/lang/String;)Z
    .registers 4
    .parameter "aFile"

    .prologue
    .line 98
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.factory.aporiented.athandler.atpreconfg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtPreconfg;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void
.end method
