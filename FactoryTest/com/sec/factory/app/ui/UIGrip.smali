.class public Lcom/sec/factory/app/ui/UIGrip;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIGrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UIGrip$TestItem;
    }
.end annotation


# instance fields
.field private final DELAY_EXIT:I

.field private DUMMY:I

.field private FLAG_EXIT:Z

.field private final TESTITEM_ID_GRIP1:I

.field private final TESTITEM_ID_GRIP2:I

.field private final TESTITEM_ID_GRIP3:I

.field private final TESTITEM_STATUS_FINISH:I

.field private final TESTITEM_STATUS_RELEASE:I

.field private final TESTITEM_STATUS_WORKING:I

.field private final WHAT_EXIT:I

.field private mCurrValue:F

.field private mHandler:Landroid/os/Handler;

.field private mLinearBackground:Landroid/widget/LinearLayout;

.field private mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

.field private mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

.field private mPrevValue:F

.field private mTableGrip1:Landroid/widget/TableLayout;

.field private mTableGrip2:Landroid/widget/TableLayout;

.field private mTableGrip3:Landroid/widget/TableLayout;

.field private mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

.field private mTestListIndex:I

.field private mTextGrip1Step1Result:Landroid/widget/TextView;

.field private mTextGrip1Step2:Landroid/widget/TextView;

.field private mTextGrip1Step2Result:Landroid/widget/TextView;

.field private mTextGrip2Step1Result:Landroid/widget/TextView;

.field private mTextGrip2Step2:Landroid/widget/TextView;

.field private mTextGrip2Step2Result:Landroid/widget/TextView;

.field private mTextGrip3Step1Result:Landroid/widget/TextView;

.field private mTextGrip3Step2:Landroid/widget/TextView;

