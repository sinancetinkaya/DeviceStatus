.class public Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;
.super Landroid/app/Fragment;
.source "FragmentGeomagneticAlps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private mTableRow_ADC:Landroid/widget/TableRow;

.field private mTableRow_Initialized:Landroid/widget/TableRow;

.field private mTableRow_Status:Landroid/widget/TableRow;

.field private mTextResult:Landroid/widget/TextView;

.field private mText_ADC_Title:Landroid/widget/TextView;

.field private mText_ADC_X:Landroid/widget/TextView;

.field private mText_ADC_Y:Landroid/widget/TextView;

.field private mText_ADC_Z:Landroid/widget/TextView;

.field private mText_Initialized:Landroid/widget/TextView;

.field private mText_Initialized_Title:Landroid/widget/TextView;

.field private mText_Status:Landroid/widget/TextView;

.field private mText_Status_Title:Landroid/widget/TextView;

.field private mText_Title:Landroid/widget/TextView;

.field private mText_X_Title:Landroid/widget/TextView;

.field private mText_Y_Title:Landroid/widget/TextView;

.field private mText_Z_Title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 28
    const-string v0, "FragmentGeomagneticAlps"

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->CLASS_NAME:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private init(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 67
    const-string v0, "FragmentGeomagneticAlps"

    const-string v1, "init"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const v0, 0x7f09001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Title:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f09001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mTableRow_Initialized:Landroid/widget/TableRow;

    .line 73
    const v0, 0x7f09001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Initialized_Title:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f090020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Initialized:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f090021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mTableRow_Status:Landroid/widget/TableRow;

    .line 77
    const v0, 0x7f090022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Status_Title:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f090023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Status:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f090024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_X_Title:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f090025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Y_Title:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f090026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Z_Title:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f090027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mTableRow_ADC:Landroid/widget/TableRow;

    .line 85
    const v0, 0x7f090028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Title:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f090029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_X:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f09002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Y:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f09002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Z:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mTextResult:Landroid/widget/TextView;

    .line 91
    return-void
.end method

.method private setUIRate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 94
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getUIRate(Ljava/lang/String;)F

    move-result v0

    .line 95
    .local v0, rate:F
    const-string v1, "FragmentGeomagneticAlps"

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

    .line 97
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_cc

    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_cc

    .line 99
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Initialized_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Initialized_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 102
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Initialized:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Initialized:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Status_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Status_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Status:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Status:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 107
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_X_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_X_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Y_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Y_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Z_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Z_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 112
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_X:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_X:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Y:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Z:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 116
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mTextResult:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mTextResult:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    :cond_cc
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

    .line 59
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "onCreateView"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const v1, 0x7f030005

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->init(Landroid/view/View;)V

    .line 62
    invoke-direct {p0}, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->setUIRate()V

    .line 63
    return-object v0
.end method

.method public update(Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;Landroid/os/Handler;)V
    .registers 10
    .parameter "data"
    .parameter "handler"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x1

    .line 125
    .local v0, isPass:Z
    if-eqz p1, :cond_164

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mIsDisplay_Initialized:Z

    if-ne v1, v6, :cond_164

    .line 126
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mTableRow_Initialized:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 127
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mInitialized:Ljava/lang/String;

    if-eqz v1, :cond_151

    .line 128
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mInitialized:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 129
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const-string v3, "Initialized - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_2d
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Initialized:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mInitialized:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initialized Return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mInitialized:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_50
    if-eqz p1, :cond_18e

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mIsDisplay_Status:Z

    if-ne v1, v6, :cond_18e

    .line 149
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mTableRow_Status:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 150
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mStatus:Ljava/lang/String;

    if-eqz v1, :cond_17b

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mStatus_Result:Ljava/lang/String;

    if-eqz v1, :cond_17b

    .line 151
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mStatus_Result:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 152
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const-string v3, "Status - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_76
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Status:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retuen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mStatus_Result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_a5
    if-eqz p1, :cond_1c6

    iget-boolean v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mIsDisplay_ADC:Z

    if-ne v1, v6, :cond_1c6

    .line 172
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mTableRow_ADC:Landroid/widget/TableRow;

    invoke-virtual {v1, v5}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 173
    if-eqz p1, :cond_1a5

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_X:Ljava/lang/String;

    if-eqz v1, :cond_1a5

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_Y:Ljava/lang/String;

    if-eqz v1, :cond_1a5

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_Z:Ljava/lang/String;

    if-eqz v1, :cond_1a5

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_Result:Ljava/lang/String;

    if-eqz v1, :cond_1a5

    .line 174
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_Result:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_199

    .line 175
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const-string v3, "ADC - Pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_d5
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_X:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Y:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Z:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retuen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_Result:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", [ADC]X:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_X:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_Y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Z:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_Z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_12a
    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mTextResult:Landroid/widget/TextView;

    if-eqz v0, :cond_1d1

    const-string v1, "PASS"

    :goto_130
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mTextResult:Landroid/widget/TextView;

    if-eqz v0, :cond_1d5

    const v1, -0xffff01

    :goto_13a
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    if-eqz v0, :cond_1d9

    sget v1, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GEOMAGNETIC_PASS:I

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    :goto_144
    return-void

    .line 131
    :cond_145
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const-string v3, "Initialized - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    goto/16 :goto_2d

    .line 138
    :cond_151
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Initialized:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const-string v3, "Initialized - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50

    .line 144
    :cond_164
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const-string v3, "Initialized> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50

    .line 154
    :cond_16f
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const-string v3, "Status - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    goto/16 :goto_76

    .line 161
    :cond_17b
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_Status:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const-string v3, "Status - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a5

    .line 167
    :cond_18e
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const-string v3, "Status> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a5

    .line 177
    :cond_199
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const-string v3, "ADC - Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    goto/16 :goto_d5

    .line 187
    :cond_1a5
    const/4 v0, 0x0

    .line 188
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_X:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Y:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->mText_ADC_Z:Landroid/widget/TextView;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const-string v3, "ADC - Fail : null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12a

    .line 195
    :cond_1c6
    const-string v1, "FragmentGeomagneticAlps"

    const-string v2, "update"

    const-string v3, "ADC> data==null || Display==false"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12a

    .line 199
    :cond_1d1
    const-string v1, "FAIL"

    goto/16 :goto_130

    .line 200
    :cond_1d5
    const/high16 v1, -0x1

    goto/16 :goto_13a

    .line 203
    :cond_1d9
    sget v1, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GEOMAGNETIC_FAIL:I

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_144
.end method
