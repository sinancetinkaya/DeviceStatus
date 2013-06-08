.class public Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIWirelessChargeNFCRead.java"


# instance fields
.field private final MSG_DISABLE_DISCOVERY:B

.field private final MSG_ENABLE_DISCOVERY:B

.field private final MSG_FINISH_TEST:B

.field private final MSG_READ_STATUS_TIMEOUT:B

.field private final NFC_DISABLE_DELAY:I

.field private final NFC_ENABLE_DELAY_OFFSET:I

.field private final NFC_FINISH_STATUS_TIMEOUT_DELAY:I

.field private final NFC_READ_STATUS_TIMEOUT_DELAY:I

.field private NRStatus:Z

.field private TAG:Ljava/lang/String;

.field private WCStatus:Z

.field private mHandler:Landroid/os/Handler;

.field private mNFCResultText:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSpeakResultText:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mstatus:Ljava/lang/String;

.field private prev_nvupdate:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    const-string v0, "UIWirelessChargeNFCRead"

    const/16 v1, 0x27

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 26
    const-string v0, "UIWirelessChargeNFCRead"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->TAG:Ljava/lang/String;

    .line 32
    const/16 v0, 0x2710

    iput v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->NFC_READ_STATUS_TIMEOUT_DELAY:I

    .line 33
    const/16 v0, 0x226

    iput v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->NFC_FINISH_STATUS_TIMEOUT_DELAY:I

    .line 34
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->NFC_DISABLE_DELAY:I

    .line 35
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->NFC_ENABLE_DELAY_OFFSET:I

    .line 36
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->MSG_READ_STATUS_TIMEOUT:B

    .line 37
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->MSG_ENABLE_DISCOVERY:B

    .line 38
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->MSG_DISABLE_DISCOVERY:B

    .line 39
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->MSG_FINISH_TEST:B

    .line 44
    iput-object v3, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mTimer:Ljava/util/Timer;

    .line 45
    new-instance v0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;-><init>(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object v3, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mRunnable:Ljava/lang/Runnable;

    .line 72
    iput v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->prev_nvupdate:I

    .line 75
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->WCStatus:Z

    .line 76
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->NRStatus:Z

    .line 211
    new-instance v0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;-><init>(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mNFCResultText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mstatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mstatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mSpeakResultText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->prev_nvupdate:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->prev_nvupdate:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->WCStatus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->WCStatus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->NRStatus:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->NRStatus:Z

    return p1
.end method

.method private startDiscovery()V
    .registers 5

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 200
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 202
    return-void
.end method

.method private startNFCRead()V
    .registers 5

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->startDiscovery()V

    .line 206
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x2936

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    return-void
.end method


# virtual methods
.method public finishNFCRead()V
    .registers 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->finish()V

    .line 194
    return-void
.end method

.method public finishWirelessCharge()V
    .registers 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->terminateWirelessCharge()V

    .line 165
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->startNFCRead()V

    .line 166
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->setContentView(I)V

    .line 88
    const v0, 0x7f090210

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mSpeakResultText:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f090211

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mNFCResultText:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onCreate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIRELESS_BATTERY"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mstatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v6}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mTimer:Ljava/util/Timer;

    .line 98
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;-><init>(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 127
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 148
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->terminateWirelessCharge()V

    .line 149
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->terminateNFC()V

    .line 150
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 139
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.nfctest.NFC_TEST_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.nfctest.NFC_DISCOVERY_DISABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.nfctest.NFC_TEST_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public terminateNFC()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 169
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4a

    .line 170
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 171
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mRunnable:Ljava/lang/Runnable;

    .line 175
    :cond_16
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 176
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    :cond_23
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 178
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    :cond_30
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 180
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    :cond_3d
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 182
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    :cond_4a
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_53

    .line 186
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 189
    :cond_53
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    return-void
.end method

.method public terminateWirelessCharge()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 154
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mRunnable:Ljava/lang/Runnable;

    .line 158
    :cond_12
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1b

    .line 159
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 161
    :cond_1b
    return-void
.end method
