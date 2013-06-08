.class public Lcom/sec/factory/aporiented/athandler/AtWifitest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtWifitest.java"


# instance fields
.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mWlanTest:I

.field private savedArgu:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->mWlanTest:I

    .line 44
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtWifitest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    const-string v0, "WIFITEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CMD_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "AtWifitest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    .line 22
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->NUM_ARGS:I

    .line 24
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

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

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->mWlanTest:I

    .line 44
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtWifitest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtWifitest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    const-string v0, "WIFITEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CMD_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "AtWifitest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    .line 31
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->NUM_ARGS:I

    .line 33
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 34
    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/aporiented/athandler/AtWifitest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->mWlanTest:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/aporiented/athandler/AtWifitest;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->savedArgu:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "argu"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    const-string v0, ""

    .line 77
    .local v0, command:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_1d

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 81
    :cond_1d
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v2, 0x0

    .line 84
    .local v2, resData:Ljava/lang/String;
    array-length v3, p1

    iget v4, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->NUM_ARGS:I

    if-eq v3, v4, :cond_41

    .line 85
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_fc

    .line 195
    .end local v1           #i:I
    :goto_3f
    monitor-exit p0

    return-object v3

    .line 87
    .restart local v1       #i:I
    :cond_41
    :try_start_41
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWlanTest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->mWlanTest:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->mWlanTest:I

    if-nez v3, :cond_c5

    .line 90
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_91

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "2"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 92
    :cond_91
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v1           #i:I
    :cond_98
    :goto_98
    move-object v3, v2

    .line 195
    goto :goto_3f

    .line 94
    .restart local v1       #i:I
    :cond_9a
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->startReceiver()V

    .line 95
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->savedArgu:[Ljava/lang/String;

    .line 96
    new-instance v1, Landroid/content/Intent;

    .end local v1           #i:I
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.wlantest"

    const-string v4, "com.sec.android.app.wlantest.WlanTest"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    const-string v3, "MODE"

    const-string v4, "auto"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->getCmdType()I

    move-result v3

    if-nez v3, :cond_98

    .line 103
    const-string v2, "WAIT"

    goto :goto_98

    .line 108
    .local v1, i:I
    :cond_c5
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->startReceiver()V

    .line 109
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->getCmdType()I

    move-result v3

    if-nez v3, :cond_d0

    .line 110
    const-string v2, "WAIT"

    .line 112
    :cond_d0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 114
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : closeDut"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v3, 0x1

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    .line 116
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->mWlanTest:I
    :try_end_fb
    .catchall {:try_start_41 .. :try_end_fb} :catchall_fc

    goto :goto_98

    .line 76
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #resData:Ljava/lang/String;
    :catchall_fc
    move-exception v3

    monitor-exit p0

    throw v3

    .line 117
    .restart local v0       #command:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #resData:Ljava/lang/String;
    :cond_ff
    const/4 v3, 0x3

    :try_start_100
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 119
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : openDut"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v3, 0x0

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 121
    :cond_129
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "2"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_154

    .line 123
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : unloadNormalFW"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/16 v3, 0x13

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 125
    :cond_154
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "3"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 127
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : loadNormalFW"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/16 v3, 0x12

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 129
    :cond_17f
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a9

    .line 131
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : channelSetting"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v3, 0x6

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 133
    :cond_1a9
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d3

    .line 135
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : dataRateSetting"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v3, 0x2

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 137
    :cond_1d3
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "2"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1fd

    .line 139
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : preambleSetting"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v3, 0x5

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 141
    :cond_1fd
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "3"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_227

    .line 143
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : txGainSetting"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v3, 0x7

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 145
    :cond_227
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "4"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_252

    .line 147
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : payloadLengthSetting"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/16 v3, 0x9

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 149
    :cond_252
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "5"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27d

    .line 151
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : burstIntervalSetting"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/16 v3, 0x8

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 153
    :cond_27d
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "6"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a8

    .line 155
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : BandSetting"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/16 v3, 0x10

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 157
    :cond_2a8
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "7"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d3

    .line 159
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : BandwidthSetting"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/16 v3, 0x11

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 161
    :cond_2d3
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2fe

    .line 163
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : stopTx"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/16 v3, 0xb

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 165
    :cond_2fe
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_329

    .line 167
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : startTx"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/16 v3, 0xa

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 169
    :cond_329
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "3"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_354

    .line 171
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : stopRx"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/16 v3, 0xd

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 173
    :cond_354
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "3"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37f

    .line 175
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : startRx"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/16 v3, 0xc

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 177
    :cond_37f
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "4"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3aa

    .line 179
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : rxFrameReceiveError"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/16 v3, 0xe

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 181
    :cond_3aa
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "4"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d5

    .line 183
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : rxFrameReceiveGood"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/16 v3, 0xf

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 185
    :cond_3d5
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "6"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_400

    .line 187
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    const-string v5, "command : joinAP"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/16 v3, 0x14

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtWifitest;->sendIntent(ILjava/lang/String;)V

    goto/16 :goto_98

    .line 190
    :cond_400
    const-string v2, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_402
    .catchall {:try_start_100 .. :try_end_402} :catchall_fc

    goto/16 :goto_98
.end method

.method protected sendIntent(ILjava/lang/String;)V
    .registers 6
    .parameter "cmdID"
    .parameter "argu"

    .prologue
    .line 200
    iget v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->mWlanTest:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "CMDID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v1, "S_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_1b
    return-void
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.wlantest.WIFI_TEST_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v1, "android.intent.action.WIFI_DRIVER_INDICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWifitest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    return-void
.end method
