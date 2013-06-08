.class public Lcom/sec/factory/aporiented/athandler/AtWidcount;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtWidcount.java"


# instance fields
.field private final ACTION_HOME_WIDCOUNT_REQUEST:Ljava/lang/String;

.field private final ACTION_HOME_WIDCOUNT_RESPONSE:Ljava/lang/String;

.field private final ACTION_WIDCOUNT_REQUEST:Ljava/lang/String;

.field private final ACTION_WIDCOUNT_RESPONSE:Ljava/lang/String;

.field private homeWidgetCount:I

.field private mIsReceived_HOME_COUNT:Z

.field private mIsReceived_WID_COUNT:Z

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private menuWidgetCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 6
    .parameter "context"
    .parameter "writer"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 26
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "android.intent.action.RESPONSE_WIDGET_COUNT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->ACTION_WIDCOUNT_RESPONSE:Ljava/lang/String;

    .line 17
    const-string v0, "android.intent.action.RESPONSE_HOME_COUNT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->ACTION_HOME_WIDCOUNT_RESPONSE:Ljava/lang/String;

    .line 18
    const-string v0, "android.intent.action.REQUEST_WIDGET_COUNT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->ACTION_WIDCOUNT_REQUEST:Ljava/lang/String;

    .line 19
    const-string v0, "android.intent.action.REQUEST_HOME_COUNT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->ACTION_HOME_WIDCOUNT_REQUEST:Ljava/lang/String;

    .line 20
    iput-boolean v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->mIsReceived_WID_COUNT:Z

    .line 21
    iput-boolean v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->mIsReceived_HOME_COUNT:Z

    .line 22
    iput v1, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->homeWidgetCount:I

    .line 23
    iput v1, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->menuWidgetCount:I

    .line 58
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtWidcount;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    const-string v0, "WIDCOUNT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->CMD_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "AtWidcount"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->CLASS_NAME:Ljava/lang/String;

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->NUM_ARGS:I

    .line 31
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 6
    .parameter "context"
    .parameter "writer"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "android.intent.action.RESPONSE_WIDGET_COUNT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->ACTION_WIDCOUNT_RESPONSE:Ljava/lang/String;

    .line 17
    const-string v0, "android.intent.action.RESPONSE_HOME_COUNT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->ACTION_HOME_WIDCOUNT_RESPONSE:Ljava/lang/String;

    .line 18
    const-string v0, "android.intent.action.REQUEST_WIDGET_COUNT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->ACTION_WIDCOUNT_REQUEST:Ljava/lang/String;

    .line 19
    const-string v0, "android.intent.action.REQUEST_HOME_COUNT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->ACTION_HOME_WIDCOUNT_REQUEST:Ljava/lang/String;

    .line 20
    iput-boolean v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->mIsReceived_WID_COUNT:Z

    .line 21
    iput-boolean v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->mIsReceived_HOME_COUNT:Z

    .line 22
    iput v1, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->homeWidgetCount:I

    .line 23
    iput v1, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->menuWidgetCount:I

    .line 58
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtWidcount;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    const-string v0, "WIDCOUNT"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->CMD_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "AtWidcount"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->CLASS_NAME:Ljava/lang/String;

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->NUM_ARGS:I

    .line 40
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/aporiented/athandler/AtWidcount;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->mIsReceived_HOME_COUNT:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/factory/aporiented/athandler/AtWidcount;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->mIsReceived_HOME_COUNT:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/aporiented/athandler/AtWidcount;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->homeWidgetCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/factory/aporiented/athandler/AtWidcount;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->homeWidgetCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/factory/aporiented/athandler/AtWidcount;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->mIsReceived_WID_COUNT:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/factory/aporiented/athandler/AtWidcount;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->mIsReceived_WID_COUNT:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/factory/aporiented/athandler/AtWidcount;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->menuWidgetCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/factory/aporiented/athandler/AtWidcount;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->menuWidgetCount:I

    return p1
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 86
    monitor-enter p0

    const/4 v0, 0x0

    .line 88
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 89
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_4b

    .line 103
    :goto_9
    monitor-exit p0

    return-object v1

    .line 92
    :cond_b
    const/4 v1, 0x3

    :try_start_c
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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 93
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->startReceiver()V

    .line 94
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.REQUEST_WIDGET_COUNT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.REQUEST_HOME_COUNT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    :goto_3e
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->getCmdType()I

    move-result v1

    if-nez v1, :cond_46

    .line 100
    const-string v0, "WAIT"

    :cond_46
    move-object v1, v0

    .line 103
    goto :goto_9

    .line 97
    :cond_48
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_4a
    .catchall {:try_start_c .. :try_end_4a} :catchall_4b

    goto :goto_3e

    .line 86
    :catchall_4b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.RESPONSE_WIDGET_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "android.intent.action.RESPONSE_HOME_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method
