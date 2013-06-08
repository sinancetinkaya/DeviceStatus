.class public Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;
.super Landroid/app/Fragment;
.source "FragmentGeomagneticAsahi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private mTableRow_ADC:Landroid/widget/TableRow;

.field private mTableRow_DAC:Landroid/widget/TableRow;

.field private mTableRow_HX:Landroid/widget/TableRow;

.field private mTableRow_HY:Landroid/widget/TableRow;

.field private mTableRow_HZ:Landroid/widget/TableRow;

.field private mTableRow_Initialized:Landroid/widget/TableRow;

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

.field private mText_HX:Landroid/widget/TextView;

.field private mText_HX_Title:Landroid/widget/TextView;

.field private mText_HY:Landroid/widget/TextView;

.field private mText_HY_Title:Landroid/widget/TextView;

.field private mText_HZ:Landroid/widget/TextView;

.field private mText_HZ_Title:Landroid/widget/TextView;

.field private mText_Initialized:Landroid/widget/TextView;

.field private mText_Initialized_Title:Landroid/widget/TextView;

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
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 36
    const-string v0, "FragmentGeomagneticAsahi"

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->CLASS_NAME:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private init(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 87
    const-string v0, "FragmentGeomagneticAsahi"

    const-string v1, "init"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const v0, 0x7f09001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Title:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f09001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_Initialized:Landroid/widget/TableRow;

    .line 93
    const v0, 0x7f09001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Initialized_Title:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f090020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Initialized:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f09002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_Temp:Landroid/widget/TableRow;

    .line 97
    const v0, 0x7f09002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Temp_Title:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f09002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Temp:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f090030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_HX:Landroid/widget/TableRow;

    .line 101
    const v0, 0x7f090031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HX_Title:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HX:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f090033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_HY:Landroid/widget/TableRow;

    .line 105
    const v0, 0x7f090034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HY_Title:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f090035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HY:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f090036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_HZ:Landroid/widget/TableRow;

    .line 109
    const v0, 0x7f090037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HZ_Title:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f090038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HZ:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f090024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_X_Title:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f090025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Y_Title:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f090026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Z_Title:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f090039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_DAC:Landroid/widget/TableRow;

    .line 117
    const v0, 0x7f09003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Title:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f09003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_X:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f09003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Y:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f09003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Z:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f090027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_ADC:Landroid/widget/TableRow;

    .line 123
    const v0, 0x7f090028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Title:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f090029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_X:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f09002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Y:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f09002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Z:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTextResult:Landroid/widget/TextView;

    .line 129
    return-void
.end method

.method private setUIRate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 132
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getUIRate(Ljava/lang/String;)F

    move-result v0

    .line 134
    .local v0, rate:F
    const-string v1, "FragmentGeomagneticAsahi"

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

    .line 136
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_144

    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_144

    .line 138
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Initialized_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Initialized_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Initialized:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Initialized:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Temp_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Temp_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Temp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Temp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 149
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HX_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HX_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 151
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HX:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 152
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HY_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HY_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 154
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HY:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HY:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 155
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HZ_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HZ_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 157
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HZ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HZ:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_X_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_X_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Y_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Y_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Z_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Z_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 166
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 168
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_X:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_X:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 169
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Y:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 170
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Z:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 172
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 174
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_X:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_X:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 175
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Y:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 176
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Z:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 178
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTextResult:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTextResult:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    :cond_144
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

    .line 79
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "onCreateView"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const v1, 0x7f030006

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->init(Landroid/view/View;)V

    .line 82
    invoke-direct {p0}, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->setUIRate()V

    .line 83
    return-object v0
.end method

.method public update(Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;Landroid/os/Handler;)V
    .registers 10
    .parameter "data"
    .parameter "handler"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 183
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x1

    .line 187
    .local v0, isPass:Z
    if-eqz p1, :cond_274

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mIsDisplay_Initialized:Z

    if-ne v1, v6, :cond_274

    .line 188
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_Initialized:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 189
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mInitialized:Ljava/lang/String;

    if-eqz v1, :cond_261

    .line 190
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mInitialized:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_255

    .line 191
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "Initialized - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_2d
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Initialized:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mInitialized:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initialized Return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mInitialized:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_50
    if-eqz p1, :cond_29e

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mIsDisplay_Temperature:Z

    if-ne v1, v6, :cond_29e

    .line 209
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_Temp:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 210
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mTemperature:Ljava/lang/String;

    if-eqz v1, :cond_28b

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mTemperature_Result:Ljava/lang/String;

    if-eqz v1, :cond_28b

    .line 211
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mTemperature_Result:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27f

    .line 212
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "Temperature - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_76
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Temp:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mTemperature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retuen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mTemperature_Result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Temperature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mTemperature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_a5
    if-eqz p1, :cond_2d6

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mIsDisplay_Self:Z

    if-ne v1, v6, :cond_2d6

    .line 231
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_HX:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_HY:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_HZ:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 234
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_X:Ljava/lang/String;

    if-eqz v1, :cond_2b5

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Y:Ljava/lang/String;

    if-eqz v1, :cond_2b5

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Z:Ljava/lang/String;

    if-eqz v1, :cond_2b5

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Result:Ljava/lang/String;

    if-eqz v1, :cond_2b5

    .line 236
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Result:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a9

    .line 237
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "HX/HY/HZ - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_dd
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HX:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HY:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HZ:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retuen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_X:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HZ:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_132
    if-eqz p1, :cond_30e

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mIsDisplay_DAC:Z

    if-ne v1, v6, :cond_30e

    .line 260
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_DAC:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 261
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_X:Ljava/lang/String;

    if-eqz v1, :cond_2ed

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Y:Ljava/lang/String;

    if-eqz v1, :cond_2ed

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Z:Ljava/lang/String;

    if-eqz v1, :cond_2ed

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Result:Ljava/lang/String;

    if-eqz v1, :cond_2ed

    .line 263
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Result:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e1

    .line 264
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "DAC - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_160
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_X:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Y:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Z:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retuen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", [DAC]X:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_X:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Z:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_1b5
    if-eqz p1, :cond_346

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mIsDisplay_ADC:Z

    if-ne v1, v6, :cond_346

    .line 288
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTableRow_ADC:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 289
    if-eqz p1, :cond_325

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_X:Ljava/lang/String;

    if-eqz v1, :cond_325

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Y:Ljava/lang/String;

    if-eqz v1, :cond_325

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Z:Ljava/lang/String;

    if-eqz v1, :cond_325

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Result:Ljava/lang/String;

    if-eqz v1, :cond_325

    .line 291
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Result:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_319

    .line 292
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "ADC - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_1e5
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_X:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Y:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Z:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retuen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", [ADC]X:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_X:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Z:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_23a
    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTextResult:Landroid/widget/TextView;

    if-eqz v0, :cond_351

    const-string v1, "PASS"

    :goto_240
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mTextResult:Landroid/widget/TextView;

    if-eqz v0, :cond_355

    const v1, -0xffff01

    :goto_24a
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    if-eqz v0, :cond_359

    .line 319
    sget v1, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GEOMAGNETIC_PASS:I

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    :goto_254
    return-void

    .line 193
    :cond_255
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "Initialized - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    goto/16 :goto_2d

    .line 199
    :cond_261
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Initialized:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "Initialized - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50

    .line 204
    :cond_274
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "Initialized> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50

    .line 214
    :cond_27f
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "Temperature - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    goto/16 :goto_76

    .line 221
    :cond_28b
    const/4 v0, 0x0

    .line 222
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_Temp:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "Temperature - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a5

    .line 226
    :cond_29e
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "Temperature> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a5

    .line 239
    :cond_2a9
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "HX/HY/HZ - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x0

    goto/16 :goto_dd

    .line 248
    :cond_2b5
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HX:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HY:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_HZ:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "HX/HY/HZ - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_132

    .line 255
    :cond_2d6
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "Self> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_132

    .line 266
    :cond_2e1
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "DAC - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    goto/16 :goto_160

    .line 276
    :cond_2ed
    const/4 v0, 0x0

    .line 277
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_X:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Y:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_DAC_Z:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "DAC - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b5

    .line 283
    :cond_30e
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "DAC> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b5

    .line 294
    :cond_319
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "ADC - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    goto/16 :goto_1e5

    .line 304
    :cond_325
    const/4 v0, 0x0

    .line 305
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_X:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Y:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->mText_ADC_Z:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "ADC - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23a

    .line 311
    :cond_346
    const-string v1, "FragmentGeomagneticAsahi"

    const-string v2, "update"

    const-string v3, "ADC> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23a

    .line 315
    :cond_351
    const-string v1, "FAIL"

    goto/16 :goto_240

    .line 316
    :cond_355
    const/high16 v1, -0x1

    goto/16 :goto_24a

    .line 321
    :cond_359
    sget v1, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GEOMAGNETIC_FAIL:I

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_254
.end method
