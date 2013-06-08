.class public Lcom/sec/factory/aporiented/athandler/AtOtggtest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtOtggtest.java"


# static fields
.field private static subString:Ljava/lang/String;


# instance fields
.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->subString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtOtggtest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtOtggtest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtOtggtest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    const-string v0, "OTGGTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->CMD_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "AtOtggtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->CLASS_NAME:Ljava/lang/String;

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->NUM_ARGS:I

    .line 21
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtOtggtest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtOtggtest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtOtggtest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    const-string v0, "OTGGTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->CMD_NAME:Ljava/lang/String;

    .line 27
    const-string v0, "AtOtggtest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->CLASS_NAME:Ljava/lang/String;

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->NUM_ARGS:I

    .line 29
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->subString:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 54
    monitor-enter p0

    const/4 v0, 0x0

    .line 55
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 56
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_38

    .line 71
    :goto_9
    monitor-exit p0

    return-object v1

    .line 58
    :cond_b
    const/4 v1, 0x0

    :try_start_c
    aget-object v1, p1, v1

    sput-object v1, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->subString:Ljava/lang/String;

    .line 60
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 61
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->startReceiver()V

    .line 62
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->runOTGTest()V

    .line 64
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_33

    .line 65
    const-string v0, "WAIT"

    :cond_33
    :goto_33
    move-object v1, v0

    .line 71
    goto :goto_9

    .line 68
    :cond_35
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_38

    goto :goto_33

    .line 54
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startReceiver()V
    .registers 5

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtOtggtest;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.factory.intent.ACTION_OTG_RESPONSE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    return-void
.end method
