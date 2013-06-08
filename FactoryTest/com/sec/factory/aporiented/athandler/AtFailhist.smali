.class public Lcom/sec/factory/aporiented/athandler/AtFailhist;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFailhist.java"


# instance fields
.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtFailhist$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtFailhist$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtFailhist;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    const-string v0, "FAILHIST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist;->CMD_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "AtFailhist"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist;->CLASS_NAME:Ljava/lang/String;

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist;->NUM_ARGS:I

    .line 32
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 33
    return-void
.end method

.method private setProperties(Ljava/lang/String;)Z
    .registers 6
    .parameter "cmd"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "FACTORYAPP_FAILHIST"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "argu"

    .prologue
    const/4 v6, 0x3

    .line 46
    monitor-enter p0

    const/4 v2, 0x0

    .line 48
    .local v2, resData:Ljava/lang/String;
    :try_start_3
    array-length v3, p1

    iget v4, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist;->NUM_ARGS:I

    if-ge v3, v4, :cond_c

    .line 49
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_98

    .line 94
    :goto_a
    monitor-exit p0

    return-object v3

    .line 52
    :cond_c
    const/4 v3, 0x3

    :try_start_d
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

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFailhist;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 54
    array-length v3, p1

    iget v4, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist;->NUM_ARGS:I

    if-eq v3, v4, :cond_2c

    .line 55
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto :goto_a

    .line 58
    :cond_2c
    const-string v3, "FACTORYAPP_FAILHIST"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, res:Ljava/lang/String;
    if-nez v1, :cond_3d

    .line 61
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtFailhist;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v1           #res:Ljava/lang/String;
    :goto_3b
    move-object v3, v2

    .line 94
    goto :goto_a

    .line 63
    .restart local v1       #res:Ljava/lang/String;
    :cond_3d
    const-string v3, "Unknown"

    if-ne v1, v3, :cond_4b

    .line 65
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const-string v4, "none"

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtFailhist;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    .line 69
    :cond_4b
    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, replace_res:Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3, v0}, Lcom/sec/factory/aporiented/athandler/AtFailhist;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    .line 73
    .end local v0           #replace_res:Ljava/lang/String;
    .end local v1           #res:Ljava/lang/String;
    :cond_5b
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtFailhist;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 75
    array-length v3, p1

    if-eq v3, v6, :cond_74

    .line 76
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto :goto_a

    .line 79
    :cond_74
    const/4 v3, 0x2

    aget-object v3, p1, v3

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0       #replace_res:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtFailhist;->setProperties(Ljava/lang/String;)Z

    move-result v1

    .line 81
    .local v1, res:Z
    if-nez v1, :cond_8d

    .line 83
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtFailhist;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    .line 88
    :cond_8d
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtFailhist;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    .line 91
    .end local v0           #replace_res:Ljava/lang/String;
    .end local v1           #res:Z
    :cond_95
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_97
    .catchall {:try_start_d .. :try_end_97} :catchall_98

    goto :goto_3b

    .line 46
    :catchall_98
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.sec.FAILHIST.DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method
