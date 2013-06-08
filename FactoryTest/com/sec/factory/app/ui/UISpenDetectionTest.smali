.class public Lcom/sec/factory/app/ui/UISpenDetectionTest;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UISpenDetectionTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UISpenDetectionTest$ReleaseStatus;,
        Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus;,
        Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;,
        Lcom/sec/factory/app/ui/UISpenDetectionTest$StartState;,
        Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    }
.end annotation


# instance fields
.field protected KEY_TIMEOUT:I

.field protected KEY_TIMER_EXPIRED:I

.field protected MILLIS_IN_SEC:I

.field SpenDetectionReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentTime:J

.field private mIsPressedBackkey:Z

.field private mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

.field private mState:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

.field private mTextViewPreRelease:Landroid/widget/TextView;

.field private mTextViewRelease:Landroid/widget/TextView;

.field private mTextViewReleaseFail:Landroid/widget/TextView;

.field private mTextViewReleasePass:Landroid/widget/TextView;

.field private mTextViewWorking:Landroid/widget/TextView;

.field private mTextViewWorkingFail:Landroid/widget/TextView;

.field private mTextViewWorkingPass:Landroid/widget/TextView;

.field private statePreRelase:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

.field private stateRelase:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

.field private stateStart:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

.field private stateWorking:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 68
    const-string v0, "UISpenDetectionTest"

    const/16 v1, 0x29

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mIsPressedBackkey:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mCurrentTime:J

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->KEY_TIMER_EXPIRED:I

    .line 36
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->MILLIS_IN_SEC:I

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->KEY_TIMEOUT:I

    .line 57
    new-instance v0, Lcom/sec/factory/app/ui/UISpenDetectionTest$StartState;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UISpenDetectionTest$StartState;-><init>(Lcom/sec/factory/app/ui/UISpenDetectionTest;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->stateStart:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    .line 58
    new-instance v0, Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;-><init>(Lcom/sec/factory/app/ui/UISpenDetectionTest;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->statePreRelase:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    .line 59
    new-instance v0, Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus;-><init>(Lcom/sec/factory/app/ui/UISpenDetectionTest;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->stateWorking:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    .line 60
    new-instance v0, Lcom/sec/factory/app/ui/UISpenDetectionTest$ReleaseStatus;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UISpenDetectionTest$ReleaseStatus;-><init>(Lcom/sec/factory/app/ui/UISpenDetectionTest;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->stateRelase:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    .line 62
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->stateStart:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mState:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mState:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UISpenDetectionTest;Lcom/sec/factory/app/ui/UISpenDetectionTest$State;)Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mState:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewPreRelease:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->statePreRelase:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewWorking:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewWorkingPass:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/modules/ModuleDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->stateWorking:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewRelease:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewReleasePass:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->stateRelase:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    return-object v0
.end method

.method private isSpenReleased()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 202
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "isSpenReleased"

    const-string v6, ""

    invoke-static {v2, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/16 v0, 0xd

    .line 205
    .local v0, SW_PEN_INSERT:I
    const/4 v1, 0x0

    .line 215
    .local v1, sw:I
    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "isSpenReleased"

    if-lez v1, :cond_1f

    move v2, v3

    :goto_15
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    if-lez v1, :cond_21

    :goto_1e
    return v3

    :cond_1f
    move v2, v4

    .line 215
    goto :goto_15

    :cond_21
    move v3, v4

    .line 216
    goto :goto_1e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onCreate"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->setContentView(I)V

    .line 78
    const v1, 0x7f0901dd

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewPreRelease:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0901de

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewWorking:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0901df

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewWorkingPass:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0901e0

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewWorkingFail:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0901e1

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewRelease:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0901e2

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewReleasePass:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0901e3

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewReleaseFail:Landroid/widget/TextView;

    .line 87
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    .line 90
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->stateStart:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mState:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    .line 92
    new-instance v1, Lcom/sec/factory/app/ui/UISpenDetectionTest$1;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/ui/UISpenDetectionTest$1;-><init>(Lcom/sec/factory/app/ui/UISpenDetectionTest;)V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->SpenDetectionReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->SpenDetectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onCreate"

    const-string v3, "registerReceiver"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onDestroy"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->SpenDetectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 146
    return-void
.end method

.method public onExit()V
    .registers 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onExit"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->finish()V

    .line 192
    return-void
.end method

.method public onFinish()V
    .registers 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onFinish"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/16 v0, 0x29

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->setTestResult(BB)V

    .line 197
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->finish()V

    .line 198
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 151
    packed-switch p1, :pswitch_data_76

    .line 182
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_8
    :goto_8
    return v1

    .line 153
    :pswitch_9
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onKeyDown"

    const-string v4, "KEYCODE_HOME"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 157
    :pswitch_13
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onKeyDown"

    const-string v4, "KEYCODE_BACK"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mIsPressedBackkey:Z

    if-nez v2, :cond_30

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 160
    .local v0, rightNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mCurrentTime:J

    .line 161
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mIsPressedBackkey:Z

    .line 162
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->startTimer()V

    goto :goto_8

    .line 164
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_30
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mIsPressedBackkey:Z

    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 166
    .restart local v0       #rightNow:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "UISpenDetectionTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rightNow.getTimeInMillis() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mCurrentTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mCurrentTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mCurrentTime:J

    iget v6, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->KEY_TIMEOUT:I

    iget v7, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->MILLIS_IN_SEC:I

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_8

    .line 170
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->onExit()V

    goto :goto_8

    .line 151
    :pswitch_data_76
    .packed-switch 0x3
        :pswitch_9
        :pswitch_13
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onPause"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 129
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onResume"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 136
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->isSpenReleased()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 137
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mState:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    invoke-interface {v0}, Lcom/sec/factory/app/ui/UISpenDetectionTest$State;->released()V

    .line 139
    :cond_17
    return-void
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTimerHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->KEY_TIMER_EXPIRED:I

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->KEY_TIMEOUT:I

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->MILLIS_IN_SEC:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    return-void
.end method
