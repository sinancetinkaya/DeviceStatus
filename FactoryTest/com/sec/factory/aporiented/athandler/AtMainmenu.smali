.class public Lcom/sec/factory/aporiented/athandler/AtMainmenu;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtMainmenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "MAINMENU"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtMainmenu;->CMD_NAME:Ljava/lang/String;

    .line 11
    const-string v0, "AtMainmenu"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtMainmenu;->CLASS_NAME:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtMainmenu;->NUM_ARGS:I

    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 17
    monitor-enter p0

    const/4 v0, 0x0

    .line 19
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtMainmenu;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 20
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_23

    .line 29
    :goto_9
    monitor-exit p0

    return-object v1

    .line 23
    :cond_b
    const/4 v1, 0x1

    :try_start_c
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtMainmenu;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 24
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtMainmenu;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->goIdle()V

    :goto_1e
    move-object v1, v0

    .line 29
    goto :goto_9

    .line 26
    :cond_20
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_23

    goto :goto_1e

    .line 17
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method
