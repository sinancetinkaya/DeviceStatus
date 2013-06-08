.class public Lcom/sec/factory/aporiented/athandler/AtBtidtest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtBtidtest.java"


# static fields
.field private static subString:Ljava/lang/String;


# instance fields
.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->subString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtBtidtest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    const-string v0, "BTIDTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->CMD_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "AtBtidtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->CLASS_NAME:Ljava/lang/String;

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->NUM_ARGS:I

    .line 23
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 25
    const-string v0, "boot"

    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->subString:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtBtidtest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtBtidtest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    const-string v0, "BTIDTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->CMD_NAME:Ljava/lang/String;

    .line 35
    const-string v0, "AtBtidtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->CLASS_NAME:Ljava/lang/String;

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->NUM_ARGS:I

    .line 37
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->subString:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 101
    monitor-enter p0

    const/4 v0, 0x0

    .line 103
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 104
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_89

    .line 135
    :goto_9
    monitor-exit p0

    return-object v1

    .line 107
    :cond_b
    const/4 v1, 0x0

    :try_start_c
    aget-object v1, p1, v1

    sput-object v1, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->subString:Ljava/lang/String;

    .line 109
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "1"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 112
    :cond_34
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->startReceiver()V

    .line 113
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->readBtId()V

    .line 114
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_44

    .line 115
    const-string v0, "WAIT"

    :cond_44
    :goto_44
    move-object v1, v0

    .line 135
    goto :goto_9

    .line 117
    :cond_46
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 119
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_72

    .line 120
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_6a

    .line 121
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->responseStringCMDNG()Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 123
    :cond_6a
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 125
    :cond_72
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->startReceiver()V

    .line 126
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleCommunication;->writeBtId(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_44

    .line 128
    const-string v0, "WAIT"

    goto :goto_44

    .line 132
    :cond_86
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_88
    .catchall {:try_start_c .. :try_end_88} :catchall_89

    goto :goto_44

    .line 101
    :catchall_89
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.bluetoothtest.BT_ID_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtBtidtest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    return-void
.end method
