.class public Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;
.super Landroid/app/Fragment;
.source "FragmentGyroscopeSTMicroSmartphone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$DataGyroSTMicroSmartphone;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private mGyroSelfTestLayout:Landroid/widget/TableLayout;

.field private mGyroZeroRateText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mSelfTestResults:[Ljava/lang/String;

.field private mZeroRatePass:Z

.field private txt_X:Landroid/widget/TextView;

.field private txt_Y:Landroid/widget/TextView;

.field private txt_Z:Landroid/widget/TextView;

.field private txt_diff_x:Landroid/widget/TextView;

.field private txt_diff_y:Landroid/widget/TextView;

.field private txt_diff_z:Landroid/widget/TextView;

.field private txt_fifo_result:Landroid/widget/TextView;

.field private txt_fifo_subject:Landroid/widget/TextView;

.field private txt_prime_x:Landroid/widget/TextView;

.field private txt_prime_y:Landroid/widget/TextView;

.field private txt_prime_z:Landroid/widget/TextView;

.field private txt_sub1:Landroid/widget/TextView;

.field private txt_sub2:Landroid/widget/TextView;

.field private txt_sub3:Landroid/widget/TextView;

.field private txt_xyz_add:Landroid/widget/TextView;

.field private txt_xyz_x:Landroid/widget/TextView;

.field private txt_xyz_y:Landroid/widget/TextView;

.field private txt_xyz_z:Landroid/widget/TextView;

.field private txt_xyzprime_add:Landroid/widget/TextView;

.field private txtresult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 23
    const-string v0, "FragmentGyroscopeSTMicroSmartphone"

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->CLASS_NAME:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mZeroRatePass:Z

    .line 77
    new-instance v0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$1;-><init>(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;)Landroid/widget/TableLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mGyroSelfTestLayout:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mSelfTestResults:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->showTestResults([Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private init(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 97
    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txtresult:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f090062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_xyz_add:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f090067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_xyzprime_add:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f09005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_X:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f09005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_Y:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f09005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_Z:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f09005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_sub1:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f090063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_sub2:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f090068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_sub3:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f09005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_xyz_x:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f090060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_xyz_y:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f090061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_xyz_z:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f090064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_prime_x:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f090065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_prime_y:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f090066

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_prime_z:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f090069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_diff_x:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f09006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_diff_y:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f09006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_diff_z:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f090056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_fifo_subject:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f090057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_fifo_result:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f090058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mGyroZeroRateText:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f090059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mGyroSelfTestLayout:Landroid/widget/TableLayout;

    .line 120
    return-void
.end method

.method private showTestResults([Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 11
    .parameter "results"
    .parameter "resultValue"
    .parameter "handler"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x1

    .line 249
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_xyz_x:Landroid/widget/TextView;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_xyz_y:Landroid/widget/TextView;

    aget-object v1, p1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_xyz_z:Landroid/widget/TextView;

    aget-object v1, p1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_prime_x:Landroid/widget/TextView;

    aget-object v1, p1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_prime_y:Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_prime_z:Landroid/widget/TextView;

    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_diff_x:Landroid/widget/TextView;

    aget-object v1, p1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_diff_y:Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txt_diff_z:Landroid/widget/TextView;

    const/4 v1, 0x5

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

    .line 264
    if-eqz p2, :cond_99

    .line 265
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mZeroRatePass:Z

    if-eqz v0, :cond_9a

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 266
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txtresult:Landroid/widget/TextView;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 267
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txtresult:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    sget v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GYROSCOPE_PASS:I

    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    :cond_99
    :goto_99
    return-void

    .line 273
    :cond_9a
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 274
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txtresult:Landroid/widget/TextView;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txtresult:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_99

    .line 278
    :cond_b0
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txtresult:Landroid/widget/TextView;

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txtresult:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_99
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 90
    const-string v1, "FragmentGyroscopeSTMicroSmartphone"

    const-string v2, "onCreateView"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const v1, 0x7f030009

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->init(Landroid/view/View;)V

    .line 93
    return-object v0
.end method

.method public update(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$DataGyroSTMicroSmartphone;Landroid/os/Handler;)V
    .registers 11
    .parameter "data"
    .parameter "handler"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 123
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, resultValue:Ljava/lang/String;
    const/4 v2, 0x1

    .line 172
    .local v2, resultValue_Int:I
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mGyroZeroRateText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mGyroSelfTestLayout:Landroid/widget/TableLayout;

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 174
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txtresult:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txtresult:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :try_start_1e
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/sensors/gyro_sensor/selftest"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2000

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, selfTestResult:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mSelfTestResults:[Ljava/lang/String;

    .line 182
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mSelfTestResults:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    if-eqz v5, :cond_4b

    .line 183
    iget-object v5, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mSelfTestResults:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    const/4 v4, 0x1

    :cond_49
    iput-boolean v4, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mZeroRatePass:Z

    .line 185
    :cond_4b
    iget-boolean v4, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mZeroRatePass:Z

    if-eqz v4, :cond_71

    .line 186
    iget-object v4, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mGyroZeroRateText:Landroid/widget/TextView;

    const-string v5, "Zero Rate Level Check:  PASS"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v4, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mGyroZeroRateText:Landroid/widget/TextView;

    const v5, -0xffff01

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object v4, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->txtresult:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v4, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$2;

    invoke-direct {v5, p0, p2}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$2;-><init>(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;Landroid/os/Handler;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    .end local v3           #selfTestResult:Ljava/lang/String;
    :goto_70
    return-void

    .line 197
    .restart local v3       #selfTestResult:Ljava/lang/String;
    :cond_71
    iget-object v4, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mGyroZeroRateText:Landroid/widget/TextView;

    const-string v5, "Zero Rate Level Check:  FAIL"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v4, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mGyroZeroRateText:Landroid/widget/TextView;

    const/high16 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v4, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$3;

    invoke-direct {v5, p0, p2}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$3;-><init>(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;Landroid/os/Handler;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_8b} :catch_8c

    goto :goto_70

    .line 208
    .end local v3           #selfTestResult:Ljava/lang/String;
    :catch_8c
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_70
.end method
