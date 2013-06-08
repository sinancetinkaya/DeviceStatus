.class public Lcom/sec/factory/aporiented/athandler/AtFcfmtest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFcfmtest.java"


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

    .line 36
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtFcfmtest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    const-string v0, "FCFMTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->CMD_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "AtFcfmtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->CLASS_NAME:Ljava/lang/String;

    .line 22
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->NUM_ARGS:I

    .line 24
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtFcfmtest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    const-string v0, "FCFMTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->CMD_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "AtFcfmtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->CLASS_NAME:Ljava/lang/String;

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->NUM_ARGS:I

    .line 33
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "argu"

    .prologue
    .line 75
    monitor-enter p0

    const/4 v0, 0x0

    .line 77
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 78
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_102

    .line 139
    :goto_9
    monitor-exit p0

    return-object v1

    .line 81
    :cond_b
    const/4 v1, 0x3

    :try_start_c
    aget-object v1, p1, v1

    if-eqz v1, :cond_29

    const/4 v1, 0x3

    aget-object v1, p1, v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 82
    const/4 v1, 0x3

    const/4 v2, 0x3

    aget-object v2, p1, v2

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 85
    :cond_29
    const/4 v1, 0x3

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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x3

    aget-object v1, p1, v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_91

    const/4 v1, 0x3

    aget-object v1, p1, v1

    const-string v4, "30"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    const-string v1, "0"

    :goto_65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    .line 89
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    const/4 v2, 0x3

    aget-object v2, p1, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleCommunication;->fmRadioOn(Ljava/lang/String;I)V

    .line 90
    const-string v1, "FM_RADIO_RESPONSE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 91
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "test.mode.radio.on.response"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_8e
    :goto_8e
    move-object v1, v0

    .line 139
    goto/16 :goto_9

    .line 88
    :cond_91
    const-string v1, "00"

    goto :goto_65

    .line 94
    :cond_94
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8e

    .line 96
    :cond_9c
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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_111

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x3

    aget-object v1, p1, v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_105

    const/4 v1, 0x3

    aget-object v1, p1, v1

    const-string v4, "30"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_105

    const-string v1, "0"

    :goto_d8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    .line 99
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    const/4 v2, 0x3

    aget-object v2, p1, v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/factory/modules/ModuleCommunication;->fmRadioOn(Ljava/lang/String;I)V

    .line 100
    const-string v1, "FM_RADIO_RESPONSE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 101
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "test.mode.radio.on.response"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_101
    .catchall {:try_start_c .. :try_end_101} :catchall_102

    goto :goto_8e

    .line 75
    :catchall_102
    move-exception v1

    monitor-exit p0

    throw v1

    .line 98
    :cond_105
    :try_start_105
    const-string v1, "00"

    goto :goto_d8

    .line 104
    :cond_108
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8e

    .line 106
    :cond_111
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_146

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16c

    .line 115
    :cond_146
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->fmRadioOff()V

    .line 116
    const-string v1, "FM_RADIO_RESPONSE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_163

    .line 117
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "test.mode.radio.off.response"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_8e

    .line 120
    :cond_163
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8e

    .line 122
    :cond_16c
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d5

    .line 124
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "test.mode.radio.freq.response"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x3

    aget-object v1, p1, v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d2

    const/4 v1, 0x3

    aget-object v1, p1, v1

    const-string v4, "30"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d2

    const-string v1, "0"

    :goto_1b6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    .line 127
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommunication;->fmRadioReadFrequencyIntensity(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_8e

    .line 129
    const-string v0, "WAIT"

    goto/16 :goto_8e

    .line 126
    :cond_1d2
    const-string v1, "00"

    goto :goto_1b6

    .line 131
    :cond_1d5
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFcfmtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f1

    .line 134
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto/16 :goto_8e

    .line 136
    :cond_1f1
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_1f3
    .catchall {:try_start_105 .. :try_end_1f3} :catchall_102

    goto/16 :goto_8e
.end method
