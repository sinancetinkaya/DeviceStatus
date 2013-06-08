.class public Lcom/sec/factory/aporiented/athandler/AtTdmbtest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtTdmbtest.java"


# instance fields
.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtTdmbtest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    const-string v0, "TDMBTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CMD_NAME:Ljava/lang/String;

    .line 23
    const-string v0, "AtTdmbtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CLASS_NAME:Ljava/lang/String;

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->NUM_ARGS:I

    .line 25
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtTdmbtest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    const-string v0, "TDMBTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CMD_NAME:Ljava/lang/String;

    .line 31
    const-string v0, "AtTdmbtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CLASS_NAME:Ljava/lang/String;

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->NUM_ARGS:I

    .line 33
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "argu"

    .prologue
    .line 77
    monitor-enter p0

    const/4 v1, 0x0

    .line 79
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->NUM_ARGS:I

    if-eq v2, v3, :cond_b

    .line 80
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_a3

    .line 136
    :goto_9
    monitor-exit p0

    return-object v2

    .line 83
    :cond_b
    const/4 v2, 0x3

    :try_start_c
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 84
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    const-string v4, "TDMB off start"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->startReceiver()V

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.dmb"

    const-string v3, "com.sec.android.app.dmb.DMBFactoryService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    const-string v2, "COMMAND"

    const-string v3, "com.android.samsungtest.DMBPowerOff"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->getCmdType()I

    move-result v2

    if-nez v2, :cond_54

    .line 101
    const-string v1, "WAIT"

    .end local v0           #i:Landroid/content/Intent;
    :cond_54
    :goto_54
    move-object v2, v1

    .line 136
    goto :goto_9

    .line 103
    :cond_56
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 104
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    const-string v4, "TDMB on start"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->startReceiver()V

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .restart local v0       #i:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.dmb"

    const-string v3, "com.sec.android.app.dmb.DMBFactoryService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    const-string v2, "COMMAND"

    const-string v3, "com.android.samsungtest.DMBPowerOn"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->getCmdType()I

    move-result v2

    if-nez v2, :cond_54

    .line 112
    const-string v1, "WAIT"

    goto :goto_54

    .line 134
    .end local v0           #i:Landroid/content/Intent;
    :cond_a0
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_a2
    .catchall {:try_start_c .. :try_end_a2} :catchall_a3

    goto :goto_54

    .line 77
    :catchall_a3
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.samsungtest.DMB_GOOD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v1, "com.android.samsungtest.DMB_BAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtTdmbtest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    return-void
.end method
