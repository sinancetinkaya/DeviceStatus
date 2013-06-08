.class public Lcom/sec/factory/app/ui/UISpenHoveringTest;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UISpenHoveringTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;
    }
.end annotation


# instance fields
.field protected KEY_TIMEOUT:I

.field protected KEY_TIMER_EXPIRED:I

.field protected MILLIS_IN_SEC:I

.field private mCurrentTime:J

.field private mHoverView:Landroid/view/View;

.field private mIsCounting:Z

.field private mIsPass:Z

.field private mIsPressedBackkey:Z

.field private mIsWacom:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mOldHoveringSetting:I

.field private mResultText:Landroid/widget/TextView;

.field protected mTimerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    const-string v0, "UISpenHoveringTest"

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsCounting:Z

    .line 39
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPass:Z

    .line 41
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPressedBackkey:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mCurrentTime:J

    .line 43
    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->KEY_TIMER_EXPIRED:I

    .line 44
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->MILLIS_IN_SEC:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->KEY_TIMEOUT:I

    .line 46
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsWacom:Z

    .line 48
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mOldHoveringSetting:I

    .line 418
    new-instance v0, Lcom/sec/factory/app/ui/UISpenHoveringTest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$1;-><init>(Lcom/sec/factory/app/ui/UISpenHoveringTest;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mTimerHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UISpenHoveringTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsWacom:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UISpenHoveringTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPass:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/factory/app/ui/UISpenHoveringTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPass:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UISpenHoveringTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsCounting:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/factory/app/ui/UISpenHoveringTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsCounting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UISpenHoveringTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPressedBackkey:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/factory/app/ui/UISpenHoveringTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPressedBackkey:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UISpenHoveringTest;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sec/factory/app/ui/UISpenHoveringTest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mCurrentTime:J

    return-wide p1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 454
    const-string v0, "SpenHoveringTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult :: requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v0, -0x1

    if-ne p2, v0, :cond_29

    .line 456
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->onFinish()V

    .line 461
    :goto_28
    return-void

    .line 458
    :cond_29
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->onExit()V

    goto :goto_28
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance v0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    invoke-direct {v0, p0, p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;-><init>(Lcom/sec/factory/app/ui/UISpenHoveringTest;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mHoverView:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mHoverView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mHoverView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mHoverView:Landroid/view/View;

    check-cast v0, Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 68
    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 69
    const v0, 0x7f0901e5

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mResultText:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mOldHoveringSetting:I

    .line 74
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mOldHoveringSetting:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 97
    return-void
.end method

.method public onExit()V
    .registers 3

    .prologue
    .line 432
    const-string v0, "SpenHoveringTest"

    const-string v1, "Result Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->finish()V

    .line 435
    return-void
.end method

.method public onFinish()V
    .registers 3

    .prologue
    .line 438
    const-string v0, "SpenHoveringTest"

    const-string v1, "Result Pass"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/16 v0, 0x1b

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->setTestResult(BB)V

    .line 449
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->finish()V

    .line 450
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 83
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 91
    return-void
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mTimerHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->KEY_TIMER_EXPIRED:I

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->KEY_TIMEOUT:I

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->MILLIS_IN_SEC:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 429
    return-void
.end method
