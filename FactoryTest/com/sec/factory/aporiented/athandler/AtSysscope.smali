.class public Lcom/sec/factory/aporiented/athandler/AtSysscope;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtSysscope.java"


# instance fields
.field private isSysScopeStatus:I

.field private mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtSysscope$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtSysscope$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtSysscope;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    const-string v0, "SYSSCOPE"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->CMD_NAME:Ljava/lang/String;

    .line 32
    const-string v0, "AtSysscope"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->CLASS_NAME:Ljava/lang/String;

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->NUM_ARGS:I

    .line 35
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtSysscope$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtSysscope$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtSysscope;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    const-string v0, "SYSSCOPE"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->CMD_NAME:Ljava/lang/String;

    .line 41
    const-string v0, "AtSysscope"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->CLASS_NAME:Ljava/lang/String;

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->NUM_ARGS:I

    .line 44
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/aporiented/athandler/AtSysscope;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtSysscope;->changeSysScopeStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private changeSysScopeStatus()Ljava/lang/String;
    .registers 12

    .prologue
    const-wide/16 v9, 0x3e8

    const/4 v8, -0x1

    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    div-long v0, v6, v9

    .line 78
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long v4, v6, v9

    .line 80
    .local v4, ut:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_18

    .line 81
    const-wide/16 v4, 0x1

    .line 84
    :cond_18
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-virtual {v6}, Lcom/sec/android/app/sysscope/service/SysScope;->isConnected()Z

    move-result v6

    if-nez v6, :cond_43

    const-wide/16 v6, 0x78

    cmp-long v6, v4, v6

    if-lez v6, :cond_43

    .line 85
    const-string v3, "MODIFIED"

    .line 86
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "changeSysScopeStatus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "elapsedRealtime()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_42
    return-object v3

    .line 89
    :cond_43
    :try_start_43
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-virtual {v6}, Lcom/sec/android/app/sysscope/service/SysScope;->getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->getResult()I

    move-result v6

    iput v6, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->isSysScopeStatus:I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4f} :catch_71

    .line 94
    :goto_4f
    iget v6, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->isSysScopeStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_75

    .line 95
    const-string v3, "MODIFIED"

    .line 101
    :goto_56
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "changeSysScopeStatus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 90
    :catch_71
    move-exception v2

    .line 91
    .local v2, e:Ljava/lang/Exception;
    iput v8, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->isSysScopeStatus:I

    goto :goto_4f

    .line 96
    .end local v2           #e:Ljava/lang/Exception;
    :cond_75
    iget v6, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->isSysScopeStatus:I

    if-ne v6, v8, :cond_7c

    .line 97
    const-string v3, "SCANNING"

    goto :goto_56

    .line 99
    :cond_7c
    const-string v3, "NORMAL"

    goto :goto_56
.end method

.method private setSysScopeStatus()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    if-nez v0, :cond_d

    .line 71
    new-instance v0, Lcom/sec/android/app/sysscope/service/SysScope;

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScope;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    .line 73
    :cond_d
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 107
    monitor-enter p0

    const/4 v0, 0x0

    .line 109
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 110
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_31

    .line 120
    :goto_9
    monitor-exit p0

    return-object v1

    .line 113
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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtSysscope;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 114
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtSysscope;->setSysScopeStatus()V

    .line 115
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtSysscope;->changeSysScopeStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtSysscope;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    move-object v1, v0

    .line 120
    goto :goto_9

    .line 117
    :cond_2e
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_31

    goto :goto_2c

    .line 107
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method
