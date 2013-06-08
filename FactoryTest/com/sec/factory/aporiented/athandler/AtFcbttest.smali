.class public Lcom/sec/factory/aporiented/athandler/AtFcbttest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFcbttest.java"


# instance fields
.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtFcbttest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    const-string v0, "FCBTTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->CMD_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "AtFcbttest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->CLASS_NAME:Ljava/lang/String;

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->NUM_ARGS:I

    .line 22
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtFcbttest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    const-string v0, "FCBTTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->CMD_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "AtFcbttest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->CLASS_NAME:Ljava/lang/String;

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->NUM_ARGS:I

    .line 31
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 62
    monitor-enter p0

    const/4 v0, 0x0

    .line 64
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 65
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_4ef

    .line 291
    :goto_9
    monitor-exit p0

    return-object v1

    .line 68
    :cond_b
    const/4 v1, 0x3

    :try_start_c
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 69
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 70
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btActivationWhereAtcmd()V

    .line 71
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_35

    .line 72
    const-string v0, "WAIT"

    :goto_33
    move-object v1, v0

    .line 291
    goto :goto_9

    .line 74
    :cond_35
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseStringNoArgAndNoNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 76
    :cond_3d
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 77
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 78
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btSearchStart()V

    .line 79
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_66

    .line 80
    const-string v0, "WAIT"

    goto :goto_33

    .line 82
    :cond_66
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseStringNoArgAndNoNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 83
    :cond_6e
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 86
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 87
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btSearchStartWithAck()V

    .line 88
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_97

    .line 89
    const-string v0, "WAIT"

    goto :goto_33

    .line 91
    :cond_97
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseStringNoArgAndNoNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 92
    :cond_9f
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 94
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 95
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btSearchStop()V

    .line 96
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_c9

    .line 97
    const-string v0, "WAIT"

    goto/16 :goto_33

    .line 99
    :cond_c9
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseStringNoArgAndNoNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 100
    :cond_d2
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "3"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_105

    .line 104
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 107
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->bleSearchStartWithAckOn10s()V

    .line 109
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_fc

    .line 110
    const-string v0, "WAIT"

    goto/16 :goto_33

    .line 112
    :cond_fc
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseStringNoArgAndNoNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 113
    :cond_105
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 114
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 115
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btDeactivation()V

    .line 116
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_12f

    .line 117
    const-string v0, "WAIT"

    goto/16 :goto_33

    .line 119
    :cond_12f
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseStringNoArgAndNoNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 120
    :cond_138
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 122
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btRfTestStart()V

    .line 123
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseStringNoArgAndNoNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 124
    :cond_15e
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_184

    .line 127
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btRfTestStop()V

    .line 128
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseStringNoArgAndNoNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 129
    :cond_184
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "4"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 132
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 133
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btAudioTestStart()V

    .line 134
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseStringNoArgAndNoNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 135
    :cond_1ad
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d6

    .line 138
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 139
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btAudioTestStop()V

    .line 140
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseStringNoArgAndNoNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 143
    :cond_1d6
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ff

    .line 146
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 147
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxOutputChLow()V

    .line 148
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 149
    :cond_1ff
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_228

    .line 153
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 154
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxOutputChMid()V

    .line 155
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 156
    :cond_228
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_251

    .line 160
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 161
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxOutputChHigh()V

    .line 162
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 163
    :cond_251
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "3"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27a

    .line 170
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 171
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxModChLow()V

    .line 172
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 173
    :cond_27a
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "4"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a3

    .line 180
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 181
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxModChMid()V

    .line 182
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 183
    :cond_2a3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "5"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2cc

    .line 190
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 191
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxModChHigh()V

    .line 192
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 193
    :cond_2cc
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "6"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f5

    .line 200
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 201
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxModChLowAA()V

    .line 202
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 203
    :cond_2f5
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "7"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31e

    .line 210
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 211
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxModChMidAA()V

    .line 212
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 213
    :cond_31e
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "8"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_347

    .line 220
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 221
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxModChHighAA()V

    .line 222
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 223
    :cond_347
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_370

    .line 227
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 228
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxCarrierChLow()V

    .line 229
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 230
    :cond_370
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_399

    .line 234
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 235
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxCarrierChMid()V

    .line 236
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 237
    :cond_399
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c2

    .line 241
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 242
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxCarrierChHigh()V

    .line 243
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 244
    :cond_3c2
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "3"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3eb

    .line 248
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 249
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxInBandChLow()V

    .line 250
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 251
    :cond_3eb
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "4"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_414

    .line 255
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 256
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxInBandChMid()V

    .line 257
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 258
    :cond_414
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "5"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43d

    .line 262
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 263
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTxInBandChHigh()V

    .line 264
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 265
    :cond_43d
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "6"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_466

    .line 266
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 267
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeRxLow()V

    .line 268
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 269
    :cond_466
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "7"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48f

    .line 271
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 272
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeRxMid()V

    .line 273
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 274
    :cond_48f
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "8"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b8

    .line 276
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 277
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeRxHigh()V

    .line 278
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 279
    :cond_4b8
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "9"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4eb

    .line 281
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->startReceiver()V

    .line 282
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->btLeTestEnd()V

    .line 283
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_4e2

    .line 284
    const-string v0, "WAIT"

    goto/16 :goto_33

    .line 286
    :cond_4e2
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    .line 288
    :cond_4eb
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_4ed
    .catchall {:try_start_c .. :try_end_4ed} :catchall_4ef

    goto/16 :goto_33

    .line 62
    :catchall_4ef
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.factory.intent.ACTION_BT_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcbttest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    return-void
.end method
