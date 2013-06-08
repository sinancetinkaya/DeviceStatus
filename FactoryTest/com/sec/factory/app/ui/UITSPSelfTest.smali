.class public Lcom/sec/factory/app/ui/UITSPSelfTest;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UITSPSelfTest.java"


# instance fields
.field private final INDEX_DISPLAY_ALL_NODE_MIN_MAX:I

.field private final INDEX_DISPLAY_CHIP_NAME:I

.field private final INDEX_DISPLAY_PANEL_FW_VER:I

.field private final INDEX_DISPLAY_PHONE_FW_VER:I

.field private final INDEX_DISPLAY_SCOPE_MAX:I

.field private final INDEX_DISPLAY_VENDOR_NAME:I

.field private final STRING_CHIP:Ljava/lang/String;

.field private final STRING_FW_VER_PANEL:Ljava/lang/String;

.field private final STRING_FW_VER_PHONE:Ljava/lang/String;

.field private final STRING_LOADING:Ljava/lang/String;

.field private final STRING_NODE_MAX:Ljava/lang/String;

.field private final STRING_NODE_MIN:Ljava/lang/String;

.field private final STRING_SPEC:Ljava/lang/String;

.field private final STRING_VENDOR:Ljava/lang/String;

.field private final TSP_RESULT_FAIL:Ljava/lang/String;

.field private final TSP_RESULT_NA:Ljava/lang/String;

.field private final WHAT_TEST_FINISH:I

.field private final WHAT_TEST_START:I

.field private dummy:I

.field private mCurrentIndex:I

