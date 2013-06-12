.class public Lcom/sec/factory/aporiented/athandler/AtSysscope;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtSysscope.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 47
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

.method private changeSysScopeStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string v0, "NORMAL"

    return-object v0
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

