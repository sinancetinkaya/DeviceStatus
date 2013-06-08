.class public Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;
.super Landroid/app/Fragment;
.source "FragmentGeomagneticYamaha.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private mTableRow_ADC:Landroid/widget/TableRow;

.field private mTableRow_DAC:Landroid/widget/TableRow;

.field private mTableRow_Initialized:Landroid/widget/TableRow;

.field private mTableRow_Offset_H:Landroid/widget/TableRow;

.field private mTableRow_SX:Landroid/widget/TableRow;

.field private mTableRow_SY:Landroid/widget/TableRow;

.field private mTableRow_Temp:Landroid/widget/TableRow;

.field private mTextResult:Landroid/widget/TextView;

.field private mText_ADC_Title:Landroid/widget/TextView;

.field private mText_ADC_X:Landroid/widget/TextView;

.field private mText_ADC_Y:Landroid/widget/TextView;

.field private mText_ADC_Z:Landroid/widget/TextView;

.field private mText_DAC_Title:Landroid/widget/TextView;

.field private mText_DAC_X:Landroid/widget/TextView;

.field private mText_DAC_Y:Landroid/widget/TextView;

.field private mText_DAC_Z:Landroid/widget/TextView;

.field private mText_Initialized:Landroid/widget/TextView;

.field private mText_Initialized_Title:Landroid/widget/TextView;

.field private mText_Offset_H_Title:Landroid/widget/TextView;

.field private mText_Offset_H_X:Landroid/widget/TextView;

.field private mText_Offset_H_Y:Landroid/widget/TextView;

.field private mText_Offset_H_Z:Landroid/widget/TextView;

.field private mText_SX:Landroid/widget/TextView;

.field private mText_SX_Title:Landroid/widget/TextView;

.field private mText_SY:Landroid/widget/TextView;

.field private mText_SY_Title:Landroid/widget/TextView;

.field private mText_Temp:Landroid/widget/TextView;

.field private mText_Temp_Title:Landroid/widget/TextView;

.field private mText_Title:Landroid/widget/TextView;

.field private mText_X_Title:Landroid/widget/TextView;

.field private mText_Y_Title:Landroid/widget/TextView;

