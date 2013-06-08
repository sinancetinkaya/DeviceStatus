.class public Lcom/sec/factory/app/ui/UIWirelessCharge;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIWirelessCharge.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSpeakResultText:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mstatus:Ljava/lang/String;

.field private prev_nvupdate:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 32
    const-string v0, "UIWirelessCharge"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 23
    const-string v0, "UIWirelessCharge"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->TAG:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mTimer:Ljava/util/Timer;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mHandler:Landroid/os/Handler;

    .line 27
    iput-object v2, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mRunnable:Ljava/lang/Runnable;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->prev_nvupdate:I

    .line 33
    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UIWirelessCharge;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIWirelessCharge;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mstatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/factory/app/ui/UIWirelessCharge;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mstatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIWirelessCharge;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mSpeakResultText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UIWirelessCharge;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->prev_nvupdate:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/factory/app/ui/UIWirelessCharge;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->prev_nvupdate:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UIWirelessCharge;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public finishOperation()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 90
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mRunnable:Ljava/lang/Runnable;

    .line 94
    :cond_12
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1b

    .line 95
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 97
    :cond_1b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIWirelessCharge;->setContentView(I)V

    .line 40
    const v0, 0x7f09020e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIWirelessCharge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mSpeakResultText:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->CLASS_NAME:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mstatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mTimer:Ljava/util/Timer;

    .line 44
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessCharge;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/ui/UIWirelessCharge$1;-><init>(Lcom/sec/factory/app/ui/UIWirelessCharge;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIWirelessCharge;->finishOperation()V

    .line 84
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 86
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 78
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIWirelessCharge;->finishOperation()V

    .line 79
    return-void
.end method
