.class public Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;
.super Ljava/lang/Object;
.source "FactoryTestMainInnerBT.java"


# static fields
.field private static mBtTurnningCount:I


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mEnable:Z

.field private mHandlerFeedback:Landroid/os/Handler;

.field private mHandlerResult:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mBtTurnningCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/widget/ListView;)V
    .registers 6
    .parameter "context"
    .parameter "result"
    .parameter "feedback"
    .parameter "listView"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "FactoryTestMainInnerBT"

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->CLASS_NAME:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mEnable:Z

    .line 140
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT$1;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerResult:Landroid/os/Handler;

    .line 35
    iput-object p3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerFeedback:Landroid/os/Handler;

    .line 36
    iput-object p4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mListView:Landroid/widget/ListView;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->changeBluetoothState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private changeBluetoothState(Ljava/lang/String;)V
    .registers 7
    .parameter "result"

    .prologue
    const/4 v4, 0x2

    .line 76
    const-string v0, "FactoryTestMainInnerBT"

    const-string v1, "changeBluetoothState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    const-string v0, "ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 83
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    const/16 v1, 0x50

    invoke-direct {p0, v0, v4, v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->sendMessageTestResult(IBB)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->setEnable(Z)V

    .line 103
    :goto_34
    return-void

    .line 91
    :cond_35
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT_FAIL_CASE:I

    invoke-direct {p0, v0, v4}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->sendMessageTestResultFailCase(IB)V

    goto :goto_34
.end method

.method private registerTestReceiver()V
    .registers 5

    .prologue
    .line 126
    const-string v1, "FactoryTestMainInnerBT"

    const-string v2, "registerTestReceiver"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, filter:Landroid/content/IntentFilter;
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getEnable(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 129
    const-string v1, "com.sec.factory.intent.ACTION_BT_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    :cond_19
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method private sendMessageTestResult(IBB)V
    .registers 9
    .parameter "what"
    .parameter "id"
    .parameter "result"

    .prologue
    .line 176
    const-string v1, "FactoryTestMainInnerBT"

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

    .line 178
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerResult:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 179
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerResult:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    return-void
.end method

.method private sendMessageTestResultFailCase(IB)V
    .registers 8
    .parameter "what"
    .parameter "id"

    .prologue
    .line 183
    const-string v1, "FactoryTestMainInnerBT"

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

    .line 184
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerResult:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerResult:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    return-void
.end method

.method private unregisterTestReceiver()V
    .registers 4

    .prologue
    .line 136
    const-string v0, "FactoryTestMainInnerBT"

    const-string v1, "unregisterTestReceiver"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    return-void
.end method


# virtual methods
.method public getEnable()Z
    .registers 5

    .prologue
    .line 164
    const-string v0, "FactoryTestMainInnerBT"

    const-string v1, "getEnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-boolean v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mEnable:Z

    return v0
.end method

.method public setEnable(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mEnable:Z

    .line 170
    const-string v0, "FactoryTestMainInnerBT"

    const-string v1, "setEnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public startBluetooth()V
    .registers 6

    .prologue
    .line 42
    const-string v1, "FactoryTestMainInnerBT"

    const-string v2, "startBluetooth"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mBtTurnningCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mBtTurnningCount:I

    .line 44
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->setEnable(Z)V

    .line 45
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->registerTestReceiver()V

    .line 47
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleCommunication;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommunication;

    move-result-object v0

    .line 48
    .local v0, moduleCommunication:Lcom/sec/factory/modules/ModuleCommunication;
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunication;->isEnabledBtDevice()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 50
    const-string v1, "FactoryTestMainInnerBT"

    const-string v2, "startBluetooth"

    const-string v3, "BT Enable : FALSE => BT Activation"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunication;->btActivation()V

    .line 52
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v3, 0x3

    const-string v4, "BT Activating"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v3, 0x2

    const-string v4, "Bluetooth state is changed to On!!"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    :goto_49
    return-void

    .line 59
    :cond_4a
    const-string v1, "FactoryTestMainInnerBT"

    const-string v2, "startBluetooth"

    const-string v3, "BT Enable : TRUE => BT Discoverable"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunication;->btSetDiscoverable()V

    .line 61
    const-string v1, "ON"

    invoke-direct {p0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->changeBluetoothState(Ljava/lang/String;)V

    goto :goto_49
.end method

.method public stopBluetooth()V
    .registers 6

    .prologue
    .line 106
    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mBtTurnningCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mBtTurnningCount:I

    .line 107
    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mBtTurnningCount:I

    if-nez v1, :cond_40

    .line 108
    const-string v1, "FactoryTestMainInnerBT"

    const-string v2, "stopBluetooth"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/factory/modules/ModuleCommunication;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommunication;

    move-result-object v0

    .line 110
    .local v0, moduleCommunication:Lcom/sec/factory/modules/ModuleCommunication;
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunication;->isEnabledBtDevice()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 112
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunication;->btDeactivation()V

    .line 113
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v3, 0x3

    const-string v4, "BT Deactivating"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerFeedback:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mHandlerFeedback:Landroid/os/Handler;

    const/4 v3, 0x2

    const-string v4, "Bluetooth state is changed to Off!!"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    :cond_3d
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->unregisterTestReceiver()V

    .line 121
    .end local v0           #moduleCommunication:Lcom/sec/factory/modules/ModuleCommunication;
    :cond_40
    return-void
.end method
