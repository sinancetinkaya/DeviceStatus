.class public Lcom/sec/factory/app/ui/UIProximityLight;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIProximityLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UIProximityLight$TestItem;
    }
.end annotation


# instance fields
.field private final DELAY_EXIT:I

.field private DUMMY:I

.field private FACTORY_TEST_APP:I

.field private FLAG_EXIT:Z

.field private RANGE_LIGHT_BRIGHT:I

.field private RANGE_LIGHT_DARK:I

.field private RANGE_PROXIMITY_DETECT:I

.field private RANGE_PROXIMITY_RELEASE:I

.field SENSOR_ID_LIGHT_ADC:I

.field SENSOR_ID_LIGHT_LUX:I

.field SENSOR_ID_PROXIMITY:I

.field SENSOR_ID_PROXIMITY_ADC:I

.field SENSOR_ID_PROXIMITY_OFFSET:I

.field private final TESTITEM_ID_LIGHT:I

.field private final TESTITEM_ID_PROXIMITY:I

.field private final TESTITEM_STATUS_FINISH:I

.field private final TESTITEM_STATUS_NONE:I

.field private final TESTITEM_STATUS_OFFSET:I

.field private final TESTITEM_STATUS_PENDING:I

.field private final TESTITEM_STATUS_RELEASE:I

.field private final TESTITEM_STATUS_RELEASE_SECOND:I

.field private final TESTITEM_STATUS_WORKING:I

.field private final WHAT_EXIT:I

.field private mButton_Proximity_Offset:Landroid/widget/Button;

.field private mCurrValue:F

.field private mHandler:Landroid/os/Handler;

.field private final mIsProximityOffsetTest:Z

.field private final mIsTestLight:Z

.field private final mIsTestProximity:Z

.field private mLinearBackground:Landroid/widget/LinearLayout;

.field private mLinear_Proximity_Button:Landroid/widget/LinearLayout;

.field private mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

.field private mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

.field private mPrevValue:F

.field private mProximityOffsetButton:Landroid/view/View$OnClickListener;

.field private mProximityOffsetValue:Ljava/lang/String;

.field private mProximityThresholdValue:Ljava/lang/String;

