.class public Lcom/sec/factory/aporiented/athandler/AtNfcmtest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtNfcmtest.java"


# instance fields
.field private final ACTION_NFC_RESPONSE:Ljava/lang/String;

.field private mEndReceiver:Z

.field private mNfcTestHandler:Landroid/os/Handler;

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "com.sec.android.app.nfcntest.NFC_TEST_RESPONSE"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->ACTION_NFC_RESPONSE:Ljava/lang/String;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mEndReceiver:Z

    .line 49
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtNfcmtest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    const-string v0, "NFCMTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->CMD_NAME:Ljava/lang/String;

    .line 23
    const-string v0, "AtNfcmtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->CLASS_NAME:Ljava/lang/String;

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->NUM_ARGS:I

    .line 26
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "com.sec.android.app.nfcntest.NFC_TEST_RESPONSE"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->ACTION_NFC_RESPONSE:Ljava/lang/String;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mEndReceiver:Z

    .line 49
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtNfcmtest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    const-string v0, "NFCMTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->CMD_NAME:Ljava/lang/String;

    .line 32
    const-string v0, "AtNfcmtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->CLASS_NAME:Ljava/lang/String;

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->NUM_ARGS:I

    .line 35
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/aporiented/athandler/AtNfcmtest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mEndReceiver:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/factory/aporiented/athandler/AtNfcmtest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mEndReceiver:Z

    return p1
.end method

.method private launchNfcActivity()V
    .registers 4

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.nfctest"

    const-string v2, "com.sec.android.app.nfctest.NfcTest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method private sendNfcTestCommand(II)V
    .registers 7
    .parameter "cmd_id"
    .parameter "i_data"

    .prologue
    .line 132
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$2;

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest$2;-><init>(Lcom/sec/factory/aporiented/athandler/AtNfcmtest;Landroid/os/Looper;II)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mNfcTestHandler:Landroid/os/Handler;

    .line 141
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mNfcTestHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 142
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 83
    monitor-enter p0

    const/4 v0, 0x0

    .line 85
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 86
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_52

    .line 120
    :goto_9
    monitor-exit p0

    return-object v1

    .line 89
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->launchNfcActivity()V

    .line 90
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 91
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->startReceiver()V

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->sendNfcTestCommand(II)V

    .line 117
    :goto_29
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_31

    .line 118
    const-string v0, "WAIT"

    :cond_31
    move-object v1, v0

    .line 120
    goto :goto_9

    .line 93
    :cond_33
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mEndReceiver:Z

    .line 97
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->startReceiver()V

    .line 98
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->sendNfcTestCommand(II)V
    :try_end_51
    .catchall {:try_start_b .. :try_end_51} :catchall_52

    goto :goto_29

    .line 83
    :catchall_52
    move-exception v1

    monitor-exit p0

    throw v1

    .line 99
    :cond_55
    const/4 v1, 0x2

    :try_start_56
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 100
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->startReceiver()V

    .line 101
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->sendNfcTestCommand(II)V

    goto :goto_29

    .line 102
    :cond_71
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 103
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->startReceiver()V

    .line 104
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->sendNfcTestCommand(II)V

    goto :goto_29

    .line 110
    :cond_8d
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 111
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->startReceiver()V

    .line 112
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->sendNfcTestCommand(II)V

    goto :goto_29

    .line 114
    :cond_a9
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_ab
    .catchall {:try_start_56 .. :try_end_ab} :catchall_52

    goto/16 :goto_29
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.nfcntest.NFC_TEST_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    return-void
.end method

.method public stopReceiver()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtNfcmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    return-void
.end method
