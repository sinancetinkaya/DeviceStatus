.class public Lcom/sec/factory/aporiented/athandler/AtBatttest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtBatttest.java"


# instance fields
.field public mBatteryHealth:I

.field public mBatteryStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 14
    const-string v0, "BATTTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBatttest;->CMD_NAME:Ljava/lang/String;

    .line 15
    const-string v0, "AtBatttest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBatttest;->CLASS_NAME:Ljava/lang/String;

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtBatttest;->NUM_ARGS:I

    .line 18
    iput v1, p0, Lcom/sec/factory/aporiented/athandler/AtBatttest;->mBatteryStatus:I

    .line 19
    iput v1, p0, Lcom/sec/factory/aporiented/athandler/AtBatttest;->mBatteryHealth:I

    .line 20
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "argu"

    .prologue
    .line 25
    monitor-enter p0

    const/4 v1, 0x0

    .line 27
    .local v1, resData:Ljava/lang/String;
    :try_start_2
    array-length v2, p1

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtBatttest;->NUM_ARGS:I

    if-eq v2, v3, :cond_b

    .line 28
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_73

    .line 73
    :goto_9
    monitor-exit p0

    return-object v2

    .line 31
    :cond_b
    const/4 v2, 0x2

    :try_start_c
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtBatttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 34
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    :goto_20
    move-object v2, v1

    .line 73
    goto :goto_9

    .line 47
    :cond_22
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "2"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtBatttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, isresetneeded:Z
    const-string v2, "AT_BATTEST_RESET_WHEN_READ"

    invoke-static {v2}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 51
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtBatttest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isresetneeded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-eqz v0, :cond_6b

    .line 54
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtBatttest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModulePower;->resetFuelGaugeIC()Z

    .line 59
    :goto_5d
    const/4 v2, 0x0

    aget-object v2, p1, v2

    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtBatttest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v3}, Lcom/sec/factory/modules/ModulePower;->readBatteryVoltage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtBatttest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    goto :goto_20

    .line 56
    :cond_6b
    const-string v2, "BATTERY_UPDATE_BEFORE_READ"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_72
    .catchall {:try_start_c .. :try_end_72} :catchall_73

    goto :goto_5d

    .line 25
    .end local v0           #isresetneeded:Z
    :catchall_73
    move-exception v2

    monitor-exit p0

    throw v2

    .line 70
    :cond_76
    :try_start_76
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_78
    .catchall {:try_start_76 .. :try_end_78} :catchall_73

    goto :goto_20
.end method
