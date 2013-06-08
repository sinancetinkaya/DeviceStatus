.class public Lcom/sec/factory/aporiented/athandler/AtLtepower;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtLtepower.java"


# instance fields
.field protected mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtLtepower;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    const-string v0, "LTEPOWER"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->CMD_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "AtLtepower"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->CLASS_NAME:Ljava/lang/String;

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->NUM_ARGS:I

    .line 24
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

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

    .line 45
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtLtepower$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtLtepower;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    const-string v0, "LTEPOWER"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->CMD_NAME:Ljava/lang/String;

    .line 31
    const-string v0, "AtLtepower"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->CLASS_NAME:Ljava/lang/String;

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->NUM_ARGS:I

    .line 34
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 35
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtLtepower;->startReceiver()V

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "argu"

    .prologue
    .line 72
    monitor-enter p0

    const/4 v1, 0x0

    .line 74
    .local v1, resData:Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/sec/factory/aporiented/athandler/AtLtepower;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 76
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-nez v2, :cond_22

    .line 77
    new-instance v2, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 78
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 80
    :cond_22
    const/4 v2, 0x1

    aget-object v0, p1, v2

    .line 81
    .local v0, argument:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v2, v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->sendLteRilCommand_POWER(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtLtepower;->getCmdType()I

    move-result v2

    if-nez v2, :cond_46

    .line 85
    const-string v1, "WAIT"
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_4b

    .line 91
    .end local v0           #argument:Ljava/lang/String;
    :cond_46
    :goto_46
    monitor-exit p0

    return-object v1

    .line 88
    :cond_48
    :try_start_48
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_4b

    goto :goto_46

    .line 72
    :catchall_4b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.factory.aporiented.athandler.AtLtepower.SetLTEPower"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtLtepower;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    return-void
.end method
