.class public Lcom/sec/factory/app/ui/UIBtlesearch;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIBtlesearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtLeSearchtask:Ljava/util/TimerTask;

.field private mBtleResult:Landroid/widget/TextView;

.field private mBtleRetryButton:Landroid/widget/Button;

.field private mBtleTimeCount:Landroid/widget/TextView;

.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIsTestDone:Z

.field private mIsTestPassed:Z

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 53
    const-string v0, "UIBtlesearch"

    const/16 v1, 0x26

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 48
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mCount:I

    .line 49
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mIsTestPassed:Z

    .line 50
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mIsTestDone:Z

    .line 76
    new-instance v0, Lcom/sec/factory/app/ui/UIBtlesearch$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIBtlesearch$1;-><init>(Lcom/sec/factory/app/ui/UIBtlesearch;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance v0, Lcom/sec/factory/app/ui/UIBtlesearch$3;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIBtlesearch$3;-><init>(Lcom/sec/factory/app/ui/UIBtlesearch;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIBtlesearch;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mIsTestDone:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UIBtlesearch;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mIsTestDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIBtlesearch;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/factory/app/ui/UIBtlesearch;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mCount:I

    return p1
.end method

.method static synthetic access$120(Lcom/sec/factory/app/ui/UIBtlesearch;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleTimeCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleRetryButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UIBtlesearch;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBtlesearch;->startBtSearch()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UIBtlesearch;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/factory/app/ui/UIBtlesearch;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UIBtlesearch;)Ljava/util/TimerTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtLeSearchtask:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/factory/app/ui/UIBtlesearch;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mIsTestPassed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/factory/app/ui/UIBtlesearch;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mIsTestPassed:Z

    return p1
.end method

.method private createNewTask()Ljava/util/TimerTask;
    .registers 2

    .prologue
    .line 166
    new-instance v0, Lcom/sec/factory/app/ui/UIBtlesearch$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIBtlesearch$2;-><init>(Lcom/sec/factory/app/ui/UIBtlesearch;)V

    .line 177
    .local v0, timertask:Ljava/util/TimerTask;
    return-object v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 151
    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIBtlesearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleTimeCount:Landroid/widget/TextView;

    .line 152
    const v1, 0x7f09007d

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIBtlesearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleResult:Landroid/widget/TextView;

    .line 153
    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIBtlesearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleRetryButton:Landroid/widget/Button;

    .line 154
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleRetryButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mTimer:Ljava/util/Timer;

    .line 157
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBtlesearch;->createNewTask()Ljava/util/TimerTask;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtLeSearchtask:Ljava/util/TimerTask;

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, btIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.factory.intent.ACTION_BT_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    return-void
.end method

.method private startBtSearch()V
    .registers 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startBtSearch()"

    const-string v2, "BT Search Start!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleCommunication;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommunication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunication;->bleSearchStartWithAck()V

    .line 133
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 139
    .local v0, viewid:I
    packed-switch v0, :pswitch_data_16

    .line 147
    :goto_7
    return-void

    .line 141
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBtlesearch;->createNewTask()Ljava/util/TimerTask;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtLeSearchtask:Ljava/util/TimerTask;

    .line 142
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 139
    :pswitch_data_16
    .packed-switch 0x7f09007c
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBtlesearch;->init()V

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtLeSearchtask:Ljava/util/TimerTask;

    if-eqz v0, :cond_c

    .line 184
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtLeSearchtask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 185
    iput-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBtLeSearchtask:Ljava/util/TimerTask;

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_17

    .line 188
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 189
    iput-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mTimer:Ljava/util/Timer;

    .line 191
    :cond_17
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 193
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 71
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleCommunication;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommunication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunication;->btSearchStop()V

    .line 74
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    return-void
.end method
