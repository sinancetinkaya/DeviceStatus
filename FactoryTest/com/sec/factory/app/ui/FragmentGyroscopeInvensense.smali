.class public Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;
.super Landroid/app/Fragment;
.source "FragmentGyroscopeInvensense.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private mTextResult:Landroid/widget/TextView;

.field private mText_Initialized:Landroid/widget/TextView;

.field private mText_Initialized_Title:Landroid/widget/TextView;

.field private mText_Noise_Bias_Title:Landroid/widget/TextView;

.field private mText_Noise_Bias_X:Landroid/widget/TextView;

.field private mText_Noise_Bias_Y:Landroid/widget/TextView;

.field private mText_Noise_Bias_Z:Landroid/widget/TextView;

.field private mText_Noise_Power_Title:Landroid/widget/TextView;

.field private mText_Noise_Power_X:Landroid/widget/TextView;

.field private mText_Noise_Power_Y:Landroid/widget/TextView;

.field private mText_Noise_Power_Z:Landroid/widget/TextView;

.field private mText_Result_Title:Landroid/widget/TextView;

.field private mText_Sensor_Result:Landroid/widget/TextView;

.field private mText_Temperature:Landroid/widget/TextView;

.field private mText_Temperature_Title:Landroid/widget/TextView;

.field private mText_Title:Landroid/widget/TextView;

.field private mText_X_Title:Landroid/widget/TextView;

.field private mText_Y_Title:Landroid/widget/TextView;

.field private mText_Z_Title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 21
    const-string v0, "FragmentGyroscopeInvensense"

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->CLASS_NAME:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private inti(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 61
    const v0, 0x7f09001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Title:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f09001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Initialized_Title:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f090020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Initialized:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f090049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Temperature_Title:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f09004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Temperature:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f090024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_X_Title:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f090025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Y_Title:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f090026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Z_Title:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f09004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Title:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f09004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_X:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f09004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Y:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f09004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Z:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f09004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Title:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f090050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_X:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f090051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Y:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f090052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Z:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f090053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Result_Title:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mTextResult:Landroid/widget/TextView;

    .line 89
    return-void
.end method

.method private setUIRate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 92
    const/16 v1, 0x15

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getUIRate(Ljava/lang/String;)F

    move-result v0

    .line 94
    .local v0, rate:F
    const-string v1, "FragmentGyroscopeInvensense"

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

    .line 96
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_108

    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_108

    .line 98
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 100
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Initialized_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Initialized_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 102
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Initialized:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Initialized:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Temperature_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Temperature_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 107
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Temperature:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Temperature:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_X_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_X_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 112
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Y_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Y_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Z_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Z_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_X:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_X:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 121
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Y:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Z:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 126
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_X:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_X:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 130
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Y:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 132
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Z:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Result_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Result_Title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mTextResult:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mTextResult:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 144
    :cond_108
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

    .line 52
    const-string v1, "FragmentGyroscopeInvensense"

    const-string v2, "onCreateView"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const v1, 0x7f030008

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->inti(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->setUIRate()V

    .line 56
    return-object v0
.end method

.method public update(Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;Landroid/os/Handler;)V
    .registers 13
    .parameter "data"
    .parameter "handler"

    .prologue
    const/high16 v2, -0x1

    const/high16 v9, 0x41a0

    const/high16 v8, 0x40a0

    const/high16 v7, -0x3e60

    const/high16 v6, -0x3f60

    .line 147
    const-string v1, "FragmentGyroscopeInvensense"

    const-string v3, "update"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    .line 151
    .local v0, isPass:Z
    if-eqz p1, :cond_20

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mInitialized:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 152
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Initialized:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mInitialized:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_20
    if-eqz p1, :cond_1bb

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mTemperature:Ljava/lang/String;

    if-eqz v1, :cond_1bb

    .line 157
    const-string v1, "FragmentGyroscopeInvensense"

    const-string v3, "update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Temperature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mTemperature:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Temperature:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mTemperature:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_49
    if-eqz p1, :cond_1c9

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Result:Ljava/lang/String;

    if-eqz v1, :cond_1c9

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_X:Ljava/lang/String;

    if-eqz v1, :cond_1c9

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Y:Ljava/lang/String;

    if-eqz v1, :cond_1c9

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Z:Ljava/lang/String;

    if-eqz v1, :cond_1c9

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_X:Ljava/lang/String;

    if-eqz v1, :cond_1c9

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_Y:Ljava/lang/String;

    if-eqz v1, :cond_1c9

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_Z:Ljava/lang/String;

    if-eqz v1, :cond_1c9

    .line 167
    const-string v1, "FragmentGyroscopeInvensense"

    const-string v3, "update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Noise Bias : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_X:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "FragmentGyroscopeInvensense"

    const-string v3, "update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Noise Power : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_X:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_Y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_Z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_X:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_X:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Y:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Y:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Z:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Z:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_X:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_X:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Y:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_Y:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Z:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_Z:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const-string v1, "FragmentGyroscopeInvensense"

    const-string v3, "update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReturnValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Result:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_120

    .line 180
    const/4 v0, 0x0

    .line 186
    :cond_120
    const/4 v1, 0x1

    if-ne v0, v1, :cond_15f

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_X:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpg-float v1, v1, v9

    if-gtz v1, :cond_15f

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Y:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpg-float v1, v1, v9

    if-gtz v1, :cond_15f

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Z:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpg-float v1, v1, v9

    if-gtz v1, :cond_15f

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_X:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_15f

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Y:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_15f

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Z:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, v7

    if-gez v1, :cond_160

    .line 190
    :cond_15f
    const/4 v0, 0x0

    .line 192
    :cond_160
    const/4 v1, 0x1

    if-ne v0, v1, :cond_19f

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_X:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_19f

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_Y:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_19f

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_Z:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_19f

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_X:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_19f

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_Y:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_19f

    iget-object v1, p1, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_Z:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, v6

    if-gez v1, :cond_1a0

    .line 196
    :cond_19f
    const/4 v0, 0x0

    .line 198
    :cond_1a0
    iget-object v3, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mTextResult:Landroid/widget/TextView;

    if-eqz v0, :cond_1c4

    const-string v1, "PASS"

    :goto_1a6
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v3, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mTextResult:Landroid/widget/TextView;

    if-eqz v0, :cond_1c7

    const v1, -0xffff01

    :goto_1b0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    :goto_1b3
    if-eqz v0, :cond_20c

    .line 216
    sget v1, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GYROSCOPE_PASS:I

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    :goto_1ba
    return-void

    .line 160
    :cond_1bb
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Temperature:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_49

    .line 198
    :cond_1c4
    const-string v1, "FAIL"

    goto :goto_1a6

    :cond_1c7
    move v1, v2

    .line 199
    goto :goto_1b0

    .line 201
    :cond_1c9
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_X:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Y:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Bias_Z:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_X:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Y:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Noise_Power_Z:Landroid/widget/TextView;

    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Sensor_Result:Landroid/widget/TextView;

    const-string v3, "FAIL"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mText_Sensor_Result:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mTextResult:Landroid/widget/TextView;

    const-string v3, "FAIL"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->mTextResult:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1b3

    .line 218
    :cond_20c
    sget v1, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GYROSCOPE_FAIL:I

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1ba
.end method
