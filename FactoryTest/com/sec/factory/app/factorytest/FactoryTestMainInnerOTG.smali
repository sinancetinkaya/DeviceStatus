.class public Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;
.super Ljava/lang/Object;
.source "FactoryTestMainInnerOTG.java"


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandlerFeedback:Landroid/os/Handler;

.field private mHandlerResult:Landroid/os/Handler;

.field private mOTGReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 5
    .parameter "context"
    .parameter "result"
    .parameter "feedback"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "FactoryTestMainInnerOTG"

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->CLASS_NAME:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mOTGReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerResult:Landroid/os/Handler;

    .line 27
    iput-object p3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerFeedback:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerFeedback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;IBB)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->sendMessageTestResult(IBB)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;IB)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->sendMessageTestResultFailCase(IB)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->changeOTGState()V

    return-void
.end method

.method private changeOTGState()V
    .registers 6

    .prologue
    .line 41
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mOTGReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_30

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.factory.action.ACTION_USB_STORAGE_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string v1, "com.sec.factory.action.ACTION_USB_STORAGE_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG$1;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG$1;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;)V

    iput-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mOTGReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mOTGReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v3, 0x3

    const-string v4, "Waiting OTG"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_2f
    return-void

    .line 85
    :cond_30
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mOTGReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mOTGReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2f
.end method

.method private sendMessageTestResult(IBB)V
    .registers 9
    .parameter "what"
    .parameter "id"
    .parameter "result"

    .prologue
    .line 104
    const-string v1, "FactoryTestMainInnerOTG"

    const-string v2, "sendTestResultMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerResult:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerResult:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    return-void
.end method

.method private sendMessageTestResultFailCase(IB)V
    .registers 8
    .parameter "what"
    .parameter "id"

    .prologue
    .line 111
    const-string v1, "FactoryTestMainInnerOTG"

    const-string v2, "sendTestResultMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerResult:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerResult:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    return-void
.end method


# virtual methods
.method public startOTG()V
    .registers 4

    .prologue
    .line 33
    const-string v0, "FactoryTestMainInnerOTG"

    const-string v1, "startOTG"

    const-string v2, "Start OTG"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->changeOTGState()V

    .line 38
    return-void
.end method

.method public unregisterOTGReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mOTGReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_15

    .line 95
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mOTGReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    iput-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mOTGReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    const-string v0, "FactoryTestMainInnerOTG"

    const-string v1, "unregisterOTGReceiver"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_15
    return-void
.end method
