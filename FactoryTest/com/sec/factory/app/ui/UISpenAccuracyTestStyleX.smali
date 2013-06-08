.class public Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UISpenAccuracyTestStyleX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;
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

.field private crossA_Array:[Landroid/graphics/Rect;

.field private crossB_Array:[Landroid/graphics/Rect;

.field private draw:[[Z

.field private draw_CrossA:[Z

.field private draw_CrossB:[Z

.field private isDrawArea:[[Z

.field private mBottommostOfMatrix:I

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

    .line 89
    const-string v0, "UISpenAccuracyTestStyleX"

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 48
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->passFlag:I

    .line 50
    const/16 v0, 0x34

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    .line 51
    const/16 v0, 0x21

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I

    .line 52
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->SIZE_RECT:I

    .line 54
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->remoteCall:Z

    .line 57
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->BOTTOM_MARGIN:I

    .line 58
    iput v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I

    .line 59
    iput v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I

    .line 60
    iput v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->RIGHT_MARGIN:I

    .line 74
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mTopmostOfMatrix:I

    .line 75
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mBottommostOfMatrix:I

    .line 76
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mLeftmostOfMatrix:I

    .line 77
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mRightmostOfMatrix:I

    .line 79
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mIsPressedBackkey:Z

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mCurrentTime:J

    .line 81
    iput v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->KEY_TIMER_EXPIRED:I

    .line 82
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->MILLIS_IN_SEC:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->KEY_TIMEOUT:I

    .line 85
    iput-boolean v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mIsWacom:Z

    .line 86
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mOldHoveringSetting:I

    .line 326
    new-instance v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$1;-><init>(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mTimerHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mIsPressedBackkey:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->isDeadZoneModels()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->isDrawArea:[[Z

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossA:[Z

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossB:[Z

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->isPass()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->passFlag:I

    return v0
.end method

.method static synthetic access$1608(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->passFlag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->passFlag:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->finishEpentest()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->remoteCall:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->BOTTOM_MARGIN:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->BOTTOM_MARGIN:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->TOP_MARGIN:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->LEFT_MARGIN:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->RIGHT_MARGIN:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->RIGHT_MARGIN:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mIsWacom:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)[[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw:[[Z

    return-object v0
.end method

.method private decideRemote()V
    .registers 4

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 170
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RemoteCall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->remoteCall:Z

    .line 171
    return-void
.end method

.method private fillUpMatrix()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 174
    const/4 v2, 0x0

    .local v2, row:I
    :goto_2
    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    if-ge v2, v3, :cond_25

    .line 175
    const/4 v0, 0x0

    .local v0, column:I
    :goto_7
    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I

    if-ge v0, v3, :cond_22

    .line 176
    invoke-direct {p0, v2, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->isNeededCheck(II)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 177
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->isDrawArea:[[Z

    aget-object v3, v3, v2

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    .line 175
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 179
    :cond_1b
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->isDrawArea:[[Z

    aget-object v3, v3, v2

    aput-boolean v5, v3, v0

    goto :goto_18

    .line 174
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 184
    .end local v0           #column:I
    :cond_25
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    add-int/lit8 v3, v3, -0x2

    mul-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_39

    .line 185
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossA:[Z

    aput-boolean v5, v3, v1

    .line 186
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossB:[Z

    aput-boolean v5, v3, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 188
    :cond_39
    return-void
.end method

.method private finishEpentest()V
    .registers 4

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mOldHoveringSetting:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->startActivity(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->finish()V

    .line 224
    return-void
.end method

.method private initGridSettings()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 154
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->click:[[Z

    .line 155
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw:[[Z

    .line 156
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->isDrawArea:[[Z

    .line 157
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mTopmostOfMatrix:I

    .line 158
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mBottommostOfMatrix:I

    .line 159
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mLeftmostOfMatrix:I

    .line 160
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mRightmostOfMatrix:I

    .line 162
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    add-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossA_Array:[Landroid/graphics/Rect;

    .line 163
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    add-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->crossB_Array:[Landroid/graphics/Rect;

    .line 164
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    add-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossA:[Z

    .line 165
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    add-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossB:[Z

    .line 166
    return-void
.end method

.method private isDeadZoneModels()Z
    .registers 5

    .prologue
    .line 139
    const-string v2, "ro.product.model"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, model:Ljava/lang/String;
    const/4 v1, 0x0

    .line 141
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

    .line 147
    :cond_79
    const/4 v1, 0x1

    .line 150
    :cond_7a
    return v1
.end method

.method private isNeededCheck(II)Z
    .registers 4
    .parameter "row"
    .parameter "column"

    .prologue
    .line 191
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mTopmostOfMatrix:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mBottommostOfMatrix:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mLeftmostOfMatrix:I

    if-eq p2, v0, :cond_10

    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mRightmostOfMatrix:I

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
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 201
    const/4 v1, 0x1

    .line 202
    .local v1, isPass:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    if-ge v0, v5, :cond_28

    .line 203
    const/4 v2, 0x0

    .local v2, j:I
    :goto_9
    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I

    if-ge v2, v5, :cond_25

    .line 204
    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->isDrawArea:[[Z

    aget-object v5, v5, v0

    aget-boolean v5, v5, v2

    if-ne v5, v3, :cond_20

    .line 205
    if-eqz v1, :cond_23

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw:[[Z

    aget-object v5, v5, v0

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_23

    move v1, v3

    .line 203
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_23
    move v1, v4

    .line 205
    goto :goto_20

    .line 202
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 210
    .end local v2           #j:I
    :cond_28
    const/4 v0, 0x0

    :goto_29
    iget v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    add-int/lit8 v5, v5, -0x2

    mul-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_4a

    .line 211
    if-eqz v1, :cond_46

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossA:[Z

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_46

    move v1, v3

    .line 212
    :goto_3a
    if-eqz v1, :cond_48

    iget-object v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->draw_CrossB:[Z

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_48

    move v1, v3

    .line 210
    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_46
    move v1, v4

    .line 211
    goto :goto_3a

    :cond_48
    move v1, v4

    .line 212
    goto :goto_43

    .line 215
    :cond_4a
    return v1
.end method

.method private setGridSizebyModel()V
    .registers 9

    .prologue
    .line 111
    const-string v5, "ro.product.model"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, model:Ljava/lang/String;
    const-string v5, "I9220"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, "I9220"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 113
    :cond_18
    const/16 v5, 0x1a

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    .line 114
    const/16 v5, 0x10

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I

    .line 135
    :goto_20
    return-void

    .line 115
    :cond_21
    const-string v5, "I9103"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 116
    const/16 v5, 0x12

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    .line 117
    const/16 v5, 0xc

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I

    goto :goto_20

    .line 118
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

    .line 121
    :cond_62
    const/16 v5, 0x34

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    .line 122
    const/16 v5, 0x21

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I

    goto :goto_20

    .line 126
    :cond_6b
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 127
    .local v2, nScreenWidth:I
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 129
    .local v1, nScreenHeight:I
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 130
    .local v4, r:Landroid/content/res/Resources;
    const/4 v5, 0x5

    iget v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->SIZE_RECT:I

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 132
    .local v3, pxsize:F
    int-to-float v5, v2

    div-float/2addr v5, v3

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->WIDTH_BASIS:I

    .line 133
    int-to-float v5, v1

    div-float/2addr v5, v3

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->HEIGHT_BASIS:I

    goto/16 :goto_20
.end method

.method private turnOffRotationFix()V
    .registers 3

    .prologue
    .line 267
    const-string v0, "UISpenAccuracyTestStyleX"

    const-string v1, "Return S-Pen Rotation to normal setting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v0, "/sys/class/sec/sec_epen/epen_rotation"

    const-string v1, "200"

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private turnOnRotationFix()V
    .registers 3

    .prologue
    .line 262
    const-string v0, "UISpenAccuracyTestStyleX"

    const-string v1, "Fix S-Pen Rotation to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v0, "/sys/class/sec/sec_epen/epen_rotation"

    const-string v1, "100"

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "filepath"
    .parameter "value"

    .prologue
    .line 291
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v4, outputFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_15

    .line 294
    const-string v5, "UISpenAccuracyTestStyleX"

    const-string v6, "File does not exist: Create New File"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :try_start_12
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_2c

    .line 304
    :cond_15
    :goto_15
    const/4 v2, 0x0

    .line 306
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_16
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_74
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_42

    .line 307
    .end local v2           #fw:Ljava/io/FileWriter;
    .local v3, fw:Ljava/io/FileWriter;
    :try_start_1b
    invoke-virtual {v3, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 308
    const-string v5, "UISpenAccuracyTestStyleX"

    const-string v6, "Write Success!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_84
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_87

    .line 312
    if-eqz v3, :cond_8a

    .line 314
    :try_start_27
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_38

    move-object v2, v3

    .line 320
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :cond_2b
    :goto_2b
    return-void

    .line 297
    .end local v2           #fw:Ljava/io/FileWriter;
    :catch_2c
    move-exception v1

    .line 298
    .local v1, e1:Ljava/io/IOException;
    const-string v5, "UISpenAccuracyTestStyleX"

    const-string v6, "outputFile IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 315
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_38
    move-exception v0

    .line 316
    .local v0, e:Ljava/io/IOException;
    const-string v5, "UISpenAccuracyTestStyleX"

    const-string v6, "IOException: close()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 317
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_2b

    .line 309
    .end local v0           #e:Ljava/io/IOException;
    :catch_42
    move-exception v0

    .line 310
    .restart local v0       #e:Ljava/io/IOException;
    :goto_43
    :try_start_43
    const-string v5, "UISpenAccuracyTestStyleX"

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

    .line 312
    if-eqz v2, :cond_2b

    .line 314
    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_2b

    .line 315
    :catch_6b
    move-exception v0

    .line 316
    const-string v5, "UISpenAccuracyTestStyleX"

    const-string v6, "IOException: close()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 312
    .end local v0           #e:Ljava/io/IOException;
    :catchall_74
    move-exception v5

    :goto_75
    if-eqz v2, :cond_7a

    .line 314
    :try_start_77
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 317
    :cond_7a
    :goto_7a
    throw v5

    .line 315
    :catch_7b
    move-exception v0

    .line 316
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "UISpenAccuracyTestStyleX"

    const-string v7, "IOException: close()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 312
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catchall_84
    move-exception v5

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_75

    .line 309
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
    .line 323
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->finish()V

    .line 324
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->decideRemote()V

    .line 95
    const-string v0, "UISpenAccuracyTestStyleX"

    const-string v1, "TouchTest is created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->setGridSizebyModel()V

    .line 98
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->initGridSettings()V

    .line 99
    new-instance v0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;

    invoke-direct {v0, p0, p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$MyView;-><init>(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->setContentView(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 101
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->fillUpMatrix()V

    .line 105
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mOldHoveringSetting:I

    .line 106
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    return-void
.end method

.method public onExit()V
    .registers 3

    .prologue
    .line 256
    const-string v0, "Sensing"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->setResult(I)V

    .line 258
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->finish()V

    .line 259
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 228
    const/16 v2, 0x19

    if-eq p1, v2, :cond_9

    const/16 v2, 0x18

    if-ne p1, v2, :cond_11

    .line 229
    :cond_9
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->finish()V

    .line 252
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_10
    :goto_10
    return v1

    .line 230
    :cond_11
    const/4 v2, 0x3

    if-eq p1, v2, :cond_10

    .line 232
    const/4 v2, 0x4

    if-ne p1, v2, :cond_81

    .line 233
    const-string v2, "UISpenAccuracyTestStyleX"

    const-string v3, "This is back_key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mIsPressedBackkey:Z

    if-nez v2, :cond_32

    .line 235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 236
    .local v0, rightNow:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mCurrentTime:J

    .line 237
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mIsPressedBackkey:Z

    .line 238
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->startTimer()V

    goto :goto_10

    .line 240
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_32
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mIsPressedBackkey:Z

    .line 241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 242
    .restart local v0       #rightNow:Ljava/util/Calendar;
    const-string v2, "UISpenAccuracyTestStyleX"

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

    iget-wide v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mCurrentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mCurrentTime:J

    iget v6, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->KEY_TIMEOUT:I

    iget v7, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->MILLIS_IN_SEC:I

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_10

    .line 245
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    iget v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mOldHoveringSetting:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->onExit()V

    goto :goto_10

    .line 251
    .end local v0           #rightNow:Ljava/util/Calendar;
    :cond_81
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_10
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->turnOffRotationFix()V

    .line 277
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 278
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->turnOnRotationFix()V

    .line 286
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 287
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 288
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onStop()V

    .line 197
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->finish()V

    .line 198
    return-void
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mTimerHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->KEY_TIMER_EXPIRED:I

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->KEY_TIMEOUT:I

    iget v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->MILLIS_IN_SEC:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 342
    return-void
.end method