.field private mTextGrip3Step2Result:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x4080

    .line 82
    const-string v0, "UIGrip"

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 59
    iput v3, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    .line 60
    iget v0, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_ID_GRIP1:I

    .line 61
    iget v0, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_ID_GRIP2:I

    .line 62
    iget v0, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_ID_GRIP3:I

    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_RELEASE:I

    .line 65
    iget v0, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_WORKING:I

    .line 66
    iget v0, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_FINISH:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    .line 69
    iput v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    .line 74
    iput v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mPrevValue:F

    .line 75
    iput v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    .line 77
    sget v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_MAX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIGrip;->WHAT_EXIT:I

    .line 78
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UIGrip;->DELAY_EXIT:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIGrip;->FLAG_EXIT:Z

    .line 121
    new-instance v0, Lcom/sec/factory/app/ui/UIGrip$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIGrip$1;-><init>(Lcom/sec/factory/app/ui/UIGrip;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIGrip;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_RELEASE:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIGrip;)[Lcom/sec/factory/app/ui/UIGrip$TestItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIGrip;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGrip;->startTest()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UIGrip;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/sec/factory/app/ui/UIGrip;->WHAT_EXIT:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UIGrip;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGrip;->exit()V

    return-void
.end method

.method private exit()V
    .registers 4

    .prologue
    .line 372
    const/4 v1, 0x1

    .line 373
    .local v1, isPass:Z
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    array-length v2, v2

    if-lez v2, :cond_27

    .line 374
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 375
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mIsPass:Z

    if-nez v2, :cond_24

    .line 376
    const/4 v1, 0x0

    .line 384
    .end local v0           #i:I
    :cond_19
    :goto_19
    if-eqz v1, :cond_29

    .line 385
    const/16 v2, 0x50

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UIGrip;->setTestResult(B)V

    .line 389
    :goto_20
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIGrip;->finish()V

    .line 390
    return-void

    .line 374
    .restart local v0       #i:I
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 381
    .end local v0           #i:I
    :cond_27
    const/4 v1, 0x0

    goto :goto_19

    .line 387
    :cond_29
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UIGrip;->setTestResultFailCase(B)V

    goto :goto_20
.end method

.method private initialize()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 137
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "initialize"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/16 v3, 0x22

    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    .local v0, count_Grip:I
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "initialize"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count_Grip : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-lez v0, :cond_111

    .line 144
    new-array v3, v0, [Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    .line 145
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    new-array v4, v8, [I

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    aput v5, v4, v7

    iget-object v5, p0, Lcom/sec/factory/app/ui/UIGrip;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([ILandroid/os/Handler;I)V

    .line 153
    const v3, 0x7f09008b

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mLinearBackground:Landroid/widget/LinearLayout;

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, index_List:I
    if-gt v8, v0, :cond_11d

    .line 157
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index_List:I
    .local v2, index_List:I
    new-instance v4, Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v5, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_ID_GRIP1:I

    invoke-direct {v4, p0, v5}, Lcom/sec/factory/app/ui/UIGrip$TestItem;-><init>(Lcom/sec/factory/app/ui/UIGrip;I)V

    aput-object v4, v3, v1

    .line 158
    const v3, 0x7f090090

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableLayout;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTableGrip1:Landroid/widget/TableLayout;

    .line 159
    const v3, 0x7f090091

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step1Result:Landroid/widget/TextView;

    .line 160
    const v3, 0x7f090092

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step2:Landroid/widget/TextView;

    .line 161
    const v3, 0x7f090093

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step2Result:Landroid/widget/TextView;

    .line 163
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTableGrip1:Landroid/widget/TableLayout;

    invoke-virtual {v3, v7}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 165
    :goto_97
    const/4 v3, 0x2

    if-gt v3, v0, :cond_d4

    .line 166
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index_List:I
    .restart local v1       #index_List:I
    new-instance v4, Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v5, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_ID_GRIP2:I

    invoke-direct {v4, p0, v5}, Lcom/sec/factory/app/ui/UIGrip$TestItem;-><init>(Lcom/sec/factory/app/ui/UIGrip;I)V

    aput-object v4, v3, v2

    .line 167
    const v3, 0x7f090094

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableLayout;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTableGrip2:Landroid/widget/TableLayout;

    .line 168
    const v3, 0x7f090095

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step1Result:Landroid/widget/TextView;

    .line 169
    const v3, 0x7f090096

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step2:Landroid/widget/TextView;

    .line 170
    const v3, 0x7f090097

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step2Result:Landroid/widget/TextView;

    move v2, v1

    .line 172
    .end local v1           #index_List:I
    .restart local v2       #index_List:I
    :cond_d4
    const/4 v3, 0x3

    if-gt v3, v0, :cond_11b

    .line 173
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index_List:I
    .restart local v1       #index_List:I
    new-instance v4, Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v5, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_ID_GRIP3:I

    invoke-direct {v4, p0, v5}, Lcom/sec/factory/app/ui/UIGrip$TestItem;-><init>(Lcom/sec/factory/app/ui/UIGrip;I)V

    aput-object v4, v3, v2

    .line 174
    const v3, 0x7f090098

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableLayout;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTableGrip3:Landroid/widget/TableLayout;

    .line 175
    const v3, 0x7f090099

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step1Result:Landroid/widget/TextView;

    .line 176
    const v3, 0x7f09009a

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step2:Landroid/widget/TextView;

    .line 177
    const v3, 0x7f09009b

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step2Result:Landroid/widget/TextView;

    .line 179
    .end local v1           #index_List:I
    :goto_110
    return-void

    .line 149
    :cond_111
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGrip;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGrip;->WHAT_EXIT:I

    const-wide/16 v5, 0x5dc

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_110

    .restart local v2       #index_List:I
    :cond_11b
    move v1, v2

    .end local v2           #index_List:I
    .restart local v1       #index_List:I
    goto :goto_110

    :cond_11d
    move v2, v1

    .end local v1           #index_List:I
    .restart local v2       #index_List:I
    goto/16 :goto_97
.end method

.method private setRelease()V
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 363
    return-void
.end method

.method private setWorking()V
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->startVibrate()V

    .line 369
    return-void
.end method

.method private startTest()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/high16 v6, -0x1

    const v4, -0xffff01

    const/high16 v3, 0x3f80

    const/4 v5, 0x0

    .line 185
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mID:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_ID_GRIP1:I

    if-ne v1, v2, :cond_146

    .line 186
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, temp:[Ljava/lang/String;
    if-eqz v0, :cond_104

    .line 188
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iput-object v0, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mValue:[Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_RELEASE:I

    if-ne v1, v2, :cond_a8

    .line 192
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mValue:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    .line 193
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_6c

    .line 194
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGrip;->setWorking()V

    .line 195
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step1Result:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step1Result:Landroid/widget/TextView;

    const-string v2, "Pass"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step1Result:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_WORKING:I

    iput v2, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    .line 200
    :cond_6c
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mPrevValue:F

    .line 339
    .end local v0           #temp:[Ljava/lang/String;
    :cond_70
    :goto_70
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_FINISH:I

    if-ne v1, v2, :cond_a7

    .line 340
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mPrevValue:F

    .line 341
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    .line 342
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGrip;->setRelease()V

    .line 345
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_36b

    .line 346
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    .line 347
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mID:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_ID_GRIP2:I

    if-ne v1, v2, :cond_358

    .line 348
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTableGrip2:Landroid/widget/TableLayout;

    invoke-virtual {v1, v5}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 358
    :cond_a7
    :goto_a7
    return-void

    .line 201
    .restart local v0       #temp:[Ljava/lang/String;
    :cond_a8
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_WORKING:I

    if-ne v1, v2, :cond_70

    .line 204
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mValue:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    .line 205
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mPrevValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_fe

    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_fe

    .line 207
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step2Result:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step2Result:Landroid/widget/TextView;

    const-string v2, "Pass"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step2Result:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_FINISH:I

    iput v2, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    .line 212
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iput-boolean v7, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mIsPass:Z

    .line 214
    :cond_fe
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mPrevValue:F

    goto/16 :goto_70

    .line 217
    :cond_104
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_RELEASE:I

    if-ne v1, v2, :cond_70

    .line 220
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step1Result:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step1Result:Landroid/widget/TextView;

    const-string v2, "Fail"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step1Result:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step2Result:Landroid/widget/TextView;

    const-string v2, "Fail"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip1Step2Result:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iput-boolean v5, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mIsPass:Z

    .line 229
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_FINISH:I

    iput v2, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    goto/16 :goto_70

    .line 236
    .end local v0           #temp:[Ljava/lang/String;
    :cond_146
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mID:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_ID_GRIP2:I

    if-ne v1, v2, :cond_24f

    .line 237
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 238
    .restart local v0       #temp:[Ljava/lang/String;
    if-eqz v0, :cond_20d

    .line 239
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iput-object v0, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mValue:[Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_RELEASE:I

    if-ne v1, v2, :cond_1b0

    .line 243
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mValue:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    .line 244
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1aa

    .line 245
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGrip;->setWorking()V

    .line 246
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step1Result:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step1Result:Landroid/widget/TextView;

    const-string v2, "Pass"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step1Result:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_WORKING:I

    iput v2, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    .line 251
    :cond_1aa
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mPrevValue:F

    goto/16 :goto_70

    .line 252
    :cond_1b0
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_WORKING:I

    if-ne v1, v2, :cond_70

    .line 255
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mValue:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    .line 256
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mPrevValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_207

    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_207

    .line 258
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step2Result:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step2Result:Landroid/widget/TextView;

    const-string v2, "Pass"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step2Result:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_FINISH:I

    iput v2, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    .line 263
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iput-boolean v7, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mIsPass:Z

    .line 265
    :cond_207
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mPrevValue:F

    goto/16 :goto_70

    .line 268
    :cond_20d
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_RELEASE:I

    if-ne v1, v2, :cond_70

    .line 271
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step1Result:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step1Result:Landroid/widget/TextView;

    const-string v2, "Fail"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step1Result:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step2Result:Landroid/widget/TextView;

    const-string v2, "Fail"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip2Step2Result:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iput-boolean v5, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mIsPass:Z

    .line 280
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_FINISH:I

    iput v2, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    goto/16 :goto_70

    .line 287
    .end local v0           #temp:[Ljava/lang/String;
    :cond_24f
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mID:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_ID_GRIP3:I

    if-ne v1, v2, :cond_70

    .line 288
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 289
    .restart local v0       #temp:[Ljava/lang/String;
    if-eqz v0, :cond_316

    .line 290
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iput-object v0, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mValue:[Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_RELEASE:I

    if-ne v1, v2, :cond_2b9

    .line 294
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mValue:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    .line 295
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2b3

    .line 296
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGrip;->setWorking()V

    .line 297
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step1Result:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step1Result:Landroid/widget/TextView;

    const-string v2, "Pass"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step1Result:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_WORKING:I

    iput v2, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    .line 302
    :cond_2b3
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mPrevValue:F

    goto/16 :goto_70

    .line 303
    :cond_2b9
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_WORKING:I

    if-ne v1, v2, :cond_70

    .line 306
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mValue:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    .line 307
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mPrevValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_310

    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_310

    .line 309
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step2Result:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step2Result:Landroid/widget/TextView;

    const-string v2, "Pass"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step2Result:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_FINISH:I

    iput v2, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    .line 314
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iput-boolean v7, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mIsPass:Z

    .line 316
    :cond_310
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mCurrValue:F

    iput v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mPrevValue:F

    goto/16 :goto_70

    .line 319
    :cond_316
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_RELEASE:I

    if-ne v1, v2, :cond_70

    .line 322
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step1Result:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step1Result:Landroid/widget/TextView;

    const-string v2, "Fail"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step1Result:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step2Result:Landroid/widget/TextView;

    const-string v2, "Fail"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTextGrip3Step2Result:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iput-boolean v5, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mIsPass:Z

    .line 331
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_FINISH:I

    iput v2, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    goto/16 :goto_70

    .line 349
    .end local v0           #temp:[Ljava/lang/String;
    :cond_358
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mID:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_ID_GRIP3:I

    if-ne v1, v2, :cond_a7

    .line 350
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTableGrip3:Landroid/widget/TableLayout;

    invoke-virtual {v1, v5}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto/16 :goto_a7

    .line 351
    :cond_36b
    iget v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestListIndex:I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGrip;->mTestList:[Lcom/sec/factory/app/ui/UIGrip$TestItem;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_a7

    .line 352
    iget-boolean v1, p0, Lcom/sec/factory/app/ui/UIGrip;->FLAG_EXIT:Z

    if-eqz v1, :cond_a7

    .line 353
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGrip;->WHAT_EXIT:I

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 354
    iput-boolean v5, p0, Lcom/sec/factory/app/ui/UIGrip;->FLAG_EXIT:Z

    goto/16 :goto_a7
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIGrip;->setContentView(I)V

    .line 88
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleSensor;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleSensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    .line 89
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 119
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 104
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 105
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-nez v0, :cond_17

    .line 106
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIGrip;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 107
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 109
    :cond_17
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->requestGripSensorOn(Z)V

    .line 112
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGrip;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff_Intent(I)V

    .line 114
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 115
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 95
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGrip;->initialize()V

    .line 96
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-nez v0, :cond_1a

    .line 97
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIGrip;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 98
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 100
    :cond_1a
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGrip;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->requestGripSensorOn(Z)V

    .line 101
    return-void
.end method
