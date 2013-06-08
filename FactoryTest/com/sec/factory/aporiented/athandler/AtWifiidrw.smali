.class public Lcom/sec/factory/aporiented/athandler/AtWifiidrw;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtWifiidrw.java"


# static fields
.field private static subString:Ljava/lang/String;


# instance fields
.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->subString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtWifiidrw;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    const-string v0, "WIFIIDRW"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->CMD_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "AtWifiidrw"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->CLASS_NAME:Ljava/lang/String;

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->NUM_ARGS:I

    .line 28
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 29
    const-string v0, "boot"

    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->subString:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtWifiidrw;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    const-string v0, "WIFIIDRW"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->CMD_NAME:Ljava/lang/String;

    .line 51
    const-string v0, "AtWifiidrw"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->CLASS_NAME:Ljava/lang/String;

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->NUM_ARGS:I

    .line 53
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 62
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->subString:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 115
    monitor-enter p0

    const/4 v0, 0x0

    .line 117
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 118
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_78

    .line 156
    :goto_9
    monitor-exit p0

    return-object v1

    .line 120
    :cond_b
    const/4 v1, 0x0

    :try_start_c
    aget-object v1, p1, v1

    sput-object v1, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->subString:Ljava/lang/String;

    .line 122
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 124
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->startReceiver()V

    .line 125
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->readWifiId()V

    .line 128
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->getCmdType()I

    move-result v1

    if-nez v1, :cond_33

    .line 129
    const-string v0, "WAIT"

    :cond_33
    :goto_33
    move-object v1, v0

    .line 156
    goto :goto_9

    .line 132
    :cond_35
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 134
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_61

    .line 135
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->getCmdType()I

    move-result v1

    if-nez v1, :cond_59

    .line 136
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 138
    :cond_59
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 140
    :cond_61
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->startReceiver()V

    .line 141
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommunication;->writeWifiId(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->getCmdType()I

    move-result v1

    if-nez v1, :cond_33

    .line 148
    const-string v0, "WAIT"

    goto :goto_33

    .line 153
    :cond_75
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_77
    .catchall {:try_start_c .. :try_end_77} :catchall_78

    goto :goto_33

    .line 115
    :catchall_78
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.wlantest.WIFI_ID_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWifiidrw;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void
.end method