.field private mDisplayItem:[Z

.field private mFlagTestFinish:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsPass:Z

.field private mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

.field private mTextViewChipName:Landroid/widget/TextView;

.field private mTextViewFWCheck:Landroid/widget/TextView;

.field private mTextViewFWVerPanel:Landroid/widget/TextView;

.field private mTextViewFWVerPhone:Landroid/widget/TextView;

.field private mTextViewName:Landroid/widget/TextView;

.field private mTextViewRefMax:Landroid/widget/TextView;

.field private mTextViewRefMin:Landroid/widget/TextView;

.field private mTextViewResult:Landroid/widget/TextView;

.field private mTextViewSpec:Landroid/widget/TextView;

.field private mTextViewVendorName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 59
    const-string v0, "UITSPSelfTest"

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;)V

    .line 27
    const-string v0, "Loading..."

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->STRING_LOADING:Ljava/lang/String;

    .line 28
    const-string v0, "Spec "

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->STRING_SPEC:Ljava/lang/String;

    .line 29
    const-string v0, "Min :    "

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->STRING_NODE_MIN:Ljava/lang/String;

    .line 30
    const-string v0, "Max :    "

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->STRING_NODE_MAX:Ljava/lang/String;

    .line 31
    const-string v0, "Phone :    "

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->STRING_FW_VER_PHONE:Ljava/lang/String;

    .line 32
    const-string v0, "Panel :    "

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->STRING_FW_VER_PANEL:Ljava/lang/String;

    .line 33
    const-string v0, "Vendor :    "

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->STRING_VENDOR:Ljava/lang/String;

    .line 34
    const-string v0, "Chip :    "

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->STRING_CHIP:Ljava/lang/String;

    .line 36
    iput v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->dummy:I

    .line 37
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->dummy:I

    iput v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_PHONE_FW_VER:I

    .line 38
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->dummy:I

    iput v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_PANEL_FW_VER:I

    .line 39
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->dummy:I

    iput v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_VENDOR_NAME:I

    .line 40
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->dummy:I

    iput v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_CHIP_NAME:I

    .line 41
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->dummy:I

    iput v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_ALL_NODE_MIN_MAX:I

    .line 42
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->dummy:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_SCOPE_MAX:I

    .line 43
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_SCOPE_MAX:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mDisplayItem:[Z

    .line 44
    iput v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    .line 46
    const-string v0, "FAIL"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->TSP_RESULT_FAIL:Ljava/lang/String;

    .line 47
    const-string v0, "NA"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->TSP_RESULT_NA:Ljava/lang/String;

    .line 49
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_SCOPE_MAX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->WHAT_TEST_START:I

    .line 50
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_SCOPE_MAX:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->WHAT_TEST_FINISH:I

    .line 53
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mFlagTestFinish:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mIsPass:Z

    .line 161
    new-instance v0, Lcom/sec/factory/app/ui/UITSPSelfTest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UITSPSelfTest$1;-><init>(Lcom/sec/factory/app/ui/UITSPSelfTest;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UITSPSelfTest;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UITSPSelfTest;->displayTSPItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$108(Lcom/sec/factory/app/ui/UITSPSelfTest;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UITSPSelfTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->startTSPTest()V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/factory/app/ui/UITSPSelfTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mIsPass:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UITSPSelfTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->WHAT_TEST_START:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UITSPSelfTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->WHAT_TEST_FINISH:I

    return v0
.end method

.method private displayTSPInitialized()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mDisplayItem:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_90

    .line 107
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mDisplayItem:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_35

    .line 108
    iget v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_ALL_NODE_MIN_MAX:I

    if-ne v1, v3, :cond_38

    .line 109
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewSpec:Landroid/widget/TextView;

    const-string v4, "Spec (Loading...~Loading...)"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewSpec:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMin:Landroid/widget/TextView;

    const-string v4, "Min :    Loading..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMin:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMax:Landroid/widget/TextView;

    const-string v4, "Max :    Loading..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMax:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    :cond_38
    iget v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_PHONE_FW_VER:I

    if-ne v1, v3, :cond_4e

    .line 117
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWCheck:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWVerPhone:Landroid/widget/TextView;

    const-string v4, "Phone :    Loading..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWVerPhone:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_35

    .line 120
    :cond_4e
    iget v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_PANEL_FW_VER:I

    if-ne v1, v3, :cond_64

    .line 121
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWCheck:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWVerPanel:Landroid/widget/TextView;

    const-string v4, "Panel :    Loading..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWVerPanel:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_35

    .line 124
    :cond_64
    iget v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_VENDOR_NAME:I

    if-ne v1, v3, :cond_7a

    .line 125
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewVendorName:Landroid/widget/TextView;

    const-string v4, "Vendor :    Loading..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewVendorName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_35

    .line 128
    :cond_7a
    iget v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_CHIP_NAME:I

    if-ne v1, v3, :cond_35

    .line 129
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewChipName:Landroid/widget/TextView;

    const-string v4, "Chip :    Loading..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewChipName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_35

    .line 135
    :cond_90
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewResult:Landroid/widget/TextView;

    const-string v4, "Loading..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getUIRate(Ljava/lang/String;)F

    move-result v2

    .line 139
    .local v2, rate:F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_125

    const/high16 v3, 0x3f80

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_125

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, TYPE:I
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewSpec:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewSpec:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMin:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMin:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 143
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMax:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMax:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 144
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWCheck:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWCheck:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWVerPhone:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWVerPhone:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWVerPanel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWVerPanel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 148
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewVendorName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewVendorName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 149
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewChipName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewChipName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 150
    iget-object v3, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewResult:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewResult:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 152
    .end local v0           #TYPE:I
    :cond_125
    return-void
.end method

.method private displayTSPItem(Ljava/lang/String;)V
    .registers 8
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 213
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "displayTSPItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "NG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 216
    const-string p1, "FAIL"

    .line 217
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "displayTSPItem"

    const-string v3, "FAIL => TSP_RESULT_VALUE_NG"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iput-boolean v5, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mIsPass:Z

    .line 220
    :cond_30
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "displayTSPItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    iget v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_ALL_NODE_MIN_MAX:I

    if-ne v1, v2, :cond_ec

    .line 223
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "displayTSPItem"

    const-string v3, "Display => INDEX_DISPLAY_ALL_NODE_MIN_MAX"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "FAIL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "NA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 226
    :cond_69
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMin:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min :    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMax:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max :    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_99
    :goto_99
    return-void

    .line 229
    :cond_9a
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, result:[Ljava/lang/String;
    aget-object v1, v0, v5

    const-string v2, "NG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 231
    iput-boolean v5, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mIsPass:Z

    .line 232
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "displayTSPItem"

    const-string v3, "FAIL => result[0] : TSP_RESULT_VALUE_NG"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_b5
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMin:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min :    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMax:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max :    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_99

    .line 238
    .end local v0           #result:[Ljava/lang/String;
    :cond_ec
    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    iget v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_PHONE_FW_VER:I

    if-ne v1, v2, :cond_114

    .line 239
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "displayTSPItem"

    const-string v3, "Display => INDEX_DISPLAY_PHONE_FW_VER"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWVerPhone:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone :    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_99

    .line 241
    :cond_114
    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    iget v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_PANEL_FW_VER:I

    if-ne v1, v2, :cond_13d

    .line 242
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "displayTSPItem"

    const-string v3, "Display => INDEX_DISPLAY_PANEL_FW_VER"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWVerPanel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Panel :    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_99

    .line 244
    :cond_13d
    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    iget v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_VENDOR_NAME:I

    if-ne v1, v2, :cond_166

    .line 245
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "displayTSPItem"

    const-string v3, "Display => INDEX_DISPLAY_VENDOR_NAME"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewVendorName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vendor :    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_99

    .line 247
    :cond_166
    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    iget v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_CHIP_NAME:I

    if-ne v1, v2, :cond_99

    .line 248
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "displayTSPItem"

    const-string v3, "Display => INDEX_DISPLAY_CHIP_NAME"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewChipName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chip :    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_99
.end method

.method private displayTSPSpec()V
    .registers 6

    .prologue
    .line 155
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPConnectionSpecMin()I

    move-result v1

    .line 156
    .local v1, connectionSpecMin:I
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPConnectionSpecMax()I

    move-result v0

    .line 157
    .local v0, connectionSpecMax:I
    iget-object v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewSpec:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spec ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method private startTSPTest()V
    .registers 4

    .prologue
    .line 189
    :goto_0
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mDisplayItem:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 190
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mDisplayItem:[Z

    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1a

    .line 193
    :cond_f
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mDisplayItem:[Z

    array-length v1, v1

    if-ne v0, v1, :cond_21

    .line 194
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->testFinish()V

    .line 210
    :cond_19
    :goto_19
    return-void

    .line 189
    :cond_1a
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    goto :goto_0

    .line 197
    :cond_21
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_ALL_NODE_MIN_MAX:I

    if-ne v0, v1, :cond_31

    .line 198
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RESULT_CONNECTION:I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(ILandroid/os/Handler;)V

    goto :goto_19

    .line 200
    :cond_31
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_PHONE_FW_VER:I

    if-ne v0, v1, :cond_41

    .line 201
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_VERSION_BINARY:I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(ILandroid/os/Handler;)V

    goto :goto_19

    .line 203
    :cond_41
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_PANEL_FW_VER:I

    if-ne v0, v1, :cond_51

    .line 204
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_VERSION_IC:I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(ILandroid/os/Handler;)V

    goto :goto_19

    .line 205
    :cond_51
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_VENDOR_NAME:I

    if-ne v0, v1, :cond_61

    .line 206
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__VENDOR_NAME:I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(ILandroid/os/Handler;)V

    goto :goto_19

    .line 207
    :cond_61
    iget v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mCurrentIndex:I

    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_CHIP_NAME:I

    if-ne v0, v1, :cond_19

    .line 208
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CHIP_NAME:I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(ILandroid/os/Handler;)V

    goto :goto_19
.end method

.method private testFinish()V
    .registers 3

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mIsPass:Z

    if-eqz v0, :cond_1e

    .line 255
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewResult:Landroid/widget/TextView;

    const-string v1, "PASS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewResult:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->setResult(I)V

    .line 258
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->finish()V

    .line 264
    :goto_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mFlagTestFinish:Z

    .line 265
    return-void

    .line 260
    :cond_1e
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewResult:Landroid/widget/TextView;

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewResult:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->setResult(I)V

    goto :goto_1a
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->setContentView(I)V

    .line 67
    const v0, 0x7f0901fc

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewSpec:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0901fd

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMin:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0901fe

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewRefMax:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0901ff

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWCheck:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f090200

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWVerPhone:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f090201

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewFWVerPanel:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewName:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f090202

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewVendorName:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f090203

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewChipName:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mTextViewResult:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 80
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleTouchScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    .line 82
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mDisplayItem:[Z

    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_ALL_NODE_MIN_MAX:I

    aput-boolean v2, v0, v1

    .line 83
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mDisplayItem:[Z

    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_PHONE_FW_VER:I

    aput-boolean v2, v0, v1

    .line 84
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mDisplayItem:[Z

    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_PANEL_FW_VER:I

    aput-boolean v2, v0, v1

    .line 85
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mDisplayItem:[Z

    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_VENDOR_NAME:I

    aput-boolean v2, v0, v1

    .line 86
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mDisplayItem:[Z

    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->INDEX_DISPLAY_CHIP_NAME:I

    aput-boolean v2, v0, v1

    .line 88
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->displayTSPInitialized()V

    .line 89
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->displayTSPSpec()V

    .line 92
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->WHAT_TEST_START:I

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onTouchEvent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mFlagTestFinish:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->mIsPass:Z

    if-nez v0, :cond_1c

    .line 99
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSPSelfTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onTouchEvent"

    const-string v2, "Test Fail - finish"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITSPSelfTest;->finish()V

    .line 102
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method
