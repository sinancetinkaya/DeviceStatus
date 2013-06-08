.class public Lcom/sec/factory/app/ui/UISpenAccuracyTest;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UISpenAccuracyTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;
    }
.end annotation


# instance fields
.field private BOTTOM_MARGIN:I

.field private HEIGHT_BASIS:I

.field protected KEY_TIMEOUT:I

.field protected KEY_TIMER_EXPIRED:I

.field private LEFT_MARGIN:I

.field protected MILLIS_IN_SEC:I

.field private RIGHT_MARGIN:I

.field private SIZE_RECT:I

.field private TOP_MARGIN:I

.field private WIDTH_BASIS:I

.field private click:[[Z

.field private draw:[[Z

.field private isDrawArea:[[Z

.field private mBottommostOfMatrix:I

.field private mCenterOfHorizontalOfMatrix:I

.field private mCenterOfVerticalOfMatrix:I

.field private mCurrentTime:J

.field private mIsPressedBackkey:Z

.field private mIsWacom:Z

.field private mLeftmostOfMatrix:I

.field private mOldHoveringSetting:I

.field private mRightmostOfMatrix:I

.field protected mTimerHandler:Landroid/os/Handler;

.field private mTopmostOfMatrix:I

.field private passFlag:I

.field private remoteCall:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 87
    const-string v0, "UISpenAccuracyTest"

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 48
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->passFlag:I

    .line 50
    const/16 v0, 0x34

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    .line 51
    const/16 v0, 0x21

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    .line 52
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->SIZE_RECT:I

    .line 54
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->remoteCall:Z

    .line 57
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->BOTTOM_MARGIN:I

    .line 58
    iput v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I

    .line 59
    iput v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I

    .line 60
    iput v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->RIGHT_MARGIN:I

    .line 70
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mTopmostOfMatrix:I

    .line 71
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mBottommostOfMatrix:I

    .line 72
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mCenterOfVerticalOfMatrix:I

    .line 73
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mLeftmostOfMatrix:I

    .line 74
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mRightmostOfMatrix:I

    .line 75
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mCenterOfHorizontalOfMatrix:I

    .line 77
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mIsPressedBackkey:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mCurrentTime:J

    .line 79
    iput v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->KEY_TIMER_EXPIRED:I

    .line 80
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->MILLIS_IN_SEC:I

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->KEY_TIMEOUT:I

    .line 83
    iput-boolean v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mIsWacom:Z

    .line 84
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mOldHoveringSetting:I

    .line 309
    new-instance v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$1;-><init>(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mTimerHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UISpenAccuracyTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mIsPressedBackkey:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->isDeadZoneModels()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->isDrawArea:[[Z

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->isPass()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->passFlag:I

    return v0
.end method

.method static synthetic access$1208(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->passFlag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->passFlag:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->finishEpentest()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->remoteCall:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->BOTTOM_MARGIN:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/factory/app/ui/UISpenAccuracyTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->BOTTOM_MARGIN:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/factory/app/ui/UISpenAccuracyTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->TOP_MARGIN:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/factory/app/ui/UISpenAccuracyTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->LEFT_MARGIN:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->RIGHT_MARGIN:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/factory/app/ui/UISpenAccuracyTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->RIGHT_MARGIN:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mIsWacom:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->draw:[[Z

    return-object v0
.end method

.method private decideRemote()V
    .registers 4

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 165
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RemoteCall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->remoteCall:Z

    .line 166
    return-void
.end method

.method private fillUpMatrix()V
    .registers 5

    .prologue
    .line 169
    const/4 v1, 0x0

    .local v1, row:I
    :goto_1
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    if-ge v1, v2, :cond_25

    .line 170
    const/4 v0, 0x0

    .local v0, column:I
    :goto_6
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    if-ge v0, v2, :cond_22

    .line 171
    invoke-direct {p0, v1, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->isNeededCheck(II)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 172
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->isDrawArea:[[Z

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 170
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 174
    :cond_1a
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->isDrawArea:[[Z

    aget-object v2, v2, v1

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    goto :goto_17

    .line 169
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    .end local v0           #column:I
    :cond_25
    return-void
.end method

.method private finishEpentest()V
    .registers 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mOldHoveringSetting:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->startActivity(Landroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->finish()V

    .line 207
    return-void
.end method

.method private initGridSettings()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 152
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->click:[[Z

    .line 153
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->draw:[[Z

    .line 154
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->isDrawArea:[[Z

    .line 155
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mTopmostOfMatrix:I

    .line 156
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mBottommostOfMatrix:I

    .line 157
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mCenterOfVerticalOfMatrix:I

    .line 158
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mLeftmostOfMatrix:I

    .line 159
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mRightmostOfMatrix:I

    .line 160
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mCenterOfHorizontalOfMatrix:I

    .line 161
    return-void
.end method

.method private isDeadZoneModels()Z
    .registers 5

    .prologue
    .line 137
    const-string v2, "ro.product.model"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, model:Ljava/lang/String;
    const/4 v1, 0x0

    .line 139
    .local v1, result:Z
    const-string v2, "N7100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "N7105"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "N7102"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "N7108"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "E250K"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "E250S"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "E250L"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "I605"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "L900"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "R950"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "I317"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "T889"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "Sailor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "SC-02E"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 145
    :cond_79
    const/4 v1, 0x1

    .line 148
    :cond_7a
    return v1
.end method

.method private isNeededCheck(II)Z
    .registers 4
    .parameter "row"
    .parameter "column"

    .prologue
    .line 181
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mTopmostOfMatrix:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mBottommostOfMatrix:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mLeftmostOfMatrix:I

    if-eq p2, v0, :cond_10

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mRightmostOfMatrix:I

    if-ne p2, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isPass()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 191
    const/4 v1, 0x1

    .line 192
    .local v1, isPass:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    if-ge v0, v4, :cond_27

    .line 193
    const/4 v2, 0x0

    .local v2, j:I
    :goto_8
    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    if-ge v2, v4, :cond_24

    .line 194
    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->isDrawArea:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    if-ne v4, v3, :cond_1f

    .line 195
    if-eqz v1, :cond_22

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->draw:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_22

    move v1, v3

    .line 193
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 195
    :cond_22
    const/4 v1, 0x0

    goto :goto_1f

    .line 192
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 198
    .end local v2           #j:I
    :cond_27
    return v1
.end method

.method private setGridSizebyModel()V
    .registers 9

    .prologue
    .line 109
    const-string v5, "ro.product.model"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, model:Ljava/lang/String;
    const-string v5, "I9220"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, "I9220"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 111
    :cond_18
    const/16 v5, 0x1a

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    .line 112
    const/16 v5, 0x10

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    .line 133
    :goto_20
    return-void

    .line 113
    :cond_21
    const-string v5, "I9103"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 114
    const/16 v5, 0x12

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    .line 115
    const/16 v5, 0xc

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    goto :goto_20

    .line 116
    :cond_32
    const-string v5, "N8000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    const-string v5, "N8010"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    const-string v5, "N8013"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    const-string v5, "M480W"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    const-string v5, "M480S"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    const-string v5, "M480K"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 119
    :cond_62
    const/16 v5, 0x34

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    .line 120
    const/16 v5, 0x21

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    goto :goto_20

    .line 124
    :cond_6b
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 125
    .local v2, nScreenWidth:I
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 127
    .local v1, nScreenHeight:I
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 128
    .local v4, r:Landroid/content/res/Resources;
    const/4 v5, 0x5

    iget v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->SIZE_RECT:I

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 130
    .local v3, pxsize:F
    int-to-float v5, v2

    div-float/2addr v5, v3

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->WIDTH_BASIS:I

    .line 131
    int-to-float v5, v1

    div-float/2addr v5, v3

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->HEIGHT_BASIS:I

    goto/16 :goto_20
.end method

.method private turnOffRotationFix()V
    .registers 3

    .prologue
    .line 250
    const-string v0, "SpenAccuracyTest"

    const-string v1, "Return S-Pen Rotation to normal setting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v0, "/sys/class/sec/sec_epen/epen_rotation"

    const-string v1, "200"

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private turnOnRotationFix()V
    .registers 3

    .prologue
    .line 245
    const-string v0, "SpenAccuracyTest"

    const-string v1, "Fix S-Pen Rotation to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v0, "/sys/class/sec/sec_epen/epen_rotation"

    const-string v1, "100"

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "filepath"
    .parameter "value"

    .prologue
    .line 274
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v4, outputFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_15

    .line 277
    const-string v5, "SpenAccuracyTest"

    const-string v6, "File does not exist: Create New File"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :try_start_12
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_2c

    .line 287
    :cond_15
    :goto_15
    const/4 v2, 0x0

    .line 289
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_16
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_74
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_42

    .line 290
    .end local v2           #fw:Ljava/io/FileWriter;
    .local v3, fw:Ljava/io/FileWriter;
    :try_start_1b
    invoke-virtual {v3, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 291
    const-string v5, "SpenAccuracyTest"

    const-string v6, "Write Success!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_84
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_87

    .line 295
    if-eqz v3, :cond_8a

    .line 297
    :try_start_27
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_38

    move-object v2, v3

    .line 303
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :cond_2b
    :goto_2b
    return-void

    .line 280
    .end local v2           #fw:Ljava/io/FileWriter;
    :catch_2c
    move-exception v1

    .line 281
    .local v1, e1:Ljava/io/IOException;
    const-string v5, "SpenAccuracyTest"

    const-string v6, "outputFile IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 298
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_38
    move-exception v0

    .line 299
    .local v0, e:Ljava/io/IOException;
    const-string v5, "SpenAccuracyTest"

    const-string v6, "IOException: close()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 300
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_2b

    .line 292
    .end local v0           #e:Ljava/io/IOException;
    :catch_42
    move-exception v0

    .line 293
    .restart local v0       #e:Ljava/io/IOException;
    :goto_43
    :try_start_43
    const-string v5, "SpenAccuracyTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOExceptionfilepath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_43 .. :try_end_65} :catchall_74

    .line 295
    if-eqz v2, :cond_2b

    .line 297
    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_2b

    .line 298
    :catch_6b
    move-exception v0

    .line 299
    const-string v5, "SpenAccuracyTest"

    const-string v6, "IOException: close()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 295
    .end local v0           #e:Ljava/io/IOException;
    :catchall_74
    move-exception v5

    :goto_75
    if-eqz v2, :cond_7a

    .line 297
    :try_start_77
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 300
    :cond_7a
    :goto_7a
    throw v5

    .line 298
    :catch_7b
    move-exception v0

    .line 299
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "SpenAccuracyTest"

    const-string v7, "IOException: close()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 295
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catchall_84
    move-exception v5

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_75

    .line 292
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_87
    move-exception v0

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_43

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :cond_8a
    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_2b
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->finish()V

    .line 307
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->decideRemote()V

    .line 93
    const-string v0, "SpenAccuracyTest"

    const-string v1, "TouchTest is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->setGridSizebyModel()V

    .line 96
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->initGridSettings()V

    .line 97
    new-instance v0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;

    invoke-direct {v0, p0, p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest$MyView;-><init>(Lcom/sec/factory/app/ui/UISpenAccuracyTest;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->setContentView(Landroid/view/View;)V

    .line 98
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 99
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->fillUpMatrix()V

    .line 103
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mOldHoveringSetting:I

    .line 104
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    return-void
.end method

.method public onExit()V
    .registers 3

    .prologue
    .line 239
    const-string v0, "Sensing"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->setResult(I)V

    .line 241
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->finish()V

    .line 242
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 211
    const/16 v2, 0x19

    if-eq p1, v2, :cond_9

    const/16 v2, 0x18

    if-ne p1, v2, :cond_11

    .line 212
    :cond_9
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->finish()V

    .line 235
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_10
    :goto_10
    return v1

    .line 213
    :cond_11
    const/4 v2, 0x3

    if-eq p1, v2, :cond_10

    .line 215
    const/4 v2, 0x4

    if-ne p1, v2, :cond_81

    .line 216
    const-string v2, "SpenAccuracyTest"

    const-string v3, "This is back_key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mIsPressedBackkey:Z

    if-nez v2, :cond_32

    .line 218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 219
    .local v0, rightNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mCurrentTime:J

    .line 220
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mIsPressedBackkey:Z

    .line 221
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->startTimer()V

    goto :goto_10

    .line 223
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_32
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mIsPressedBackkey:Z

    .line 224
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 225
    .restart local v0       #rightNow:Ljava/util/Calendar;
    const-string v2, "SpenAccuracyTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rightNow.getTimeInMillis() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mCurrentTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mCurrentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mCurrentTime:J

    iget v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->KEY_TIMEOUT:I

    iget v7, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->MILLIS_IN_SEC:I

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_10

    .line 228
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mOldHoveringSetting:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->onExit()V

    goto :goto_10

    .line 234
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_81
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_10
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->turnOffRotationFix()V

    .line 260
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 261
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->turnOnRotationFix()V

    .line 269
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 270
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 271
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onStop()V

    .line 187
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->finish()V

    .line 188
    return-void
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mTimerHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->KEY_TIMER_EXPIRED:I

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->KEY_TIMEOUT:I

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->MILLIS_IN_SEC:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 325
    return-void
.end method
