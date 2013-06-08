.class public Lcom/sec/factory/app/ui/UIRgb;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIRgb.java"


# instance fields
.field private WHAT_EXIT:I

.field private WHAT_UPDATE:I

.field private mHandler:Landroid/os/Handler;

.field private mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

.field private mSensorID:[I

.field private mTextResult:Landroid/widget/TextView;

.field private mText_Temperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 25
    const-string v0, "UIRgb"

    const/16 v1, 0x23

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object v2, p0, Lcom/sec/factory/app/ui/UIRgb;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    .line 20
    iput-object v2, p0, Lcom/sec/factory/app/ui/UIRgb;->mSensorID:[I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIRgb;->WHAT_UPDATE:I

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UIRgb;->WHAT_EXIT:I

    .line 52
    new-instance v0, Lcom/sec/factory/app/ui/UIRgb$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIRgb$1;-><init>(Lcom/sec/factory/app/ui/UIRgb;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIRgb;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIRgb;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/sec/factory/app/ui/UIRgb;->WHAT_UPDATE:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIRgb;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIRgb;->update()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIRgb;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/sec/factory/app/ui/UIRgb;->WHAT_EXIT:I

    return v0
.end method

.method private update()V
    .registers 10

    .prologue
    const/high16 v4, -0x1

    const/4 v8, 0x2

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, data:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 77
    .local v0, cctResult:I
    const/4 v2, 0x0

    .line 80
    .local v2, isPass:Z
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIRgb;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT_CCT:I

    invoke-virtual {v3, v5}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_65

    .line 82
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIRgb;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "update"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Temperature : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIRgb;->mText_Temperature:Landroid/widget/TextView;

    aget-object v5, v1, v8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    .line 92
    :goto_3a
    const/16 v3, 0x283c

    if-ge v0, v3, :cond_43

    const/16 v3, 0x189c

    if-le v0, v3, :cond_43

    .line 93
    const/4 v2, 0x1

    .line 95
    :cond_43
    if-eqz v1, :cond_72

    .line 96
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIRgb;->mTextResult:Landroid/widget/TextView;

    if-eqz v2, :cond_6d

    const-string v3, "PASS"

    :goto_4b
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, p0, Lcom/sec/factory/app/ui/UIRgb;->mTextResult:Landroid/widget/TextView;

    if-eqz v2, :cond_70

    const v3, -0xffff01

    :goto_55
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    if-eqz v2, :cond_5f

    .line 99
    const/16 v3, 0x50

    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIRgb;->setTestResult(B)V

    .line 106
    :cond_5f
    :goto_5f
    if-eqz v2, :cond_64

    .line 107
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIRgb;->finishOnPassWithTimer()V

    .line 109
    :cond_64
    return-void

    .line 86
    :cond_65
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIRgb;->mText_Temperature:Landroid/widget/TextView;

    const-string v5, "NONE"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 96
    :cond_6d
    const-string v3, "FAIL"

    goto :goto_4b

    :cond_70
    move v3, v4

    .line 97
    goto :goto_55

    .line 102
    :cond_72
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIRgb;->mTextResult:Landroid/widget/TextView;

    const-string v5, "FAIL"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIRgb;->mTextResult:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5f
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIRgb;->setContentView(I)V

    .line 32
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIRgb;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    if-nez v0, :cond_40

    invoke-static {p0}, Lcom/sec/factory/modules/ModuleSensor;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleSensor;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Lcom/sec/factory/app/ui/UIRgb;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    .line 33
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIRgb;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT_CCT:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIRgb;->mSensorID:[I

    .line 39
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIRgb;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIRgb;->mSensorID:[I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 42
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIRgb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIRgb;->mText_Temperature:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIRgb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIRgb;->mTextResult:Landroid/widget/TextView;

    .line 45
    return-void

    .line 32
    :cond_40
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIRgb;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    goto :goto_11
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_1c

    .line 71
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 67
    :pswitch_8
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIRgb;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    const-string v2, "KEYCODE_VOLUME_DOWN"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIRgb;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIRgb;->WHAT_UPDATE:I

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 65
    nop

    :pswitch_data_1c
    .packed-switch 0x19
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 49
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIRgb;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 50
    return-void
.end method