.field private mText_Z_Title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 33
    const-string v0, "FragmentGeomagneticYamaha"

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->CLASS_NAME:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private init(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 91
    const-string v0, "FragmentGeomagneticYamaha"

    const-string v1, "init"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const v0, 0x7f09001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Title:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f09001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_Initialized:Landroid/widget/TableRow;

    .line 97
    const v0, 0x7f09001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Initialized_Title:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f090020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Initialized:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f09002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_Temp:Landroid/widget/TableRow;

    .line 101
    const v0, 0x7f09002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Temp_Title:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f09002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Temp:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f09003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_SX:Landroid/widget/TableRow;

    .line 105
    const v0, 0x7f09003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SX_Title:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f090040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SX:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f090041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_SY:Landroid/widget/TableRow;

    .line 109
    const v0, 0x7f090042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SY_Title:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f090043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SY:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f090024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_X_Title:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f090025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Y_Title:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f090026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Z_Title:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f090039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_DAC:Landroid/widget/TableRow;

    .line 117
    const v0, 0x7f09003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Title:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f09003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_X:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f09003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Y:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f09003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Z:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f090027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_ADC:Landroid/widget/TableRow;

    .line 123
    const v0, 0x7f090028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Title:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f090029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_X:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f09002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Y:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f09002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Z:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f090044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_Offset_H:Landroid/widget/TableRow;

    .line 129
    const v0, 0x7f090045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Title:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f090046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_X:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f090047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Y:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f090048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Z:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTextResult:Landroid/widget/TextView;

    .line 136
    return-void
.end method

.method private setUIRate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 139
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getUIRate(Ljava/lang/String;)F

    move-result v0

    .line 141
    .local v0, rate:F
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "setUIRate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_15c

    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_15c

    .line 145
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Initialized_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Initialized_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 149
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Initialized:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Initialized:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 152
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Temp_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Temp_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 154
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Temp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Temp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 156
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SX_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SX_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 158
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SX:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SY_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SY_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SY:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SY:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_X_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_X_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Y_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Y_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 167
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Z_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Z_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 170
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 172
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_X:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_X:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 173
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Y:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 174
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Z:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 176
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 178
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_X:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_X:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 179
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Y:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Z:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 182
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 184
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_X:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_X:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 186
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Y:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 188
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Z:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 191
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTextResult:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTextResult:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 193
    :cond_15c
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 83
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "onCreateView"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const v1, 0x7f030007

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->init(Landroid/view/View;)V

    .line 86
    invoke-direct {p0}, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->setUIRate()V

    .line 87
    return-object v0
.end method

.method public update(Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;Landroid/os/Handler;)V
    .registers 10
    .parameter "data"
    .parameter "handler"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 196
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x1

    .line 200
    .local v0, isPass:Z
    if-eqz p1, :cond_2fe

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mIsDisplay_Initialized:Z

    if-ne v1, v6, :cond_2fe

    .line 201
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_Initialized:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 202
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mInitialized:Ljava/lang/String;

    if-eqz v1, :cond_2eb

    .line 203
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mInitialized:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2df

    .line 204
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Initialized - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_2d
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Initialized:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mInitialized:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initialized Return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mInitialized:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_50
    if-eqz p1, :cond_321

    .line 222
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mStatus:Ljava/lang/String;

    if-eqz v1, :cond_315

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mStatus_Result:Ljava/lang/String;

    if-eqz v1, :cond_315

    .line 223
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mStatus_Result:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_309

    .line 224
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Status - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_6d
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retuen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mStatus_Result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_95
    if-eqz p1, :cond_359

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mIsDisplay_DAC:Z

    if-ne v1, v6, :cond_359

    .line 241
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_DAC:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 242
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_X:Ljava/lang/String;

    if-eqz v1, :cond_338

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_Y:Ljava/lang/String;

    if-eqz v1, :cond_338

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_Z:Ljava/lang/String;

    if-eqz v1, :cond_338

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_Result:Ljava/lang/String;

    if-eqz v1, :cond_338

    .line 244
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_Result:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32c

    .line 245
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "DAC - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_c3
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_X:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Y:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Z:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retuen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_Result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", [DAC]X:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_X:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_Y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Z:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_Z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_118
    if-eqz p1, :cond_391

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mIsDisplay_ADC:Z

    if-ne v1, v6, :cond_391

    .line 269
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_ADC:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 270
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_X:Ljava/lang/String;

    if-eqz v1, :cond_370

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_Y:Ljava/lang/String;

    if-eqz v1, :cond_370

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_Z:Ljava/lang/String;

    if-eqz v1, :cond_370

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_Result:Ljava/lang/String;

    if-eqz v1, :cond_370

    .line 272
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_Result:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_364

    .line 273
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "ADC - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_146
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_X:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Y:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Z:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retuen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_Result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", [ADC]X:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_X:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_Y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Z:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_Z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_19b
    if-eqz p1, :cond_3c2

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mIsDisplay_Self:Z

    if-ne v1, v6, :cond_3c2

    .line 297
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_SX:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_SY:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 299
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mSelf_X:Ljava/lang/String;

    if-eqz v1, :cond_3a8

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mSelf_Y:Ljava/lang/String;

    if-eqz v1, :cond_3a8

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mSelf_Result:Ljava/lang/String;

    if-eqz v1, :cond_3a8

    .line 300
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mSelf_Result:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39c

    .line 301
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Self - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_1ca
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SX:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mSelf_X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SY:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mSelf_Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retuen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mSelf_Result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mSelf_X:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mSelf_Y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_20c
    if-eqz p1, :cond_3fa

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mIsDisplay_OffsetH:Z

    if-ne v1, v6, :cond_3fa

    .line 322
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTableRow_Offset_H:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 323
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_X:Ljava/lang/String;

    if-eqz v1, :cond_3d9

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_Y:Ljava/lang/String;

    if-eqz v1, :cond_3d9

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_Z:Ljava/lang/String;

    if-eqz v1, :cond_3d9

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_Result:Ljava/lang/String;

    if-eqz v1, :cond_3d9

    .line 325
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_Result:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3cd

    .line 326
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Offset - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_23a
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_X:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Y:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Z:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retuen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_Result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", [Offset H]X:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_X:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_Y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Z:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_Z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :goto_28f
    if-eqz p1, :cond_411

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mPowerOff_Result:Ljava/lang/String;

    if-eqz v1, :cond_411

    .line 350
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mPowerOff_Result:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_405

    .line 351
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Released - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_2a8
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Released Return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mPowerOff_Result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_2c4
    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTextResult:Landroid/widget/TextView;

    if-eqz v0, :cond_41d

    const-string v1, "PASS"

    :goto_2ca
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mTextResult:Landroid/widget/TextView;

    if-eqz v0, :cond_421

    const v1, -0xffff01

    :goto_2d4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    if-eqz v0, :cond_425

    .line 367
    sget v1, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GEOMAGNETIC_PASS:I

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 370
    :goto_2de
    return-void

    .line 206
    :cond_2df
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Initialized - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    goto/16 :goto_2d

    .line 212
    :cond_2eb
    const/4 v0, 0x0

    .line 213
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Initialized:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Initialized - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50

    .line 217
    :cond_2fe
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Initialized> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50

    .line 226
    :cond_309
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Status - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    goto/16 :goto_6d

    .line 232
    :cond_315
    const/4 v0, 0x0

    .line 233
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Status - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_95

    .line 236
    :cond_321
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Status> data==null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_95

    .line 247
    :cond_32c
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "DAC - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x0

    goto/16 :goto_c3

    .line 257
    :cond_338
    const/4 v0, 0x0

    .line 258
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_X:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Y:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_DAC_Z:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "DAC - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_118

    .line 264
    :cond_359
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "DAC> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_118

    .line 275
    :cond_364
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "ADC - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    goto/16 :goto_146

    .line 285
    :cond_370
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_X:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Y:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_ADC_Z:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "ADC - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19b

    .line 292
    :cond_391
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "ADC> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19b

    .line 303
    :cond_39c
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Self - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    goto/16 :goto_1ca

    .line 311
    :cond_3a8
    const/4 v0, 0x0

    .line 312
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SX:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_SY:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Self - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20c

    .line 317
    :cond_3c2
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Self> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20c

    .line 328
    :cond_3cd
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Offset - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    goto/16 :goto_23a

    .line 338
    :cond_3d9
    const/4 v0, 0x0

    .line 339
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_X:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Y:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->mText_Offset_H_Z:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Offset - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28f

    .line 345
    :cond_3fa
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "OffsetH> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28f

    .line 353
    :cond_405
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Released - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v0, 0x0

    goto/16 :goto_2a8

    .line 358
    :cond_411
    const/4 v0, 0x0

    .line 359
    const-string v1, "FragmentGeomagneticYamaha"

    const-string v2, "update"

    const-string v3, "Released - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c4

    .line 363
    :cond_41d
    const-string v1, "FAIL"

    goto/16 :goto_2ca

    .line 364
    :cond_421
    const/high16 v1, -0x1

    goto/16 :goto_2d4

    .line 369
    :cond_425
    sget v1, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GEOMAGNETIC_FAIL:I

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2de
.end method
