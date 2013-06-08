.class public Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIMagneticAlps.java"


# instance fields
.field private WHAT_UPDATE:I

.field private mFeature:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

.field private mSenserID:[I

.field private mSensorID_ADC:I

.field private mSensorID_DAC:I

.field private mSensorID_Initialized:I

.field private mSensorID_None:I

.field private mSensorID_Offset_H:I

.field private mSensorID_Released:I

.field private mSensorID_Self:I

.field private mSensorID_Status:I

.field private mTableRow_ADC:Landroid/widget/TableRow;

.field private mTableRow_DAC:Landroid/widget/TableRow;

.field private mTableRow_Initialized:Landroid/widget/TableRow;

.field private mTableRow_Offset_H:Landroid/widget/TableRow;

.field private mTableRow_SX:Landroid/widget/TableRow;

.field private mTableRow_SY:Landroid/widget/TableRow;

.field private mTableRow_Status:Landroid/widget/TableRow;

.field private mTextResult:Landroid/widget/TextView;

.field private mText_ADC_X:Landroid/widget/TextView;

.field private mText_ADC_Y:Landroid/widget/TextView;

.field private mText_ADC_Z:Landroid/widget/TextView;

.field private mText_DAC_X:Landroid/widget/TextView;

.field private mText_DAC_Y:Landroid/widget/TextView;

.field private mText_DAC_Z:Landroid/widget/TextView;

.field private mText_Initialized:Landroid/widget/TextView;

.field private mText_Offset_H_X:Landroid/widget/TextView;

.field private mText_Offset_H_Y:Landroid/widget/TextView;

.field private mText_Offset_H_Z:Landroid/widget/TextView;

.field private mText_SX:Landroid/widget/TextView;

.field private mText_SY:Landroid/widget/TextView;

.field private mText_Status:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 78
    const-string v0, "UIMagneticAlps"

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSenserID:[I

    .line 64
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MIN:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    .line 65
    iget v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Initialized:I

    .line 66
    iget v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Status:I

    .line 67
    iget v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_DAC:I

    .line 68
    iget v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_ADC:I

    .line 69
    iget v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Self:I

    .line 72
    iget v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Offset_H:I

    .line 73
    iget v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Released:I

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->WHAT_UPDATE:I

    .line 143
    new-instance v0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps$1;-><init>(Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->WHAT_UPDATE:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->update()V

    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 152
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_Initialized:Landroid/widget/TableRow;

    .line 153
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_Initialized:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_Status:Landroid/widget/TableRow;

    .line 158
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_Status:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_SX:Landroid/widget/TableRow;

    .line 166
    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_SX:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_SY:Landroid/widget/TableRow;

    .line 170
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_SY:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_DAC:Landroid/widget/TableRow;

    .line 174
    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_DAC_X:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_DAC_Y:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_DAC_Z:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_ADC:Landroid/widget/TableRow;

    .line 180
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_ADC_X:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_ADC_Y:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_ADC_Z:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_Offset_H:Landroid/widget/TableRow;

    .line 186
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_Offset_H_X:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_Offset_H_Y:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_Offset_H_Z:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTextResult:Landroid/widget/TextView;

    .line 192
    return-void
.end method

.method private update()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 195
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, data:[Ljava/lang/String;
    const/4 v1, 0x1

    .line 200
    .local v1, isPass:Z
    iget v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Initialized:I

    if-ge v2, v3, :cond_5a

    .line 201
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_Initialized:Landroid/widget/TableRow;

    invoke-virtual {v2, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 202
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Initialized:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_2b5

    .line 204
    aget-object v2, v0, v7

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a9

    .line 205
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "Initialized - Pass"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_37
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_Initialized:Landroid/widget/TextView;

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialized Return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_5a
    :goto_5a
    if-ne v1, v6, :cond_b3

    iget v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Status:I

    if-ge v2, v3, :cond_b3

    .line 222
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_Status:Landroid/widget/TableRow;

    invoke-virtual {v2, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 223
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Status:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_2d4

    .line 225
    aget-object v2, v0, v6

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c8

    .line 226
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "Status - Pass"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_84
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_Status:Landroid/widget/TextView;

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retuen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_b3
    :goto_b3
    if-ne v1, v6, :cond_132

    iget v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_DAC:I

    if-ge v2, v3, :cond_132

    .line 244
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_DAC:Landroid/widget/TableRow;

    invoke-virtual {v2, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 245
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_DAC:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_2f3

    .line 247
    aget-object v2, v0, v6

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e7

    .line 248
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "DAC - Pass"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_dd
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_DAC_X:Landroid/widget/TextView;

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_DAC_Y:Landroid/widget/TextView;

    aget-object v3, v0, v9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_DAC_Z:Landroid/widget/TextView;

    aget-object v3, v0, v10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retuen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", [DAC]X:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Z:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_132
    :goto_132
    if-ne v1, v6, :cond_1b1

    iget v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_ADC:I

    if-ge v2, v3, :cond_1b1

    .line 270
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_ADC:Landroid/widget/TableRow;

    invoke-virtual {v2, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 271
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_ADC:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_320

    .line 273
    aget-object v2, v0, v6

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_314

    .line 274
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "ADC - Pass"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_15c
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_ADC_X:Landroid/widget/TextView;

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_ADC_Y:Landroid/widget/TextView;

    aget-object v3, v0, v9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_ADC_Z:Landroid/widget/TextView;

    aget-object v3, v0, v10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retuen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", [ADC]X:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Z:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_1b1
    :goto_1b1
    if-ne v1, v6, :cond_222

    iget v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Self:I

    if-ge v2, v3, :cond_222

    .line 296
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_SX:Landroid/widget/TableRow;

    invoke-virtual {v2, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 297
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTableRow_SY:Landroid/widget/TableRow;

    invoke-virtual {v2, v8}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 298
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Self:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_34d

    .line 300
    aget-object v2, v0, v6

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_341

    .line 301
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "Self - Pass"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_1e0
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_SX:Landroid/widget/TextView;

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_SY:Landroid/widget/TextView;

    aget-object v3, v0, v9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retuen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_222
    :goto_222
    if-ne v1, v6, :cond_263

    iget v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Released:I

    if-ge v2, v3, :cond_263

    .line 339
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Released:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_373

    .line 341
    aget-object v2, v0, v7

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_367

    .line 342
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "Released - Pass"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_247
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Released Return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_263
    :goto_263
    iget-object v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTextResult:Landroid/widget/TextView;

    if-eqz v1, :cond_37f

    const-string v2, "PASS"

    :goto_269
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mTextResult:Landroid/widget/TextView;

    if-eqz v1, :cond_383

    const v2, -0xffff01

    :goto_273
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    iget-boolean v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mIsFromLcdTest:Z

    if-nez v2, :cond_281

    .line 358
    if-eqz v1, :cond_281

    .line 359
    const/16 v2, 0x50

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->setTestResult(B)V

    .line 361
    :cond_281
    iget-object v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "update"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_387

    const-string v2, "PASS"

    :goto_294
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eqz v1, :cond_2a8

    iget-boolean v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mIsFromLcdTest:Z

    if-nez v2, :cond_2a8

    .line 363
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->finishOnPassWithTimer()V

    .line 365
    :cond_2a8
    return-void

    .line 207
    :cond_2a9
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "Initialized - Fail"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v1, 0x0

    goto/16 :goto_37

    .line 213
    :cond_2b5
    const/4 v1, 0x0

    .line 214
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_Initialized:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "Initialized - Fail : null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 228
    :cond_2c8
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "Status - Fail"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x0

    goto/16 :goto_84

    .line 235
    :cond_2d4
    const/4 v1, 0x0

    .line 237
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_Status:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "Status - Fail : null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b3

    .line 250
    :cond_2e7
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "DAC - Fail"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v1, 0x0

    goto/16 :goto_dd

    .line 260
    :cond_2f3
    const/4 v1, 0x0

    .line 261
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_DAC_X:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_DAC_Y:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_DAC_Z:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "DAC - Fail : null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_132

    .line 276
    :cond_314
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "ADC - Fail"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v1, 0x0

    goto/16 :goto_15c

    .line 286
    :cond_320
    const/4 v1, 0x0

    .line 287
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_ADC_X:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_ADC_Y:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_ADC_Z:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "ADC - Fail : null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b1

    .line 303
    :cond_341
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "Self - Fail"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v1, 0x0

    goto/16 :goto_1e0

    .line 311
    :cond_34d
    const/4 v1, 0x0

    .line 312
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_SX:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mText_SY:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "Self - Fail : null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_222

    .line 344
    :cond_367
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "Released - Fail"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v1, 0x0

    goto/16 :goto_247

    .line 349
    :cond_373
    const/4 v1, 0x0

    .line 350
    iget-object v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "update"

    const-string v4, "Released - Fail : null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_263

    .line 355
    :cond_37f
    const-string v2, "FAIL"

    goto/16 :goto_269

    .line 356
    :cond_383
    const/high16 v2, -0x1

    goto/16 :goto_273

    .line 361
    :cond_387
    const-string v2, "FAIL"

    goto/16 :goto_294
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_FROM_LCDTEST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mIsFromLcdTest:Z

    .line 85
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GEOMAGNETIC:I

    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mFeature:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onCreate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFeature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mFeature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->init()V

    .line 90
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 140
    iget-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 141
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 93
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mFeature:Ljava/lang/String;

    const-string v1, "HSCDTD004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mFeature:Ljava/lang/String;

    const-string v1, "HSCDTD004A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mFeature:Ljava/lang/String;

    const-string v1, "HSCDTD006A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 102
    :cond_21
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_ON:I

    iput v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Initialized:I

    .line 104
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_STATUS:I

    iput v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Status:I

    .line 106
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    iput v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_ADC:I

    .line 116
    :cond_2d
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Initialized:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_Status:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSensorID_ADC:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSenserID:[I

    .line 132
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleSensor;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleSensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    .line 133
    iget-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v1, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mSenserID:[I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 135
    iget-object v0, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/oldconcept/UIMagneticAlps;->WHAT_UPDATE:I

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    return-void
.end method
