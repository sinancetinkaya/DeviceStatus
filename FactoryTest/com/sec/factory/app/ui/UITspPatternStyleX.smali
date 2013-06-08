.class public Lcom/sec/factory/app/ui/UITspPatternStyleX;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UITspPatternStyleX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;
    }
.end annotation


# instance fields
.field private HEIGHT_BASIS:I

.field private HEIGHT_BASIS_CROSS:I

.field protected KEY_TIMEOUT:I

.field protected KEY_TIMER_EXPIRED:I

.field protected MILLIS_IN_SEC:I

.field private WIDTH_BASIS:I

.field private WIDTH_BASIS_CROSS:I

.field private click:[[Z

.field private dialog_showing:Z

.field private draw:[[Z

.field private drawCross:[Z

.field private isDrawArea:[[Z

.field private mBottommostOfMatrix:I

.field private mCenterOfHorizontalOfMatrix:I

.field private mCenterOfVerticalOfMatrix:I

.field private mCurrentTime:J

.field private mIsPressedBackkey:Z

.field private mLeftmostOfMatrix:I

.field private mRightmostOfMatrix:I

.field protected mTimerHandler:Landroid/os/Handler;

.field private mTopmostOfMatrix:I

.field private needFailPopupDispaly:Z

.field private remoteCall:Z

.field private successTest:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/16 v4, 0x13

    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 78
    const-string v0, "UITspPatternStyleX"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 50
    iput v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    .line 51
    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    .line 52
    iput v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS_CROSS:I

    .line 53
    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS_CROSS:I

    .line 54
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->remoteCall:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->successTest:Z

    .line 56
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->needFailPopupDispaly:Z

    .line 70
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mIsPressedBackkey:Z

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mCurrentTime:J

    .line 75
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->dialog_showing:Z

    .line 197
    new-instance v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX$1;-><init>(Lcom/sec/factory/app/ui/UITspPatternStyleX;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mTimerHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UITspPatternStyleX;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mIsPressedBackkey:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/factory/app/ui/UITspPatternStyleX;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->isPassCross()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/factory/app/ui/UITspPatternStyleX;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->successTest:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/factory/app/ui/UITspPatternStyleX;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->successTest:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/factory/app/ui/UITspPatternStyleX;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->remoteCall:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UITspPatternStyleX;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS_CROSS:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UITspPatternStyleX;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->dialog_showing:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/factory/app/ui/UITspPatternStyleX;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->dialog_showing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->draw:[[Z

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->click:[[Z

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->drawCross:[Z

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UITspPatternStyleX;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->isDrawArea:[[Z

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/factory/app/ui/UITspPatternStyleX;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->isPass()Z

    move-result v0

    return v0
.end method

.method private decideRemote()V
    .registers 4

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 225
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RemoteCall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->remoteCall:Z

    .line 226
    return-void
.end method

.method private fillUpMatrix()V
    .registers 5

    .prologue
    .line 229
    const/4 v1, 0x0

    .local v1, row:I
    :goto_1
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    if-ge v1, v2, :cond_25

    .line 230
    const/4 v0, 0x0

    .local v0, column:I
    :goto_6
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    if-ge v0, v2, :cond_22

    .line 231
    invoke-direct {p0, v1, v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->isNeededCheck(II)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 232
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->isDrawArea:[[Z

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 230
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 234
    :cond_1a
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->isDrawArea:[[Z

    aget-object v2, v2, v1

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    goto :goto_17

    .line 229
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    .end local v0           #column:I
    :cond_25
    return-void
.end method

.method private isNeededCheck(II)Z
    .registers 4
    .parameter "row"
    .parameter "column"

    .prologue
    .line 241
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mTopmostOfMatrix:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mBottommostOfMatrix:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mLeftmostOfMatrix:I

    if-eq p2, v0, :cond_10

    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mRightmostOfMatrix:I

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

    .line 246
    const/4 v1, 0x1

    .line 248
    .local v1, isPass:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    if-ge v0, v4, :cond_27

    .line 249
    const/4 v2, 0x0

    .local v2, j:I
    :goto_8
    iget v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    if-ge v2, v4, :cond_24

    .line 250
    iget-object v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->isDrawArea:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    if-ne v4, v3, :cond_1f

    .line 251
    if-eqz v1, :cond_22

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->draw:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_22

    move v1, v3

    .line 249
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 251
    :cond_22
    const/4 v1, 0x0

    goto :goto_1f

    .line 248
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 254
    .end local v2           #j:I
    :cond_27
    return v1
.end method

.method private isPassCross()Z
    .registers 4

    .prologue
    .line 258
    const/4 v1, 0x1

    .line 260
    .local v1, isPassCross:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS_CROSS:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_16

    .line 261
    if-eqz v1, :cond_14

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->drawCross:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    .line 260
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 261
    :cond_14
    const/4 v1, 0x0

    goto :goto_11

    .line 263
    :cond_16
    return v1
.end method

.method private setTSP()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 82
    const-string v0, "TSP_X_AXIS_CHANNEL"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    .line 83
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    if-gez v0, :cond_39

    .line 84
    const-string v0, "IS_TSP_STANDARD"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 85
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSP"

    const-string v2, "Read> ModuleTouchScreen"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleTouchScreen;

    move-result-object v0

    sget v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_ON:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    .line 87
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleTouchScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    .line 96
    :cond_39
    :goto_39
    const-string v0, "TSP_Y_AXIS_CHANNEL"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    .line 97
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    if-gez v0, :cond_71

    .line 98
    const-string v0, "IS_TSP_STANDARD"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 99
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSP"

    const-string v2, "Read> ModuleTouchScreen"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleTouchScreen;

    move-result-object v0

    sget v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_ON:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    .line 101
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleTouchScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    .line 110
    :cond_71
    :goto_71
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    add-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS_CROSS:I

    .line 111
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS_CROSS:I

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS_CROSS:I

    .line 112
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    iget v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->click:[[Z

    .line 113
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    iget v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->draw:[[Z

    .line 114
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    iget v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->isDrawArea:[[Z

    .line 116
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS_CROSS:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->drawCross:[Z

    .line 117
    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mTopmostOfMatrix:I

    .line 118
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mBottommostOfMatrix:I

    .line 119
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mCenterOfVerticalOfMatrix:I

    .line 120
    iput v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mLeftmostOfMatrix:I

    .line 121
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mRightmostOfMatrix:I

    .line 122
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mCenterOfHorizontalOfMatrix:I

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->KEY_TIMER_EXPIRED:I

    .line 124
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->MILLIS_IN_SEC:I

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->KEY_TIMEOUT:I

    .line 126
    return-void

    .line 90
    :cond_e2
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSP"

    const-string v2, "Read> ModuleDevice"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    const-string v1, "module_on_master"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    const-string v1, "get_x_num"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->WIDTH_BASIS:I

    goto/16 :goto_39

    .line 104
    :cond_10a
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSP"

    const-string v2, "Read> ModuleDevice"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    const-string v1, "module_on_master"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    const-string v1, "get_y_num"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->HEIGHT_BASIS:I

    goto/16 :goto_71
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onActivityResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/16 v0, 0xa

    if-ne p1, v0, :cond_41

    .line 213
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onActivityResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-nez p2, :cond_41

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->setResult(I)V

    .line 217
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->finish()V

    .line 220
    :cond_41
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 221
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 129
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 133
    :try_start_b
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onCreate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEST_TSP_SELF = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TEST_TSP_SELF"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TEST_TSP_SELF"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_43

    .line 136
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->successTest:Z

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->needFailPopupDispaly:Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_43} :catch_5e

    .line 142
    :cond_43
    :goto_43
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->setTSP()V

    .line 143
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->decideRemote()V

    .line 144
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onCreate"

    const-string v3, "TouchTest is created"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v1, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;

    invoke-direct {v1, p0, p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;-><init>(Lcom/sec/factory/app/ui/UITspPatternStyleX;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->setContentView(Landroid/view/View;)V

    .line 148
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->fillUpMatrix()V

    .line 149
    return-void

    .line 139
    :catch_5e
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onCreate"

    const-string v3, "Exception"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 167
    const/16 v1, 0x18

    if-ne p1, v1, :cond_25

    .line 168
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onKeyDown"

    const-string v3, "This is Vol up_key"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->isPass()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->isPassCross()Z

    move-result v1

    if-nez v1, :cond_20

    .line 170
    :cond_1a
    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->setResult(I)V

    .line 171
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->finish()V

    .line 194
    :cond_20
    :goto_20
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 173
    :cond_25
    const/4 v1, 0x4

    if-ne p1, v1, :cond_20

    .line 174
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onKeyDown"

    const-string v3, "This is back_key"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-boolean v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mIsPressedBackkey:Z

    if-nez v1, :cond_46

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 177
    .local v0, rightNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mCurrentTime:J

    .line 178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mIsPressedBackkey:Z

    .line 179
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->startTimer()V

    goto :goto_20

    .line 181
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_46
    iput-boolean v7, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mIsPressedBackkey:Z

    .line 182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 183
    .restart local v0       #rightNow:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

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

    iget-wide v4, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mCurrentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mCurrentTime:J

    iget v5, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->KEY_TIMEOUT:I

    iget v6, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->MILLIS_IN_SEC:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_20

    .line 187
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->isPass()Z

    move-result v1

    if-nez v1, :cond_20

    .line 188
    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->setResult(I)V

    .line 189
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->finish()V

    goto :goto_20
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 154
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onResume"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->successTest:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->needFailPopupDispaly:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UITspFail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->needFailPopupDispaly:Z

    .line 162
    :cond_23
    return-void
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->mTimerHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->KEY_TIMER_EXPIRED:I

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->KEY_TIMEOUT:I

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->MILLIS_IN_SEC:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 208
    return-void
.end method
