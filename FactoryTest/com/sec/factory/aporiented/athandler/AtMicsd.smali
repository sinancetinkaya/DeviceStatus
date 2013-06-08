.class public Lcom/sec/factory/aporiented/athandler/AtMicsd;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtMicsd.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "MICSD"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtMicsd;->CMD_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "AtMicsd"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtMicsd;->CLASS_NAME:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtMicsd;->NUM_ARGS:I

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "argu"

    .prologue
    .line 18
    monitor-enter p0

    const/4 v0, 0x0

    .line 20
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtMicsd;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 21
    const-string v1, "wrong"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_22

    .line 28
    :goto_9
    monitor-exit p0

    return-object v1

    .line 23
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtMicsd;->getCmdType()I

    move-result v1

    if-nez v1, :cond_16

    .line 24
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtMicsd;->setResultType(I)V

    .line 26
    :cond_16
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtMicsd;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleDFT;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDFT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDFT;->DftMicsd()Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_22

    move-result-object v0

    move-object v1, v0

    .line 28
    goto :goto_9

    .line 18
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method
