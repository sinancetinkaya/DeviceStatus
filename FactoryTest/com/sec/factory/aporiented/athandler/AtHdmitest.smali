.class public Lcom/sec/factory/aporiented/athandler/AtHdmitest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtHdmitest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "HDMITEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->CMD_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "AtHdmitest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->CLASS_NAME:Ljava/lang/String;

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->NUM_ARGS:I

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    .line 25
    monitor-enter p0

    .line 27
    :try_start_1
    array-length v0, p1

    iget v1, p0, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->NUM_ARGS:I

    if-eq v0, v1, :cond_a

    .line 28
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_bd

    .line 68
    :goto_8
    monitor-exit p0

    return-object v0

    .line 31
    :cond_a
    const/4 v0, 0x2

    :try_start_b
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 32
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->readHDMITestResult()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "AtHdmitest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    if-nez v0, :cond_47

    .line 35
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 38
    :cond_47
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 39
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 41
    :cond_57
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 44
    :cond_5f
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 46
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    const/16 v2, 0x17

    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "AtHdmitest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "testCase="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "LAND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 54
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->context:Landroid/content/Context;

    const-class v3, Lcom/sec/factory/app/ui/UIHDMI_Landscape;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    :goto_b1
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_bb
    .catchall {:try_start_b .. :try_end_bb} :catchall_bd

    goto/16 :goto_8

    .line 25
    :catchall_bd
    move-exception v0

    monitor-exit p0

    throw v0

    .line 56
    :cond_c0
    :try_start_c0
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->context:Landroid/content/Context;

    const-class v3, Lcom/sec/factory/app/ui/UIHDMI_Portrait;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_b1

    .line 60
    :cond_c8
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "3"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 62
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtHdmitest;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.samsungtest.HDMITEST_STOP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 65
    :cond_f0
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_f2
    .catchall {:try_start_c0 .. :try_end_f2} :catchall_bd

    goto/16 :goto_8
.end method
