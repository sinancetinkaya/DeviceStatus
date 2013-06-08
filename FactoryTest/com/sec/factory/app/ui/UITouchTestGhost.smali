.class public Lcom/sec/factory/app/ui/UITouchTestGhost;
.super Landroid/app/Activity;
.source "UITouchTestGhost.java"


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field protected KEY_TIMEOUT:I

.field protected KEY_TIMER_EXPIRED:I

.field protected MILLIS_IN_SEC:I

.field private mCurrentTime:J

.field private mHandler:Landroid/os/Handler;

.field private mIsPressedBackkey:Z

.field protected mTimerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const-string v0, "UITouchTestGhost"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->CLASS_NAME:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->mIsPressedBackkey:Z

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->mCurrentTime:J

    .line 28
    new-instance v0, Lcom/sec/factory/app/ui/UITouchTestGhost$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UITouchTestGhost$1;-><init>(Lcom/sec/factory/app/ui/UITouchTestGhost;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/sec/factory/app/ui/UITouchTestGhost$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UITouchTestGhost$2;-><init>(Lcom/sec/factory/app/ui/UITouchTestGhost;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->mTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UITouchTestGhost;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->mIsPressedBackkey:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v0, "UITouchTestGhost"

    const-string v1, "onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UITouchTestGhost;->requestWindowFeature(I)Z

    .line 41
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITouchTestGhost;->setContentView(I)V

    .line 43
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->MILLIS_IN_SEC:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->KEY_TIMEOUT:I

    .line 46
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITouchTestGhost;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 47
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITouchTestGhost;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITouchTestGhost;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 49
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITouchTestGhost;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 52
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 58
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6a

    .line 59
    const-string v1, "UITouchTestGhost"

    const-string v2, "onKeyDown"

    const-string v3, "This is back key"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-boolean v1, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->mIsPressedBackkey:Z

    if-nez v1, :cond_22

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 62
    .local v0, rightNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->mCurrentTime:J

    .line 63
    iput-boolean v8, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->mIsPressedBackkey:Z

    .line 64
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITouchTestGhost;->startTimer()V

    .line 84
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_21
    :goto_21
    return v8

    .line 66
    :cond_22
    iput-boolean v7, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->mIsPressedBackkey:Z

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    .restart local v0       #rightNow:Ljava/util/Calendar;
    const-string v1, "UITouchTestGhost"

    const-string v2, "onKeyDown"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYCODE_BACK => rightNow.getTimeInMillis() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mCurrentTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->mCurrentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->mCurrentTime:J

    iget v5, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->KEY_TIMEOUT:I

    iget v6, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->MILLIS_IN_SEC:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_21

    .line 72
    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UITouchTestGhost;->setResult(I)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITouchTestGhost;->finish()V

    goto :goto_21

    .line 77
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_6a
    const/16 v1, 0x19

    if-ne p1, v1, :cond_21

    const-string v1, "tablet"

    const-string v2, "DEVICE_TYPE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 80
    const-string v1, "UITouchTestGhost"

    const-string v2, "onKeyDown"

    const-string v3, "This is volume down_key"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITouchTestGhost;->finish()V

    goto :goto_21
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->mTimerHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->KEY_TIMER_EXPIRED:I

    iget v2, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->KEY_TIMEOUT:I

    iget v3, p0, Lcom/sec/factory/app/ui/UITouchTestGhost;->MILLIS_IN_SEC:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    return-void
.end method
