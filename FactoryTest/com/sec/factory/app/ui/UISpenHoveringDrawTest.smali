.class public Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UISpenHoveringDrawTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$1;,
        Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;,
        Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    }
.end annotation


# instance fields
.field protected KEY_TIMEOUT:I

.field protected KEY_TIMER_EXPIRED:I

.field protected MILLIS_IN_SEC:I

.field private WIDTH_BASIS:I

.field private areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

.field private mCurrentTime:J

.field private mHoverView:Landroid/view/View;

.field private mIsFail:Z

.field private mIsPass:Z

.field private mIsPressedBackkey:Z

.field private mIsTestStart:Z

.field private mIsWacom:Z

.field private nRemainCount:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    const-string v0, "UISpenHoveringDrawTest"

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsPass:Z

    .line 60
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsFail:Z

    .line 61
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsPressedBackkey:Z

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mCurrentTime:J

    .line 63
    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->KEY_TIMER_EXPIRED:I

    .line 64
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->MILLIS_IN_SEC:I

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->KEY_TIMEOUT:I

    .line 66
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsWacom:Z

    .line 68
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I

    .line 70
    iput v3, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->nRemainCount:I

    .line 71
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsTestStart:Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->isDeadZoneModels()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->WIDTH_BASIS:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->nRemainCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->nRemainCount:I

    return p1
.end method

.method static synthetic access$210(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->nRemainCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->nRemainCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;)[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->areaRect:[Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$MyRect;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsWacom:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsFail:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsPass:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsPass:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsTestStart:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mIsTestStart:Z

    return p1
.end method

.method private isDeadZoneModels()Z
    .registers 5

    .prologue
    .line 109
    const-string v2, "ro.product.model"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, model:Ljava/lang/String;
    const/4 v1, 0x0

    .line 111
    .local v1, result:Z
    const-string v2, "N7100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "N7105"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "N7102"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "E250K"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "E250S"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "E250L"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "I317"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "T889"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 115
    :cond_49
    const/4 v1, 0x1

    .line 118
    :cond_4a
    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance v0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;

    invoke-direct {v0, p0, p0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest$HoverView;-><init>(Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mHoverView:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mHoverView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->setContentView(Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mHoverView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;->mHoverView:Landroid/view/View;

    check-cast v0, Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 91
    const-string v0, "UISpenHoveringDrawTest"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 105
    return-void
.end method
