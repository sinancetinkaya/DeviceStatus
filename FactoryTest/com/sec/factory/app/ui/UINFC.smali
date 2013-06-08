.class public Lcom/sec/factory/app/ui/UINFC;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UINFC.java"


# static fields
.field private static mCardModeResult:Landroid/widget/TextView;

.field private static mReaderModeResult:Landroid/widget/TextView;


# instance fields
.field private final MSG_DISABLE_DISCOVERY:B

.field private final MSG_ENABLE_DISCOVERY:B

.field private final MSG_FINISH_TEST:B

.field private final MSG_READ_STATUS_TIMEOUT:B

.field private final MSG_SIM_TEST:B

.field private final NFC_DISABLE_DELAY:I

.field private final NFC_ENABLE_DELAY_OFFSET:I

.field private final NFC_FINISH_DELAY:I

.field private final NFC_READ_STATUS_TIMEOUT_DELAY:I

.field public mHandler:Landroid/os/Handler;

.field private mIsPassed_card:Z

.field private mIsPassed_reader:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 115
    const-string v0, "UINFC"

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 31
    const/16 v0, 0x2710

    iput v0, p0, Lcom/sec/factory/app/ui/UINFC;->NFC_READ_STATUS_TIMEOUT_DELAY:I

    .line 33
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UINFC;->NFC_FINISH_DELAY:I

    .line 34
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/factory/app/ui/UINFC;->NFC_DISABLE_DELAY:I

    .line 35
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/sec/factory/app/ui/UINFC;->NFC_ENABLE_DELAY_OFFSET:I

    .line 37
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UINFC;->MSG_READ_STATUS_TIMEOUT:B

    .line 38
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UINFC;->MSG_ENABLE_DISCOVERY:B

    .line 39
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UINFC;->MSG_DISABLE_DISCOVERY:B

    .line 40
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UINFC;->MSG_FINISH_TEST:B

    .line 41
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UINFC;->MSG_SIM_TEST:B

    .line 46
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UINFC;->mIsPassed_card:Z

    .line 47
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UINFC;->mIsPassed_reader:Z

    .line 49
    new-instance v0, Lcom/sec/factory/app/ui/UINFC$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UINFC$1;-><init>(Lcom/sec/factory/app/ui/UINFC;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UINFC;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/sec/factory/app/ui/UINFC$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UINFC$2;-><init>(Lcom/sec/factory/app/ui/UINFC;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UINFC;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UINFC;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UINFC;->mIsPassed_reader:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UINFC;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UINFC;->mIsPassed_reader:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UINFC;ILjava/lang/String;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/factory/app/ui/UINFC;->updateDisplay(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UINFC;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UINFC;->mIsPassed_card:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/factory/app/ui/UINFC;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UINFC;->mIsPassed_card:Z

    return p1
.end method

.method private nfctest()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x190

    .line 169
    const-string v2, "UINFC"

    const-string v3, "*** Start nfctest ***"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-wide/16 v0, 0x0

    .line 173
    .local v0, delayTime:J
    iget-object v2, p0, Lcom/sec/factory/app/ui/UINFC;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 176
    iget-object v2, p0, Lcom/sec/factory/app/ui/UINFC;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 186
    add-long/2addr v0, v6

    .line 187
    iget-object v2, p0, Lcom/sec/factory/app/ui/UINFC;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    add-long/2addr v0, v6

    .line 192
    iget-object v2, p0, Lcom/sec/factory/app/ui/UINFC;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 193
    return-void
.end method

.method private updateDisplay(ILjava/lang/String;I)V
    .registers 5
    .parameter "id"
    .parameter "result"
    .parameter "textColor"

    .prologue
    .line 196
    const v0, 0x7f0900e4

    if-ne p1, v0, :cond_10

    .line 197
    sget-object v0, Lcom/sec/factory/app/ui/UINFC;->mCardModeResult:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    sget-object v0, Lcom/sec/factory/app/ui/UINFC;->mCardModeResult:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    :cond_f
    :goto_f
    return-void

    .line 199
    :cond_10
    const v0, 0x7f0900e5

    if-ne p1, v0, :cond_f

    .line 200
    sget-object v0, Lcom/sec/factory/app/ui/UINFC;->mReaderModeResult:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    sget-object v0, Lcom/sec/factory/app/ui/UINFC;->mReaderModeResult:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v1, 0x7f030020

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UINFC;->setContentView(I)V

    .line 123
    const v1, 0x7f0900e4

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UINFC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/sec/factory/app/ui/UINFC;->mCardModeResult:Landroid/widget/TextView;

    .line 124
    const v1, 0x7f0900e5

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UINFC;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/sec/factory/app/ui/UINFC;->mReaderModeResult:Landroid/widget/TextView;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "com.sec.android.app.nfctest.NFC_CHECK_SIM_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/sec/factory/app/ui/UINFC;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/app/ui/UINFC;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 164
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UINFC;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 144
    const-string v0, "UINFC"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.nfctest.NFC_TEST_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UINFC;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    const-wide/16 v0, 0x64

    :try_start_2e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_3c

    .line 158
    :goto_31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.nfctest.NFC_DISCOVERY_DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UINFC;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    return-void

    .line 157
    :catch_3c
    move-exception v0

    goto :goto_31
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 134
    const-string v0, "UINFC"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.nfctest.NFC_TEST_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UINFC;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    const-string v0, "DFMS_LIST"

    const-string v1, "onCreate---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UINFC;->nfctest()V

    .line 140
    return-void
.end method
