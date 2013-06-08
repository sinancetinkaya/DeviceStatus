.class public Lcom/sec/factory/app/ui/UIBarometer;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIBarometer.java"


# instance fields
.field private WHAT_GET_DATA:I

.field private WHAT_GET_DATA2:I

.field private WHAT_UPDATE:I

.field public mCurrentIndex:I

.field mData:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsTestAltitude:Z

.field private mIsTestPressure:Z

.field private mIsTestTemp:Z

.field private mLinearAltitude:Landroid/widget/LinearLayout;

.field private mLinearPressure:Landroid/widget/LinearLayout;

.field private mLinearTemp:Landroid/widget/LinearLayout;

.field private mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

.field mPressureValue:[F

.field private mResultText:Landroid/widget/TextView;

.field mSenserID:[I

.field private mTestCase:Ljava/lang/String;

.field private mTextAltitude:Landroid/widget/TextView;

.field private mTextPressure:Landroid/widget/TextView;

.field private mTextTemp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x16

    .line 40
    const-string v0, "UIBarometer"

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object v2, p0, Lcom/sec/factory/app/ui/UIBarometer;->mSenserID:[I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_UPDATE:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA2:I

    .line 29
    iput-object v2, p0, Lcom/sec/factory/app/ui/UIBarometer;->mData:[Ljava/lang/String;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mPressureValue:[F

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mCurrentIndex:I

    .line 33
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTestCase:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTestCase:Ljava/lang/String;

    const-string v1, "TEMP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mIsTestTemp:Z

    .line 36
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTestCase:Ljava/lang/String;

    const-string v1, "PRESSURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mIsTestPressure:Z

    .line 37
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTestCase:Ljava/lang/String;

    const-string v1, "ALTITUDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mIsTestAltitude:Z

    .line 105
    new-instance v0, Lcom/sec/factory/app/ui/UIBarometer$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIBarometer$1;-><init>(Lcom/sec/factory/app/ui/UIBarometer;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIBarometer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIBarometer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBarometer;->getDataBaro()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIBarometer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA2:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UIBarometer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBarometer;->getBaroDataDelay()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UIBarometer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_UPDATE:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UIBarometer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBarometer;->update()V

    return-void
.end method

.method private getBaroDataDelay()V
    .registers 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA:I

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA:I

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA:I

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA:I

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA:I

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_UPDATE:I

    const-wide/16 v2, 0x47e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    return-void
.end method

.method private getDataBaro()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 119
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mData:[Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mData:[Ljava/lang/String;

    if-eqz v0, :cond_78

    .line 121
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getDataBaro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBarometer;->mData:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mPressureValue:[F

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->mCurrentIndex:I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIBarometer;->mData:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 123
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataBaro : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/app/ui/UIBarometer;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPressureValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBarometer;->mPressureValue:[F

    iget v4, p0, Lcom/sec/factory/app/ui/UIBarometer;->mCurrentIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mCurrentIndex:I

    .line 127
    :cond_78
    return-void
.end method

.method private update()V
    .registers 12

    .prologue
    .line 130
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "update"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, data:[Ljava/lang/String;
    const/4 v2, 0x1

    .line 136
    .local v2, isPass:Z
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v8, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    invoke-virtual {v7, v8}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-boolean v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mIsTestTemp:Z

    if-eqz v7, :cond_63

    .line 140
    if-eqz v0, :cond_bb

    .line 141
    const/4 v7, 0x4

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 142
    .local v5, tempValue:F
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "update"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Temperature:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/high16 v7, -0x3dcc

    cmpg-float v7, v7, v5

    if-gtz v7, :cond_9c

    const/high16 v7, 0x42aa

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_9c

    .line 144
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "update"

    const-string v9, "Temperature : Pass"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTextTemp:Landroid/widget/TextView;

    const-string v8, " : Pass "

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v8, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTextTemp:Landroid/widget/TextView;

    if-eqz v2, :cond_99

    const v7, -0xffff01

    :goto_60
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    .end local v5           #tempValue:F
    :cond_63
    :goto_63
    iget-boolean v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mIsTestPressure:Z

    if-eqz v7, :cond_100

    .line 162
    if-eqz v0, :cond_1a7

    .line 163
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTextPressure:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hPa"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const/4 v6, 0x0

    .line 171
    .local v6, total:F
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mPressureValue:[F

    array-length v3, v7

    .line 172
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8f
    if-ge v1, v3, :cond_cd

    .line 173
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mPressureValue:[F

    aget v7, v7, v1

    add-float/2addr v6, v7

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 146
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v6           #total:F
    .restart local v5       #tempValue:F
    :cond_99
    const/high16 v7, -0x1

    goto :goto_60

    .line 148
    :cond_9c
    const/4 v2, 0x0

    .line 149
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "update"

    const-string v9, "Temperature : Fail"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTextTemp:Landroid/widget/TextView;

    const-string v8, " : Fail "

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v8, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTextTemp:Landroid/widget/TextView;

    if-eqz v2, :cond_b8

    const v7, -0xffff01

    :goto_b4
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_63

    :cond_b8
    const/high16 v7, -0x1

    goto :goto_b4

    .line 154
    .end local v5           #tempValue:F
    :cond_bb
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "update"

    const-string v9, "TEMPERATURE - data == null"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v2, 0x0

    .line 156
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTextTemp:Landroid/widget/TextView;

    const-string v8, " : NONE"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_63

    .line 175
    .restart local v1       #i:I
    .restart local v3       #length:I
    .restart local v6       #total:F
    :cond_cd
    int-to-float v7, v3

    div-float v4, v6, v7

    .line 176
    .local v4, pressureValue:F
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "update"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/high16 v7, 0x4396

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_19b

    const v7, 0x44898000

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_19b

    .line 179
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "update"

    const-string v9, "Pressure : Pass"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v4           #pressureValue:F
    .end local v6           #total:F
    :cond_100
    :goto_100
    iget-boolean v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mIsTestAltitude:Z

    if-eqz v7, :cond_136

    .line 193
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "update"

    const-string v9, "ALTITUDE"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mLinearAltitude:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    if-eqz v0, :cond_1ba

    .line 196
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTextAltitude:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_136
    :goto_136
    iget-object v8, p0, Lcom/sec/factory/app/ui/UIBarometer;->mResultText:Landroid/widget/TextView;

    if-eqz v2, :cond_1cd

    const-string v7, "PASS"

    :goto_13c
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v8, p0, Lcom/sec/factory/app/ui/UIBarometer;->mResultText:Landroid/widget/TextView;

    if-eqz v2, :cond_1d1

    const v7, -0xffff01

    :goto_146
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    if-eqz v2, :cond_153

    .line 207
    const/16 v7, 0x50

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIBarometer;->setTestResult(B)V

    .line 208
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBarometer;->finishOnPassWithTimer()V

    .line 210
    :cond_153
    if-eqz v0, :cond_19a

    .line 211
    iget-object v8, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "update"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Temperature:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v10, 0x4

    aget-object v10, v0, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", Pressure:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v10, 0x2

    aget-object v10, v0, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", Altitude:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v10, 0x3

    aget-object v10, v0, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", Result:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v2, :cond_1d5

    const-string v7, "PASS"

    :goto_18f
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_19a
    return-void

    .line 181
    .restart local v1       #i:I
    .restart local v3       #length:I
    .restart local v4       #pressureValue:F
    .restart local v6       #total:F
    :cond_19b
    const/4 v2, 0x0

    .line 182
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "update"

    const-string v9, "Pressure : Fail"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_100

    .line 185
    .end local v1           #i:I
    .end local v3           #length:I
    .end local v4           #pressureValue:F
    .end local v6           #total:F
    :cond_1a7
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "update"

    const-string v9, "TEMPERATURE - data == null"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v2, 0x0

    .line 187
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTextPressure:Landroid/widget/TextView;

    const-string v8, " : NONE"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_100

    .line 198
    :cond_1ba
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "update"

    const-string v9, "TEMPERATURE - data == null"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v2, 0x0

    .line 200
    iget-object v7, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTextAltitude:Landroid/widget/TextView;

    const-string v8, " : NONE"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_136

    .line 204
    :cond_1cd
    const-string v7, "FAIL"

    goto/16 :goto_13c

    .line 205
    :cond_1d1
    const/high16 v7, -0x1

    goto/16 :goto_146

    .line 211
    :cond_1d5
    const-string v7, "FAIL"

    goto :goto_18f
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIBarometer;->setContentView(I)V

    .line 48
    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIBarometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mLinearTemp:Landroid/widget/LinearLayout;

    .line 49
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIBarometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTextTemp:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f090075

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIBarometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mLinearPressure:Landroid/widget/LinearLayout;

    .line 51
    const v0, 0x7f090076

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIBarometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTextPressure:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIBarometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mLinearAltitude:Landroid/widget/LinearLayout;

    .line 53
    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIBarometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mTextAltitude:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIBarometer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mResultText:Landroid/widget/TextView;

    .line 56
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleSensor;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleSensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mSenserID:[I

    .line 60
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 98
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 99
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    :cond_14
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_UPDATE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 101
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_UPDATE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    :cond_25
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 103
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->mSenserID:[I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 67
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mIsTestTemp:Z

    if-eqz v0, :cond_1d

    .line 68
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onResume"

    const-string v2, "TEMPERATURE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mLinearTemp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    :cond_1d
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mIsTestPressure:Z

    if-eqz v0, :cond_2f

    .line 72
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onResume"

    const-string v2, "PRESSURE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mLinearPressure:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    :cond_2f
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mIsTestAltitude:Z

    if-eqz v0, :cond_41

    .line 76
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "update"

    const-string v2, "ALTITUDE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mLinearAltitude:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    :cond_41
    const-string v0, "SUPPORT_SENSORHUB"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 80
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA2:I

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 83
    :goto_53
    return-void

    .line 82
    :cond_54
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBarometer;->getBaroDataDelay()V

    goto :goto_53
.end method