.field mSenserID:[I

.field private mTableRow1_Dummy1:Landroid/widget/TableRow;

.field private mTableRow1_Light:Landroid/widget/TableRow;

.field private mTableRow1_Proximity:Landroid/widget/TableRow;

.field private mTableRow2_Light:Landroid/widget/TableRow;

.field private mTableRow2_Proximity:Landroid/widget/TableRow;

.field private mTableRow3_Light:Landroid/widget/TableRow;

.field private mTableRow3_Proximity:Landroid/widget/TableRow;

.field private mTableRow4_Light:Landroid/widget/TableRow;

.field private mTableRow4_Proximity:Landroid/widget/TableRow;

.field private mTableRow5_Proximity:Landroid/widget/TableRow;

.field private mTableRow6_Proximity:Landroid/widget/TableRow;

.field private final mTestCase:Ljava/lang/String;

.field private mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

.field private mTestListIndex:I

.field private mText_Dummy_Row1_Col1:Landroid/widget/TextView;

.field private mText_Light_Row1_Col1:Landroid/widget/TextView;

.field private mText_Light_Row1_Col2:Landroid/widget/TextView;

.field private mText_Light_Row1_Col3:Landroid/widget/TextView;

.field private mText_Light_Row2_Col1:Landroid/widget/TextView;

.field private mText_Light_Row2_Col2:Landroid/widget/TextView;

.field private mText_Light_Row2_Col3:Landroid/widget/TextView;

.field private mText_Light_Row3_Col1:Landroid/widget/TextView;

.field private mText_Light_Row3_Col2:Landroid/widget/TextView;

.field private mText_Light_Row3_Col3:Landroid/widget/TextView;

.field private mText_Light_Row4_Col1:Landroid/widget/TextView;

.field private mText_Light_Row4_Col2:Landroid/widget/TextView;

.field private mText_Light_Row4_Col3:Landroid/widget/TextView;

.field private mText_Proximity_Row1_Col1:Landroid/widget/TextView;

.field private mText_Proximity_Row1_Col2:Landroid/widget/TextView;

.field private mText_Proximity_Row1_Col3:Landroid/widget/TextView;

.field private mText_Proximity_Row2_Col1:Landroid/widget/TextView;

.field private mText_Proximity_Row2_Col2:Landroid/widget/TextView;

.field private mText_Proximity_Row2_Col3:Landroid/widget/TextView;

.field private mText_Proximity_Row3_Col1:Landroid/widget/TextView;

.field private mText_Proximity_Row3_Col2:Landroid/widget/TextView;

.field private mText_Proximity_Row3_Col3:Landroid/widget/TextView;

.field private mText_Proximity_Row4_Col1:Landroid/widget/TextView;

.field private mText_Proximity_Row4_Col2:Landroid/widget/TextView;

.field private mText_Proximity_Row4_Col3:Landroid/widget/TextView;

.field private mText_Proximity_Row5_Col1:Landroid/widget/TextView;

.field private mText_Proximity_Row5_Col2:Landroid/widget/TextView;

.field private mText_Proximity_Row5_Col3:Landroid/widget/TextView;

.field private mText_Proximity_Row6_Col1:Landroid/widget/TextView;

.field private mText_Proximity_Row6_Col2:Landroid/widget/TextView;

.field private mText_Proximity_Row6_Col3:Landroid/widget/TextView;

.field private mText_Title:Landroid/widget/TextView;

.field private final mUIRate:F


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/high16 v5, -0x4080

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x11

    .line 144
    const-string v0, "UIProximityLight"

    invoke-direct {p0, v0, v2}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 96
    iput v3, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    .line 97
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_PROXIMITY:I

    .line 98
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_LIGHT:I

    .line 100
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_NONE:I

    .line 101
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_OFFSET:I

    .line 102
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_PENDING:I

    .line 103
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_RELEASE:I

    .line 104
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_RELEASE_SECOND:I

    .line 105
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_WORKING:I

    .line 106
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_FINISH:I

    .line 108
    iput-object v4, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    .line 109
    iput v3, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    .line 110
    iput-object v4, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mSenserID:[I

    .line 111
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MIN:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_PROXIMITY:I

    .line 112
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MIN:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_PROXIMITY_OFFSET:I

    .line 113
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MIN:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_PROXIMITY_ADC:I

    .line 114
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MIN:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_LIGHT_ADC:I

    .line 115
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MIN:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_LIGHT_LUX:I

    .line 120
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getUIRate(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    .line 122
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestCase:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestCase:Ljava/lang/String;

    const-string v1, "PROX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestProximity:Z

    .line 125
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestCase:Ljava/lang/String;

    const-string v1, "PROX_N_OFFSET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsProximityOffsetTest:Z

    .line 126
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestCase:Ljava/lang/String;

    const-string v1, "LIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestLight:Z

    .line 128
    iput v3, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_PROXIMITY_DETECT:I

    .line 129
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_PROXIMITY_RELEASE:I

    .line 130
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_LIGHT_DARK:I

    .line 131
    const/16 v0, 0x96

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_LIGHT_BRIGHT:I

    .line 132
    iput v5, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mPrevValue:F

    .line 133
    iput v5, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    .line 134
    iput-object v4, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mProximityOffsetValue:Ljava/lang/String;

    .line 137
    sget v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_MAX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->WHAT_EXIT:I

    .line 138
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->DELAY_EXIT:I

    .line 139
    iput v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->FACTORY_TEST_APP:I

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->FLAG_EXIT:Z

    .line 183
    new-instance v0, Lcom/sec/factory/app/ui/UIProximityLight$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIProximityLight$1;-><init>(Lcom/sec/factory/app/ui/UIProximityLight;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mHandler:Landroid/os/Handler;

    .line 729
    new-instance v0, Lcom/sec/factory/app/ui/UIProximityLight$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIProximityLight$2;-><init>(Lcom/sec/factory/app/ui/UIProximityLight;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mProximityOffsetButton:Landroid/view/View$OnClickListener;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIProximityLight;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_NONE:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIProximityLight;)[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/factory/app/ui/UIProximityLight;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/factory/app/ui/UIProximityLight;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mProximityThresholdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIProximityLight;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->sensorReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UIProximityLight;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->startTest()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UIProximityLight;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->WHAT_EXIT:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UIProximityLight;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->exit()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UIProximityLight;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UIProximityLight;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_PROXIMITY:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UIProximityLight;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_OFFSET:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/factory/app/ui/UIProximityLight;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mProximityOffsetValue:Ljava/lang/String;

    return-object v0
.end method

.method private converterProximityValue(F)F
    .registers 6
    .parameter

    .prologue
    .line 783
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "converterProximityValue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_23

    .line 788
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_PROXIMITY_DETECT:I

    int-to-float v0, v0

    .line 790
    :goto_22
    return v0

    :cond_23
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_PROXIMITY_RELEASE:I

    int-to-float v0, v0

    goto :goto_22
.end method

.method private exit()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 794
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "exit"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const/4 v2, 0x1

    .line 796
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    array-length v0, v0

    if-lez v0, :cond_21

    move v0, v1

    .line 797
    :goto_14
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    array-length v3, v3

    if-ge v0, v3, :cond_35

    .line 798
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    if-nez v3, :cond_2c

    .line 808
    :cond_21
    :goto_21
    if-eqz v1, :cond_2f

    .line 809
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIProximityLight;->setTestResult(B)V

    .line 813
    :goto_28
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->finish()V

    .line 814
    return-void

    .line 797
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 811
    :cond_2f
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIProximityLight;->setTestResultFailCase(B)V

    goto :goto_28

    :cond_35
    move v1, v2

    goto :goto_21
.end method

.method private initialize()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 204
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "initialize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIsTestProximity : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestProximity:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "initialize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIsProximityOffsetTest : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsProximityOffsetTest:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "initialize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIsTestLight : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestLight:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleSensor;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleSensor;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    .line 208
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    .line 210
    sget v7, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    iput v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_PROXIMITY:I

    .line 211
    sget v7, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_OFFSET:I

    iput v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_PROXIMITY_OFFSET:I

    .line 212
    sget v7, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_ADC:I

    iput v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_PROXIMITY_ADC:I

    .line 214
    sget v7, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_ADC:I

    iput v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_LIGHT_ADC:I

    .line 215
    sget v7, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT:I

    iput v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_LIGHT_LUX:I

    .line 217
    const-string v7, "FACTORY_TEST_APP"

    invoke-static {v7}, Lcom/sec/factory/support/Support$Version;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, factory_test_app_ed:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "initialize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FACTORY_TEST_APP : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->FACTORY_TEST_APP:I

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, countTestItem:I
    const/4 v0, 0x0

    .line 223
    .local v0, countID:I
    iget-boolean v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestProximity:Z

    if-eqz v7, :cond_b0

    .line 224
    add-int/lit8 v1, v1, 0x1

    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 226
    iget-boolean v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsProximityOffsetTest:Z

    if-eqz v7, :cond_b0

    .line 227
    add-int/lit8 v0, v0, 0x2

    .line 229
    :cond_b0
    iget-boolean v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestLight:Z

    if-eqz v7, :cond_b8

    .line 230
    add-int/lit8 v1, v1, 0x1

    .line 231
    add-int/lit8 v0, v0, 0x2

    .line 233
    :cond_b8
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "initialize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "countTestItem : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "initialize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "countID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-lez v1, :cond_38d

    .line 237
    new-array v7, v1, [Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    .line 238
    new-array v7, v0, [I

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mSenserID:[I

    .line 244
    const v7, 0x7f09008b

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mLinearBackground:Landroid/widget/LinearLayout;

    .line 245
    const/4 v5, 0x0

    .line 246
    .local v5, index_List:I
    const/4 v3, 0x0

    .line 248
    .local v3, index_ID:I
    iget-boolean v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestProximity:Z

    if-eqz v7, :cond_280

    .line 249
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #index_List:I
    .local v6, index_List:I
    new-instance v8, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v9, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_PROXIMITY:I

    invoke-direct {v8, p0, v9}, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;-><init>(Lcom/sec/factory/app/ui/UIProximityLight;I)V

    aput-object v8, v7, v5

    .line 250
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mSenserID:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index_ID:I
    .local v4, index_ID:I
    iget v8, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_PROXIMITY:I

    aput v8, v7, v3

    .line 252
    const v7, 0x7f0900fc

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow2_Proximity:Landroid/widget/TableRow;

    .line 253
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow2_Proximity:Landroid/widget/TableRow;

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 254
    const v7, 0x7f0900fd

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row2_Col1:Landroid/widget/TextView;

    .line 255
    const v7, 0x7f0900fe

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row2_Col2:Landroid/widget/TextView;

    .line 256
    const v7, 0x7f0900ff

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row2_Col3:Landroid/widget/TextView;

    .line 258
    const v7, 0x7f090100

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow3_Proximity:Landroid/widget/TableRow;

    .line 259
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow3_Proximity:Landroid/widget/TableRow;

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 260
    const v7, 0x7f090101

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row3_Col1:Landroid/widget/TextView;

    .line 261
    const v7, 0x7f090102

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row3_Col2:Landroid/widget/TextView;

    .line 262
    const v7, 0x7f090103

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row3_Col3:Landroid/widget/TextView;

    .line 264
    const v7, 0x7f090104

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow4_Proximity:Landroid/widget/TableRow;

    .line 265
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow4_Proximity:Landroid/widget/TableRow;

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 266
    const v7, 0x7f090105

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col1:Landroid/widget/TextView;

    .line 267
    const v7, 0x7f090106

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col2:Landroid/widget/TextView;

    .line 268
    const v7, 0x7f090107

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col3:Landroid/widget/TextView;

    .line 270
    const v7, 0x7f090108

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow5_Proximity:Landroid/widget/TableRow;

    .line 271
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow5_Proximity:Landroid/widget/TableRow;

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 272
    const v7, 0x7f090109

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col1:Landroid/widget/TextView;

    .line 273
    const v7, 0x7f09010a

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col2:Landroid/widget/TextView;

    .line 274
    const v7, 0x7f09010b

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col3:Landroid/widget/TextView;

    .line 276
    const v7, 0x7f09010c

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow6_Proximity:Landroid/widget/TableRow;

    .line 277
    iget v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->FACTORY_TEST_APP:I

    const/16 v8, 0x12

    if-lt v7, v8, :cond_397

    .line 278
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow6_Proximity:Landroid/widget/TableRow;

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 279
    const v7, 0x7f09010d

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col1:Landroid/widget/TextView;

    .line 280
    const v7, 0x7f09010e

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col2:Landroid/widget/TextView;

    .line 281
    const v7, 0x7f09010f

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col3:Landroid/widget/TextView;

    .line 286
    :goto_217
    iget-boolean v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsProximityOffsetTest:Z

    if-eqz v7, :cond_27e

    .line 287
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mSenserID:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index_ID:I
    .restart local v3       #index_ID:I
    iget v8, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_PROXIMITY_OFFSET:I

    aput v8, v7, v4

    .line 288
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mSenserID:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index_ID:I
    .restart local v4       #index_ID:I
    iget v8, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_PROXIMITY_ADC:I

    aput v8, v7, v3

    .line 290
    const v7, 0x7f0900f8

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow1_Proximity:Landroid/widget/TableRow;

    .line 291
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow1_Proximity:Landroid/widget/TableRow;

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 292
    const v7, 0x7f0900f9

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col1:Landroid/widget/TextView;

    .line 293
    const v7, 0x7f0900fa

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col2:Landroid/widget/TextView;

    .line 294
    const v7, 0x7f0900fb

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col3:Landroid/widget/TextView;

    .line 296
    const v7, 0x7f090122

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mLinear_Proximity_Button:Landroid/widget/LinearLayout;

    .line 297
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mLinear_Proximity_Button:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    const v7, 0x7f090123

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mButton_Proximity_Offset:Landroid/widget/Button;

    .line 300
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mButton_Proximity_Offset:Landroid/widget/Button;

    iget-object v8, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mProximityOffsetButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_27e
    move v3, v4

    .end local v4           #index_ID:I
    .restart local v3       #index_ID:I
    move v5, v6

    .line 304
    .end local v6           #index_List:I
    .restart local v5       #index_List:I
    :cond_280
    iget-boolean v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestLight:Z

    if-eqz v7, :cond_377

    .line 305
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #index_List:I
    .restart local v6       #index_List:I
    new-instance v8, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v9, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_LIGHT:I

    invoke-direct {v8, p0, v9}, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;-><init>(Lcom/sec/factory/app/ui/UIProximityLight;I)V

    aput-object v8, v7, v5

    .line 306
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mSenserID:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index_ID:I
    .restart local v4       #index_ID:I
    iget v8, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_LIGHT_ADC:I

    aput v8, v7, v3

    .line 307
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mSenserID:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index_ID:I
    .restart local v3       #index_ID:I
    iget v8, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_LIGHT_LUX:I

    aput v8, v7, v4

    .line 309
    const v7, 0x7f090110

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow1_Dummy1:Landroid/widget/TableRow;

    .line 310
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow1_Dummy1:Landroid/widget/TableRow;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 312
    const v7, 0x7f090112

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow1_Light:Landroid/widget/TableRow;

    .line 313
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow1_Light:Landroid/widget/TableRow;

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 314
    const v7, 0x7f090113

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col1:Landroid/widget/TextView;

    .line 315
    const v7, 0x7f090114

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col2:Landroid/widget/TextView;

    .line 316
    const v7, 0x7f090115

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col3:Landroid/widget/TextView;

    .line 318
    const v7, 0x7f090116

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow2_Light:Landroid/widget/TableRow;

    .line 319
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow2_Light:Landroid/widget/TableRow;

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 320
    const v7, 0x7f090117

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row2_Col1:Landroid/widget/TextView;

    .line 321
    const v7, 0x7f090118

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row2_Col2:Landroid/widget/TextView;

    .line 322
    const v7, 0x7f090119

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row2_Col3:Landroid/widget/TextView;

    .line 324
    const v7, 0x7f09011a

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow3_Light:Landroid/widget/TableRow;

    .line 325
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow3_Light:Landroid/widget/TableRow;

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 326
    const v7, 0x7f09011b

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col1:Landroid/widget/TextView;

    .line 327
    const v7, 0x7f09011c

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col2:Landroid/widget/TextView;

    .line 328
    const v7, 0x7f09011d

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col3:Landroid/widget/TextView;

    .line 330
    const v7, 0x7f09011e

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow4_Light:Landroid/widget/TableRow;

    .line 331
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow4_Light:Landroid/widget/TableRow;

    invoke-virtual {v7, v11}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 332
    const v7, 0x7f09011f

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col1:Landroid/widget/TextView;

    .line 333
    const v7, 0x7f090120

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col2:Landroid/widget/TextView;

    .line 334
    const v7, 0x7f090121

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col3:Landroid/widget/TextView;

    move v5, v6

    .line 338
    .end local v6           #index_List:I
    .restart local v5       #index_List:I
    :cond_377
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    aget-object v7, v7, v11

    iget v7, v7, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mID:I

    iget v8, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_PROXIMITY:I

    if-ne v7, v8, :cond_3a8

    .line 339
    iget-boolean v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsProximityOffsetTest:Z

    if-eqz v7, :cond_3a0

    .line 340
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col1:Landroid/widget/TextView;

    const-string v8, "PROXIMIT"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .end local v3           #index_ID:I
    .end local v5           #index_List:I
    :cond_38c
    :goto_38c
    return-void

    .line 240
    :cond_38d
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/sec/factory/app/ui/UIProximityLight;->WHAT_EXIT:I

    const-wide/16 v9, 0x5dc

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_38c

    .line 283
    .restart local v4       #index_ID:I
    .restart local v6       #index_List:I
    :cond_397
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTableRow6_Proximity:Landroid/widget/TableRow;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    goto/16 :goto_217

    .line 342
    .end local v4           #index_ID:I
    .end local v6           #index_List:I
    .restart local v3       #index_ID:I
    .restart local v5       #index_List:I
    :cond_3a0
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row2_Col1:Landroid/widget/TextView;

    const-string v8, "PROXIMIT"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38c

    .line 343
    :cond_3a8
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    aget-object v7, v7, v11

    iget v7, v7, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mID:I

    iget v8, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_LIGHT:I

    if-ne v7, v8, :cond_38c

    .line 344
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col1:Landroid/widget/TextView;

    const-string v8, "LIGHTEST"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38c
.end method

.method private sensorReady()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 458
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "sensorReady"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mID:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_PROXIMITY:I

    if-ne v0, v1, :cond_37

    .line 461
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsProximityOffsetTest:Z

    if-eqz v0, :cond_27

    .line 462
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_OFFSET:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 463
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col2:Landroid/widget/TextView;

    const-string v1, "Offset"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :cond_26
    :goto_26
    return-void

    .line 465
    :cond_27
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_PENDING:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 466
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row2_Col2:Landroid/widget/TextView;

    const-string v1, "Pending"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 468
    :cond_37
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mID:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_LIGHT:I

    if-ne v0, v1, :cond_26

    .line 469
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_PENDING:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 470
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col2:Landroid/widget/TextView;

    const-string v1, "Pending"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26
.end method

.method private setRelease()V
    .registers 3

    .prologue
    .line 768
    const-string v0, "IS_PROXIMITY_TEST_MOTOR_FEEDBACK"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 769
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 771
    :cond_d
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mLinearBackground:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 772
    return-void
.end method

.method private setUIRate()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 361
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setUIRate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_222

    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_222

    .line 365
    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Title:Landroid/widget/TextView;

    .line 366
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 369
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestProximity:Z

    if-eqz v0, :cond_15d

    .line 370
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsProximityOffsetTest:Z

    if-eqz v0, :cond_85

    .line 371
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 373
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 375
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 377
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mButton_Proximity_Offset:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mButton_Proximity_Offset:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 381
    :cond_85
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row2_Col1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row2_Col1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 383
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row2_Col2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row2_Col2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 385
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row2_Col3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row2_Col3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 388
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row3_Col1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row3_Col1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 390
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row3_Col2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row3_Col2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 392
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row3_Col3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row3_Col3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 395
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 397
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 399
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 402
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 404
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 406
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 409
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->FACTORY_TEST_APP:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_15d

    .line 410
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 412
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 414
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 421
    :cond_15d
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestLight:Z

    if-eqz v0, :cond_222

    .line 422
    const v0, 0x7f090111

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIProximityLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Dummy_Row1_Col1:Landroid/widget/TextView;

    .line 423
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Dummy_Row1_Col1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Dummy_Row1_Col1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 426
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 428
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 430
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 433
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row2_Col1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row2_Col1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 435
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row2_Col2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row2_Col2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 437
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row2_Col3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row2_Col3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 440
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 442
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 444
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 447
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 449
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 451
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mUIRate:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 455
    :cond_222
    return-void
.end method

.method private setWidthCol3()V
    .registers 4

    .prologue
    const v2, 0x7f06001e

    .line 349
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestProximity:Z

    if-eqz v0, :cond_1b

    .line 350
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col3:Landroid/widget/TextView;

    const-string v1, "pass"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    :cond_1b
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestLight:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestProximity:Z

    if-nez v0, :cond_37

    .line 355
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col3:Landroid/widget/TextView;

    const-string v1, "pass"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    :cond_37
    return-void
.end method

.method private setWorking()V
    .registers 3

    .prologue
    .line 776
    const-string v0, "IS_PROXIMITY_TEST_MOTOR_FEEDBACK"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 777
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->startVibrate()V

    .line 779
    :cond_d
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mLinearBackground:Landroid/widget/LinearLayout;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 780
    return-void
.end method

.method private startTest()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/high16 v8, -0x1

    const/4 v7, 0x1

    const v6, -0xffff01

    const/4 v5, 0x2

    .line 478
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mID:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_PROXIMITY:I

    if-ne v0, v1, :cond_2c8

    .line 479
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsProximityOffsetTest:Z

    if-eqz v0, :cond_d7

    .line 480
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_PROXIMITY_ADC:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_PROXIMITY_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 482
    if-eqz v0, :cond_18a

    if-eqz v1, :cond_18a

    .line 483
    aget-object v2, v1, v5

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mProximityOffsetValue:Ljava/lang/String;

    .line 484
    const/4 v2, 0x3

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mProximityThresholdValue:Ljava/lang/String;

    .line 485
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row3_Col1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mProximityOffsetValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mProximityThresholdValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mProximityOffsetValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mProximityThresholdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_OFFSET:I

    if-ne v0, v1, :cond_d7

    .line 492
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    if-eqz v0, :cond_d7

    .line 493
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_PENDING:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 494
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col3:Landroid/widget/TextView;

    const-string v1, "Pass"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 496
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mLinear_Proximity_Button:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row2_Col2:Landroid/widget/TextView;

    const-string v1, "Pending"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    :cond_d7
    :goto_d7
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_PROXIMITY:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_269

    .line 509
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_RELEASE:I

    if-ne v1, v2, :cond_19a

    .line 510
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIProximityLight;->converterProximityValue(F)F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    .line 511
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mPrevValue:F

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_PROXIMITY_RELEASE:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_137

    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_PROXIMITY_DETECT:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_137

    .line 513
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_WORKING:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 514
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->setWorking()V

    .line 515
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col2:Landroid/widget/TextView;

    const-string v1, "Working"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col3:Landroid/widget/TextView;

    const-string v1, "Pass"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iput-boolean v7, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    .line 520
    :cond_137
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mPrevValue:F

    .line 704
    :cond_13b
    :goto_13b
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_FINISH:I

    if-ne v0, v1, :cond_189

    .line 705
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mPrevValue:F

    .line 706
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    .line 707
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestLight:Z

    if-eqz v0, :cond_156

    .line 708
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->setRelease()V

    .line 711
    :cond_156
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_57f

    .line 712
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    .line 713
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mID:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_LIGHT:I

    if-ne v0, v1, :cond_189

    .line 714
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_PENDING:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 715
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col1:Landroid/widget/TextView;

    const-string v1, "LIGHTEST"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row1_Col2:Landroid/widget/TextView;

    const-string v1, "Pending"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    :cond_189
    :goto_189
    return-void

    .line 501
    :cond_18a
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row3_Col1:Landroid/widget/TextView;

    const-string v1, "ADC : NONE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col1:Landroid/widget/TextView;

    const-string v1, "Offset : NONE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d7

    .line 523
    :cond_19a
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_WORKING:I

    if-ne v1, v2, :cond_207

    .line 524
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIProximityLight;->converterProximityValue(F)F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    .line 525
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mPrevValue:F

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_PROXIMITY_DETECT:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1f6

    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_PROXIMITY_RELEASE:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1f6

    .line 527
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->FACTORY_TEST_APP:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1fc

    .line 528
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_RELEASE_SECOND:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 529
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->setRelease()V

    .line 532
    :goto_1db
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col2:Landroid/widget/TextView;

    const-string v1, "Release"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col3:Landroid/widget/TextView;

    const-string v1, "Pass"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iput-boolean v7, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    .line 537
    :cond_1f6
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mPrevValue:F

    goto/16 :goto_13b

    .line 531
    :cond_1fc
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_FINISH:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    goto :goto_1db

    .line 540
    :cond_207
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_RELEASE_SECOND:I

    if-ne v1, v2, :cond_13b

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->FACTORY_TEST_APP:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_13b

    .line 542
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIProximityLight;->converterProximityValue(F)F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    .line 543
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mPrevValue:F

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_PROXIMITY_RELEASE:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_263

    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_PROXIMITY_DETECT:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_263

    .line 545
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_FINISH:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 546
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->setWorking()V

    .line 547
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col2:Landroid/widget/TextView;

    const-string v1, "Working"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col3:Landroid/widget/TextView;

    const-string v1, "Pass"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 550
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iput-boolean v7, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    .line 552
    :cond_263
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mPrevValue:F

    goto/16 :goto_13b

    .line 555
    :cond_269
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_RELEASE:I

    if-ne v0, v1, :cond_13b

    .line 556
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_FINISH:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 557
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col2:Landroid/widget/TextView;

    const-string v1, "Working"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col3:Landroid/widget/TextView;

    const-string v1, "Fail"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row4_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 561
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col2:Landroid/widget/TextView;

    const-string v1, "Release"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col3:Landroid/widget/TextView;

    const-string v1, "Fail"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row5_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 565
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->FACTORY_TEST_APP:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2be

    .line 566
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col2:Landroid/widget/TextView;

    const-string v1, "Release"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col3:Landroid/widget/TextView;

    const-string v1, "Fail"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row6_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 571
    :cond_2be
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iput-boolean v9, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    goto/16 :goto_13b

    .line 579
    :cond_2c8
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mID:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_LIGHT:I

    if-ne v0, v1, :cond_13b

    .line 581
    const-string v0, "ro.product.model"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_LIGHT_ADC:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_LIGHT_LUX:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 586
    if-eqz v0, :cond_37f

    .line 587
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADC : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    :goto_307
    const-string v0, "LIGHT_SENSOR_LUX_ONLY"

    invoke-static {v0, v9}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_434

    .line 594
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTest"

    const-string v2, "grande source"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col1:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->SENSOR_ID_LIGHT_ADC:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_387

    .line 601
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LUX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    :goto_342
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_PENDING:I

    if-ne v1, v2, :cond_38f

    .line 608
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    .line 609
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_LIGHT_BRIGHT:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13b

    .line 610
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTest"

    const-string v2, "TESTITEM_STATUS_PENDING => TESTITEM_STATUS_RELEASE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_RELEASE:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 612
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row2_Col2:Landroid/widget/TextView;

    const-string v1, "Release"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13b

    .line 589
    :cond_37f
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col1:Landroid/widget/TextView;

    const-string v2, "ADC : NONE"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_307

    .line 604
    :cond_387
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col1:Landroid/widget/TextView;

    const-string v2, "LUX : NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_342

    .line 616
    :cond_38f
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_RELEASE:I

    if-ne v1, v2, :cond_3e3

    .line 617
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    .line 618
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_LIGHT_DARK:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13b

    .line 619
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTest"

    const-string v2, "TESTITEM_STATUS_RELEASE => TESTITEM_STATUS_WORKING"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_WORKING:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 621
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->setWorking()V

    .line 622
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col2:Landroid/widget/TextView;

    const-string v1, "Working"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col3:Landroid/widget/TextView;

    const-string v1, "Pass"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 625
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iput-boolean v7, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    goto/16 :goto_13b

    .line 629
    :cond_3e3
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_WORKING:I

    if-ne v1, v2, :cond_13b

    .line 630
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    .line 631
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_LIGHT_BRIGHT:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13b

    .line 632
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTest"

    const-string v2, "TESTITEM_STATUS_WORKING => TESTITEM_STATUS_FINISH"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_FINISH:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 634
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col2:Landroid/widget/TextView;

    const-string v1, "Release"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col3:Landroid/widget/TextView;

    const-string v1, "Pass"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 637
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iput-boolean v7, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    goto/16 :goto_13b

    .line 645
    :cond_434
    if-eqz v1, :cond_532

    .line 646
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col1:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LUX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_PENDING:I

    if-ne v0, v2, :cond_48d

    .line 650
    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    .line 651
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_LIGHT_BRIGHT:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13b

    .line 652
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTest"

    const-string v2, "TESTITEM_STATUS_PENDING => TESTITEM_STATUS_RELEASE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_RELEASE:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 654
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row2_Col2:Landroid/widget/TextView;

    const-string v1, "Release"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13b

    .line 658
    :cond_48d
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_RELEASE:I

    if-ne v0, v2, :cond_4e1

    .line 659
    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    .line 660
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_LIGHT_DARK:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_13b

    .line 661
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTest"

    const-string v2, "TESTITEM_STATUS_RELEASE => TESTITEM_STATUS_WORKING"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_WORKING:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 663
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->setWorking()V

    .line 664
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col2:Landroid/widget/TextView;

    const-string v1, "Working"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col3:Landroid/widget/TextView;

    const-string v1, "Pass"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iput-boolean v7, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    goto/16 :goto_13b

    .line 671
    :cond_4e1
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_WORKING:I

    if-ne v0, v2, :cond_13b

    .line 672
    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    .line 673
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mCurrValue:F

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->RANGE_LIGHT_BRIGHT:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13b

    .line 674
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTest"

    const-string v2, "TESTITEM_STATUS_WORKING => TESTITEM_STATUS_FINISH"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_FINISH:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 676
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col2:Landroid/widget/TextView;

    const-string v1, "Release"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col3:Landroid/widget/TextView;

    const-string v1, "Pass"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 679
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iput-boolean v7, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    goto/16 :goto_13b

    .line 683
    :cond_532
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col1:Landroid/widget/TextView;

    const-string v1, "LUX : NONE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_RELEASE:I

    if-ne v0, v1, :cond_13b

    .line 685
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_FINISH:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 686
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col2:Landroid/widget/TextView;

    const-string v1, "Working"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col3:Landroid/widget/TextView;

    const-string v1, "Fail"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row3_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 690
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col2:Landroid/widget/TextView;

    const-string v1, "Release"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col3:Landroid/widget/TextView;

    const-string v1, "Fail"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Light_Row4_Col3:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 694
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    aget-object v0, v0, v1

    iput-boolean v9, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    goto/16 :goto_13b

    .line 718
    :cond_57f
    iget v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_189

    .line 719
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->FLAG_EXIT:Z

    if-eqz v0, :cond_189

    .line 720
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTest"

    const-string v2, "mHandler.sendEmptyMessageDelayed(WHAT_EXIT, DELAY_EXIT)"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->WHAT_EXIT:I

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 723
    iput-boolean v9, p0, Lcom/sec/factory/app/ui/UIProximityLight;->FLAG_EXIT:Z

    goto/16 :goto_189
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIProximityLight;->setContentView(I)V

    .line 150
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->initialize()V

    .line 151
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->setWidthCol3()V

    .line 152
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIProximityLight;->setUIRate()V

    .line 153
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mSenserID:[I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([ILandroid/os/Handler;I)V

    .line 154
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 163
    packed-switch p1, :pswitch_data_4e

    .line 180
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 165
    :pswitch_9
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    const-string v2, "KEYCODE_VOLUME_DOWN"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mIsTestProximity:Z

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_PENDING:I

    if-ne v0, v1, :cond_39

    .line 170
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_RELEASE:I

    iput v1, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 171
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row3_Col2:Landroid/widget/TextView;

    const-string v1, "Release"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 172
    :cond_39
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_OFFSET:I

    if-ne v0, v1, :cond_4

    .line 173
    const-string v0, "Please set the Offset"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 163
    nop

    :pswitch_data_4e
    .packed-switch 0x19
        :pswitch_9
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 159
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 160
    return-void
.end method
