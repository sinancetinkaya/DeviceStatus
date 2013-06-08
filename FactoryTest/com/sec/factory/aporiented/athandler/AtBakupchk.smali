.class public Lcom/sec/factory/aporiented/athandler/AtBakupchk;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtBakupchk.java"


# instance fields
.field private mNResult:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 19
    const-string v0, "BAKUPCHK"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->CMD_NAME:Ljava/lang/String;

    .line 20
    const-string v0, "AtBakupchk"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->CLASS_NAME:Ljava/lang/String;

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->NUM_ARGS:I

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/aporiented/athandler/AtBakupchk;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->mNResult:I

    return v0
.end method

.method private doSystemCall(I)V
    .registers 4
    .parameter "cmd"

    .prologue
    .line 87
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtBakupchk;Landroid/os/Looper;)V

    .line 117
    .local v0, nvBackupHandler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    return-void
.end method

.method private setProperties(Ljava/lang/String;)Z
    .registers 6
    .parameter "cmd"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->CLASS_NAME:Ljava/lang/String;

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

    .line 82
    const-string v0, "CPNV_BACKUP_CMD"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Properties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 37
    monitor-enter p0

    const/4 v0, 0x0

    .line 39
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 40
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_a6

    .line 77
    :goto_9
    monitor-exit p0

    return-object v1

    .line 43
    :cond_b
    const/4 v1, 0x2

    :try_start_c
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 44
    const-string v1, "nvrecovery"

    invoke-direct {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->setProperties(Ljava/lang/String;)Z

    .line 45
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2a
    :goto_2a
    move-object v1, v0

    .line 77
    goto :goto_9

    .line 53
    :cond_2c
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 55
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->doSystemCall(I)V

    .line 56
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 57
    :cond_4b
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 59
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->doSystemCall(I)V

    .line 60
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 61
    :cond_6a
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 65
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 69
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtBakupchk;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 74
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_a5
    .catchall {:try_start_c .. :try_end_a5} :catchall_a6

    goto :goto_2a

    .line 37
    :catchall_a6
    move-exception v1

    monitor-exit p0

    throw v1
.end method
