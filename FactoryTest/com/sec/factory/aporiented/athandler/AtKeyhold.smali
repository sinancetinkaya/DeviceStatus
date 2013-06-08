.class public Lcom/sec/factory/aporiented/athandler/AtKeyhold;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtKeyhold.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "KEYHOLD"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKeyhold;->CMD_NAME:Ljava/lang/String;

    .line 11
    const-string v0, "AtKeyHold"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtKeyhold;->CLASS_NAME:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtKeyhold;->NUM_ARGS:I

    .line 13
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

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtKeyhold;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 21
    const-string v1, "wrong"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_17

    .line 26
    :goto_9
    monitor-exit p0

    return-object v1

    .line 23
    :cond_b
    :try_start_b
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtKeyhold;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDFT;->DftKeyHold(Ljava/lang/String;)V

    .line 25
    const-string v0, "OK\r\n"
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_17

    move-object v1, v0

    .line 26
    goto :goto_9

    .line 18
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method
