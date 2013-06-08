.class public Lcom/sec/factory/aporiented/athandler/AtUartswit;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtUartswit.java"


# instance fields
.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtUartswit$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtUartswit$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtUartswit;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    const-string v0, "UARTSWIT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->CMD_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "AtUartswit"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->CLASS_NAME:Ljava/lang/String;

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->NUM_ARGS:I

    .line 24
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 25
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->startReceiver()V

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
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtUartswit$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtUartswit$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtUartswit;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    const-string v0, "UARTSWIT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->CMD_NAME:Ljava/lang/String;

    .line 31
    const-string v0, "AtUartswit"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->CLASS_NAME:Ljava/lang/String;

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->NUM_ARGS:I

    .line 34
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "argu"

    .prologue
    .line 59
    monitor-enter p0

    const/4 v1, 0x0

    .line 60
    .local v1, resData:Ljava/lang/String;
    const/4 v2, 0x0

    .line 62
    .local v2, result:Z
    :try_start_3
    array-length v3, p1

    iget v4, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->NUM_ARGS:I

    if-eq v3, v4, :cond_c

    .line 63
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_13d

    .line 136
    :goto_a
    monitor-exit p0

    return-object v3

    .line 66
    :cond_c
    const/4 v3, 0x2

    :try_start_d
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 67
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "MODEM"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtUartswit;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v4, "CP"

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleCommon;->setUartPath(Ljava/lang/String;)Z

    move-result v2

    .line 71
    if-eqz v2, :cond_3b

    .line 72
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_39
    move-object v3, v1

    .line 136
    goto :goto_a

    .line 74
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    .line 77
    :cond_40
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 78
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "PDA"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtUartswit;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v4, "AP"

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleCommon;->setUartPath(Ljava/lang/String;)Z

    move-result v2

    .line 82
    if-eqz v2, :cond_6e

    .line 83
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    .line 85
    :cond_6e
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    .line 88
    :cond_73
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "2"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 89
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "LTE"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtUartswit;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v4, "LTE"

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleCommon;->setUartPath(Ljava/lang/String;)Z

    move-result v2

    .line 93
    if-eqz v2, :cond_a1

    .line 94
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    .line 96
    :cond_a1
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    .line 99
    :cond_a6
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "3"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 100
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "ESC"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtUartswit;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v4, "ESC"

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleCommon;->setUartPath(Ljava/lang/String;)Z

    move-result v2

    .line 104
    if-eqz v2, :cond_d5

    .line 105
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_39

    .line 107
    :cond_d5
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_39

    .line 110
    :cond_db
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_139

    .line 111
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "Read UART"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtUartswit;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v3}, Lcom/sec/factory/modules/ModuleCommon;->getUartPath()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, currentUart:Ljava/lang/String;
    if-eqz v0, :cond_136

    .line 116
    const-string v3, "CP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 117
    const-string v0, "UART1"

    .line 130
    :goto_109
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3, v0}, Lcom/sec/factory/aporiented/athandler/AtUartswit;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    goto/16 :goto_39

    .line 118
    :cond_112
    const-string v3, "AP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 119
    const-string v0, "UART2"

    goto :goto_109

    .line 120
    :cond_11d
    const-string v3, "LTE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 121
    const-string v0, "UART3"

    goto :goto_109

    .line 122
    :cond_128
    const-string v3, "ESC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 123
    const-string v0, "UART4"

    goto :goto_109

    .line 125
    :cond_133
    const-string v0, "NG"

    goto :goto_109

    .line 128
    :cond_136
    const-string v0, "NG"

    goto :goto_109

    .line 133
    .end local v0           #currentUart:Ljava/lang/String;
    :cond_139
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_13b
    .catchall {:try_start_d .. :try_end_13b} :catchall_13d

    goto/16 :goto_39

    .line 59
    :catchall_13d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.factory.aporiented.athandler.AtUartswit.SetUartPath"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtUartswit;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    return-void
.end method
