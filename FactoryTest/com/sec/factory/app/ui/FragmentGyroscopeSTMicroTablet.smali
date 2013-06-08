.class public Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;
.super Landroid/app/Fragment;
.source "FragmentGyroscopeSTMicroTablet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$DataGyroSTMicroTablet;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private mCalibrationPass:Z

.field private mGyroSelfTestLayout:Landroid/widget/TableLayout;

.field private mGyroZeroRateText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mSelfTestResults:[Ljava/lang/String;

.field private mZeroRatePass:Z

.field private txt_calibration:Landroid/widget/TextView;

.field private txt_diff_x:Landroid/widget/TextView;

.field private txt_diff_y:Landroid/widget/TextView;

.field private txt_diff_z:Landroid/widget/TextView;

.field private txt_self_x:Landroid/widget/TextView;

.field private txt_self_y:Landroid/widget/TextView;

.field private txt_self_z:Landroid/widget/TextView;

.field private txt_x:Landroid/widget/TextView;

.field private txt_xyz_x:Landroid/widget/TextView;

.field private txt_xyz_y:Landroid/widget/TextView;

.field private txt_xyz_z:Landroid/widget/TextView;

.field private txt_y:Landroid/widget/TextView;

.field private txt_z:Landroid/widget/TextView;

.field private txt_zerorate_x:Landroid/widget/TextView;

.field private txt_zerorate_y:Landroid/widget/TextView;

.field private txt_zerorate_z:Landroid/widget/TextView;

.field private txtresult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 23
    const-string v0, "FragmentGyroscopeSTMicroTablet"

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->CLASS_NAME:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mZeroRatePass:Z

    .line 57
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mCalibrationPass:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;)Landroid/widget/TableLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mGyroSelfTestLayout:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mSelfTestResults:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->showTestResults([Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private init(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 87
    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txtresult:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f09005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_x:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f09005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_y:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f09005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_z:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f09005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_xyz_x:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f090060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_xyz_y:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f090061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_xyz_z:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f090064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_self_x:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f090065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_self_y:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f090066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_self_z:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f090069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_diff_x:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f09006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_diff_y:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f09006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_diff_z:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f09006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_zerorate_x:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f09006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_zerorate_y:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f09006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_zerorate_z:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f090071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_calibration:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f090058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mGyroZeroRateText:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f090059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mGyroSelfTestLayout:Landroid/widget/TableLayout;

    .line 107
    return-void
.end method

.method private showTestResults([Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 11
    .parameter "results"
    .parameter "resultValue"
    .parameter "handler"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const v4, -0xffff01

    const/high16 v3, -0x1

    .line 168
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_xyz_x:Landroid/widget/TextView;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_xyz_y:Landroid/widget/TextView;

    aget-object v1, p1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_xyz_z:Landroid/widget/TextView;

    aget-object v1, p1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_self_x:Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_self_y:Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_self_z:Landroid/widget/TextView;

    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_zerorate_x:Landroid/widget/TextView;

    const/4 v1, 0x6

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_zerorate_y:Landroid/widget/TextView;

    const/4 v1, 0x7

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_zerorate_z:Landroid/widget/TextView;

    const/16 v1, 0x8

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_diff_x:Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_diff_y:Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, p1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_diff_z:Landroid/widget/TextView;

    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, p1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mCalibrationPass:Z

    if-eqz v0, :cond_ce

    .line 188
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_calibration:Landroid/widget/TextView;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_calibration:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    :goto_a4
    if-eqz p2, :cond_cd

    .line 196
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mZeroRatePass:Z

    if-eqz v0, :cond_dc

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 197
    const-string v0, "FragmentGyroscopeSTMicroTablet"

    const-string v1, "showTestResults"

    const-string v2, "resultValue catains TEST_SUCCESS"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txtresult:Landroid/widget/TextView;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 199
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txtresult:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    sget v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GYROSCOPE_PASS:I

    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    :cond_cd
    :goto_cd
    return-void

    .line 191
    :cond_ce
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_calibration:Landroid/widget/TextView;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txt_calibration:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a4

    .line 201
    :cond_dc
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 202
    const-string v0, "FragmentGyroscopeSTMicroTablet"

    const-string v1, "showTestResults"

    const-string v2, "resultValue catains TEST_FAIL"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txtresult:Landroid/widget/TextView;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txtresult:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    sget v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GYROSCOPE_FAIL:I

    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_cd

    .line 207
    :cond_100
    const-string v0, "FragmentGyroscopeSTMicroTablet"

    const-string v1, "showTestResults"

    const-string v2, "error: RETRY"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txtresult:Landroid/widget/TextView;

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txtresult:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_cd
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 80
    const-string v1, "FragmentGyroscopeSTMicroTablet"

    const-string v2, "onCreateView"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const v1, 0x7f03000a

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->init(Landroid/view/View;)V

    .line 83
    return-object v0
.end method

.method public update(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$DataGyroSTMicroTablet;Landroid/os/Handler;)V
    .registers 11
    .parameter "data"
    .parameter "handler"

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, resultValue:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mGyroZeroRateText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mGyroSelfTestLayout:Landroid/widget/TableLayout;

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 115
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txtresult:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txtresult:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :try_start_1e
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/sensors/gyro_sensor/selftest"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2000

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, selfTestResult:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mSelfTestResults:[Ljava/lang/String;

    .line 123
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mSelfTestResults:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    if-eqz v5, :cond_a3

    .line 124
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mSelfTestResults:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9f

    move v5, v3

    :goto_4b
    iput-boolean v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mZeroRatePass:Z

    .line 127
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mSelfTestResults:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a1

    :goto_5b
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mCalibrationPass:Z

    .line 135
    const-string v3, "FragmentGyroscopeSTMicroTablet"

    const-string v4, "update"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mZeroRatePass: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mZeroRatePass:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v3, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mZeroRatePass:Z

    if-eqz v3, :cond_de

    .line 138
    iget-object v3, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mGyroZeroRateText:Landroid/widget/TextView;

    const-string v4, "Zero Rate Level Check:  PASS"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v3, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mGyroZeroRateText:Landroid/widget/TextView;

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v3, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->txtresult:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v3, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$1;

    invoke-direct {v4, p0, p2}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$1;-><init>(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;Landroid/os/Handler;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    .end local v2           #selfTestResult:Ljava/lang/String;
    :goto_9e
    return-void

    .restart local v2       #selfTestResult:Ljava/lang/String;
    :cond_9f
    move v5, v4

    .line 124
    goto :goto_4b

    :cond_a1
    move v3, v4

    .line 127
    goto :goto_5b

    .line 130
    :cond_a3
    const-string v3, "FragmentGyroscopeSTMicroTablet"

    const-string v4, "parse error: Gyro self-test "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret selftest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_bd} :catch_be

    goto :goto_9e

    .line 161
    .end local v2           #selfTestResult:Ljava/lang/String;
    :catch_be
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FragmentGyroscopeSTMicroTablet"

    const-string v4, "update"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    .line 150
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #selfTestResult:Ljava/lang/String;
    :cond_de
    :try_start_de
    iget-object v3, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mGyroZeroRateText:Landroid/widget/TextView;

    const-string v4, "Zero Rate Level Check:  FAIL"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v3, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mGyroZeroRateText:Landroid/widget/TextView;

    const/high16 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v3, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$2;

    invoke-direct {v4, p0, p2}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$2;-><init>(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;Landroid/os/Handler;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_f8} :catch_be

    goto :goto_9e
.end method
