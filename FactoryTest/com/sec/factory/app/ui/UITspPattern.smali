.class public Lcom/sec/factory/app/ui/UITspPattern;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UITspPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UITspPattern$MyView;
    }
.end annotation


# instance fields
.field private HEIGHT_BASIS:I

.field protected KEY_TIMEOUT:I

.field protected KEY_TIMER_EXPIRED:I

.field protected MILLIS_IN_SEC:I

.field private final REQUEST_GHOST_TEST:I

.field private WIDTH_BASIS:I

.field private click:[[Z

.field private dialog_showing:Z

.field private draw:[[Z

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
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 62
    const-string v0, "UITspPattern"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 35
    const/16 v0, 0x13

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    .line 36
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    .line 37
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->remoteCall:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->successTest:Z

    .line 39
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->needFailPopupDispaly:Z

    .line 56
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->mIsPressedBackkey:Z

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mCurrentTime:J

    .line 58
    iput v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->REQUEST_GHOST_TEST:I

    .line 59
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->dialog_showing:Z

    .line 184
    new-instance v0, Lcom/sec/factory/app/ui/UITspPattern$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UITspPattern$1;-><init>(Lcom/sec/factory/app/ui/UITspPattern;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mTimerHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private ResultLog()V
    .registers 7

    .prologue
    .line 253
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    if-ge v0, v2, :cond_4d

    .line 254
    const/4 v1, 0x0

    .local v1, j:I
    :goto_6
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    if-ge v1, v2, :cond_4a

    .line 255
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->isDrawArea:[[Z

    aget-object v2, v2, v0

    aget-boolean v2, v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_47

    .line 256
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "ResultLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDrawArea["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UITspPattern;->isDrawArea:[[Z

    aget-object v5, v5, v0

    aget-boolean v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 253
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    .end local v1           #j:I
    :cond_4d
    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UITspPattern;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UITspPattern;->mIsPressedBackkey:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UITspPattern;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->dialog_showing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/factory/app/ui/UITspPattern;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UITspPattern;->dialog_showing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UITspPattern;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UITspPattern;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UITspPattern;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->draw:[[Z

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UITspPattern;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->click:[[Z

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UITspPattern;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->isDrawArea:[[Z

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UITspPattern;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPattern;->isPass()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UITspPattern;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->successTest:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/factory/app/ui/UITspPattern;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UITspPattern;->successTest:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/factory/app/ui/UITspPattern;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->remoteCall:Z

    return v0
.end method

.method private decideRemote()V
    .registers 4

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 219
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RemoteCall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->remoteCall:Z

    .line 220
    return-void
.end method

.method private fillUpMatrix()V
    .registers 5

    .prologue
    .line 223
    const/4 v1, 0x0

    .local v1, row:I
    :goto_1
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    if-ge v1, v2, :cond_25

    .line 224
    const/4 v0, 0x0

    .local v0, column:I
    :goto_6
    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    if-ge v0, v2, :cond_22

    .line 225
    invoke-direct {p0, v1, v0}, Lcom/sec/factory/app/ui/UITspPattern;->isNeededCheck(II)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 226
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->isDrawArea:[[Z

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 224
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 228
    :cond_1a
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->isDrawArea:[[Z

    aget-object v2, v2, v1

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    goto :goto_17

    .line 223
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    .end local v0           #column:I
    :cond_25
    return-void
.end method

.method private isNeededCheck(II)Z
    .registers 4
    .parameter "row"
    .parameter "column"

    .prologue
    .line 235
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mTopmostOfMatrix:I

    if-eq p1, v0, :cond_18

    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mBottommostOfMatrix:I

    if-eq p1, v0, :cond_18

    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mCenterOfVerticalOfMatrix:I

    if-eq p1, v0, :cond_18

    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mLeftmostOfMatrix:I

    if-eq p2, v0, :cond_18

    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mRightmostOfMatrix:I

    if-eq p2, v0, :cond_18

    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mCenterOfHorizontalOfMatrix:I

    if-ne p2, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isPass()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 241
    const/4 v1, 0x1

    .line 243
    .local v1, isPass:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v4, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    if-ge v0, v4, :cond_27

    .line 244
    const/4 v2, 0x0

    .local v2, j:I
    :goto_8
    iget v4, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    if-ge v2, v4, :cond_24

    .line 245
    iget-object v4, p0, Lcom/sec/factory/app/ui/UITspPattern;->isDrawArea:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    if-ne v4, v3, :cond_1f

    .line 246
    if-eqz v1, :cond_22

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITspPattern;->draw:[[Z

    aget-object v4, v4, v0

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_22

    move v1, v3

    .line 244
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 246
    :cond_22
    const/4 v1, 0x0

    goto :goto_1f

    .line 243
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 249
    .end local v2           #j:I
    :cond_27
    return v1
.end method

.method private setTSP()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 66
    const-string v0, "TSP_X_AXIS_CHANNEL"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    .line 67
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    if-gez v0, :cond_39

    .line 68
    const-string v0, "IS_TSP_STANDARD"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 69
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSP"

    const-string v2, "Read> ModuleTouchScreen"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleTouchScreen;

    move-result-object v0

    sget v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_ON:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    .line 71
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleTouchScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    .line 80
    :cond_39
    :goto_39
    const-string v0, "TSP_Y_AXIS_CHANNEL"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    .line 81
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    if-gez v0, :cond_71

    .line 82
    const-string v0, "IS_TSP_STANDARD"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 83
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSP"

    const-string v2, "Read> ModuleTouchScreen"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleTouchScreen;

    move-result-object v0

    sget v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_ON:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    .line 85
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleTouchScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    .line 94
    :cond_71
    :goto_71
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->click:[[Z

    .line 95
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->draw:[[Z

    .line 96
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->isDrawArea:[[Z

    .line 98
    iput v3, p0, Lcom/sec/factory/app/ui/UITspPattern;->mTopmostOfMatrix:I

    .line 99
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mBottommostOfMatrix:I

    .line 100
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mCenterOfVerticalOfMatrix:I

    .line 101
    iput v3, p0, Lcom/sec/factory/app/ui/UITspPattern;->mLeftmostOfMatrix:I

    .line 102
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mRightmostOfMatrix:I

    .line 103
    iget v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mCenterOfHorizontalOfMatrix:I

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->KEY_TIMER_EXPIRED:I

    .line 105
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->MILLIS_IN_SEC:I

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->KEY_TIMEOUT:I

    .line 107
    return-void

    .line 74
    :cond_ce
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSP"

    const-string v2, "Read> ModuleDevice"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    const-string v1, "module_on_master"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    const-string v1, "get_x_num"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->WIDTH_BASIS:I

    goto/16 :goto_39

    .line 88
    :cond_f6
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSP"

    const-string v2, "Read> ModuleDevice"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    const-string v1, "module_on_master"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    const-string v1, "get_y_num"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->HEIGHT_BASIS:I

    goto/16 :goto_71
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

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

    .line 199
    const/16 v0, 0xa

    if-ne p1, v0, :cond_45

    .line 200
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

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

    .line 201
    if-nez p2, :cond_41

    .line 203
    invoke-virtual {p0, v4}, Lcom/sec/factory/app/ui/UITspPattern;->setResult(I)V

    .line 204
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPattern;->finish()V

    .line 214
    :cond_41
    :goto_41
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 215
    return-void

    .line 206
    :cond_45
    if-nez p1, :cond_41

    .line 207
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

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

    .line 208
    if-nez p2, :cond_41

    .line 209
    invoke-virtual {p0, v4}, Lcom/sec/factory/app/ui/UITspPattern;->setResult(I)V

    .line 211
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPattern;->finish()V

    goto :goto_41
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 110
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPattern;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 114
    :try_start_b
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onCreate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEST_TSP_SELF = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPattern;->getIntent()Landroid/content/Intent;

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

    .line 116
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TEST_TSP_SELF"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_43

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->successTest:Z

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->needFailPopupDispaly:Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_43} :catch_5e

    .line 123
    :cond_43
    :goto_43
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPattern;->setTSP()V

    .line 124
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPattern;->decideRemote()V

    .line 125
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onCreate"

    const-string v3, "TouchTest is created"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/sec/factory/app/ui/UITspPattern$MyView;

    invoke-direct {v1, p0, p0}, Lcom/sec/factory/app/ui/UITspPattern$MyView;-><init>(Lcom/sec/factory/app/ui/UITspPattern;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UITspPattern;->setContentView(Landroid/view/View;)V

    .line 129
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPattern;->fillUpMatrix()V

    .line 130
    return-void

    .line 120
    :catch_5e
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

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

    .line 155
    const/16 v1, 0x18

    if-ne p1, v1, :cond_16

    .line 156
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPattern;->isPass()Z

    move-result v1

    if-nez v1, :cond_11

    .line 157
    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UITspPattern;->setResult(I)V

    .line 158
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPattern;->finish()V

    .line 181
    :cond_11
    :goto_11
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 160
    :cond_16
    const/4 v1, 0x4

    if-ne p1, v1, :cond_11

    .line 161
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onKeyDown"

    const-string v3, "This is back_key"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-boolean v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->mIsPressedBackkey:Z

    if-nez v1, :cond_37

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, rightNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->mCurrentTime:J

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->mIsPressedBackkey:Z

    .line 166
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPattern;->startTimer()V

    goto :goto_11

    .line 168
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_37
    iput-boolean v7, p0, Lcom/sec/factory/app/ui/UITspPattern;->mIsPressedBackkey:Z

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 170
    .restart local v0       #rightNow:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

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

    iget-wide v4, p0, Lcom/sec/factory/app/ui/UITspPattern;->mCurrentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/factory/app/ui/UITspPattern;->mCurrentTime:J

    iget v5, p0, Lcom/sec/factory/app/ui/UITspPattern;->KEY_TIMEOUT:I

    iget v6, p0, Lcom/sec/factory/app/ui/UITspPattern;->MILLIS_IN_SEC:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_11

    .line 174
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPattern;->isPass()Z

    move-result v1

    if-nez v1, :cond_11

    .line 175
    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UITspPattern;->setResult(I)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspPattern;->finish()V

    goto :goto_11
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 148
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspPattern;->ResultLog()V

    .line 149
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 135
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onResume"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->successTest:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->needFailPopupDispaly:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UITspFail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UITspPattern;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->needFailPopupDispaly:Z

    .line 143
    :cond_23
    return-void
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern;->mTimerHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UITspPattern;->KEY_TIMER_EXPIRED:I

    iget v2, p0, Lcom/sec/factory/app/ui/UITspPattern;->KEY_TIMEOUT:I

    iget v3, p0, Lcom/sec/factory/app/ui/UITspPattern;->MILLIS_IN_SEC:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 195
    return-void
.end method
