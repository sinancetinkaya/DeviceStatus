.class public Lcom/sec/factory/app/ui/UISpenTypeTest;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UISpenTypeTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;
    }
.end annotation


# instance fields
.field protected KEY_TIMEOUT:I

.field protected KEY_TIMER_EXPIRED:I

.field protected MILLIS_IN_SEC:I

.field private mActiveType:I

.field private mCommentText:Landroid/widget/TextView;

.field private mCurrentTime:J

.field private mHandler:Landroid/os/Handler;

.field private mIsPressedBackkey:Z

.field private mIsTestDone:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mMASK_PEN_ERASER_BUTTON:I

.field private mOldHoveringSetting:I

.field private mResultText:Landroid/widget/TextView;

.field private mTestCase:Ljava/lang/String;

.field protected mTimerHandler:Landroid/os/Handler;

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x1a

    const/4 v1, 0x0

    .line 68
    const-string v0, "UISpenTypeTest"

    invoke-direct {p0, v0, v2}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mHandler:Landroid/os/Handler;

    .line 41
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mIsTestDone:Z

    .line 46
    iput v1, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mMASK_PEN_ERASER_BUTTON:I

    .line 54
    iput v1, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mActiveType:I

    .line 57
    iput v1, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mOldHoveringSetting:I

    .line 60
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mIsPressedBackkey:Z

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mCurrentTime:J

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->KEY_TIMER_EXPIRED:I

    .line 63
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->MILLIS_IN_SEC:I

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->KEY_TIMEOUT:I

    .line 65
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mTestCase:Ljava/lang/String;

    .line 186
    new-instance v0, Lcom/sec/factory/app/ui/UISpenTypeTest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UISpenTypeTest$1;-><init>(Lcom/sec/factory/app/ui/UISpenTypeTest;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mTimerHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UISpenTypeTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mIsPressedBackkey:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UISpenTypeTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mActiveType:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UISpenTypeTest;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UISpenTypeTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mResultText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UISpenTypeTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mIsTestDone:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UISpenTypeTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->onFinish()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UISpenTypeTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addButtonTestView()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 102
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_45

    .line 103
    const-string v2, "UISpenTypeTest"

    const-string v3, "addButtonTestView"

    const-string v4, "already added ButtonTestView"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 105
    const-string v2, "UISpenTypeTest"

    const-string v3, "addButtonTestView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChildCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_44
    return-void

    .line 109
    :cond_45
    const-string v2, "UISpenTypeTest"

    const-string v3, "addButtonTestView"

    const-string v4, "add ButtonTestView"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;

    invoke-direct {v0, p0, p0}, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;-><init>(Lcom/sec/factory/app/ui/UISpenTypeTest;Landroid/content/Context;)V

    .line 112
    .local v0, eventListenerView:Landroid/view/View;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 113
    .local v1, paint:Landroid/graphics/Paint;
    const/16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 120
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 121
    const-string v2, "UISpenTypeTest"

    const-string v3, "addButtonTestView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChildCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44
.end method

.method private onFinish()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 196
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mIsTestDone:Z

    .line 198
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mOldHoveringSetting:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mActiveType:I

    if-nez v0, :cond_3f

    .line 200
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mTestCase:Ljava/lang/String;

    const-string v1, "STYLE_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    :goto_23
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    const-string v1, "RemoteCall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->startActivity(Landroid/content/Intent;)V

    .line 215
    :cond_30
    :goto_30
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mMASK_PEN_ERASER_BUTTON:I

    .line 216
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->finish()V

    .line 217
    return-void

    .line 205
    :cond_37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_23

    .line 211
    :cond_3f
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mActiveType:I

    if-ne v0, v3, :cond_30

    .line 213
    const/16 v0, 0x1c

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UISpenTypeTest;->setTestResult(BB)V

    goto :goto_30
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "disable_pen_gesture"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 78
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03002d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 79
    .local v2, layout:Landroid/widget/FrameLayout;
    iput-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    .line 80
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->addButtonTestView()V

    .line 81
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UISpenTypeTest;->setContentView(Landroid/view/View;)V

    .line 83
    const v3, 0x7f0901e6

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UISpenTypeTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 84
    const v3, 0x7f0901e8

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UISpenTypeTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mResultText:Landroid/widget/TextView;

    .line 85
    const v3, 0x7f0901e7

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UISpenTypeTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mCommentText:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, i:Landroid/content/Intent;
    const-string v3, "TYPE"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mActiveType:I

    .line 90
    const-string v3, "UISpenTypeTest"

    const-string v4, "OnCteate()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent TYPE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mActiveType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mActiveType:I

    if-ne v3, v8, :cond_7c

    .line 93
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mCommentText:Landroid/widget/TextView;

    const v4, 0x7f0700b1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 96
    :cond_7c
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mOldHoveringSetting:I

    .line 97
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 139
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 142
    :cond_9
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 143
    return-void
.end method

.method public onExit()V
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->setResult(I)V

    .line 179
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->finish()V

    .line 180
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 158
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3f

    .line 159
    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mIsPressedBackkey:Z

    if-nez v2, :cond_18

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 161
    .local v0, rightNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mCurrentTime:J

    .line 162
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mIsPressedBackkey:Z

    .line 163
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->startTimer()V

    .line 174
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_17
    :goto_17
    return v1

    .line 165
    :cond_18
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mIsPressedBackkey:Z

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 167
    .restart local v0       #rightNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mCurrentTime:J

    iget v6, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->KEY_TIMEOUT:I

    iget v7, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->MILLIS_IN_SEC:I

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_17

    .line 168
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mOldHoveringSetting:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->onExit()V

    goto :goto_17

    .line 174
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_3f
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_17
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_pen_gesture"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 128
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 133
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 148
    const-string v0, "UISpenTypeTest"

    const-string v1, "onTouchEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMetaState()=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "UISpenTypeTest"

    const-string v1, "onTouchEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getToolType(0)=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->addButtonTestView()V

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->mTimerHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->KEY_TIMER_EXPIRED:I

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->KEY_TIMEOUT:I

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenTypeTest;->MILLIS_IN_SEC:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    return-void
.end method
