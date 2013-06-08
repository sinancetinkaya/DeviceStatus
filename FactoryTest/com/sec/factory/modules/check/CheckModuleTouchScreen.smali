.class public Lcom/sec/factory/modules/check/CheckModuleTouchScreen;
.super Landroid/app/Activity;
.source "CheckModuleTouchScreen.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mStep:I

    .line 26
    new-instance v0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen$1;-><init>(Lcom/sec/factory/modules/check/CheckModuleTouchScreen;)V

    iput-object v0, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/modules/check/CheckModuleTouchScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->startTest()V

    return-void
.end method

.method private resultRead(I)Ljava/lang/String;
    .registers 9
    .parameter "readNumber"

    .prologue
    .line 89
    iget-object v5, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v6, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__VENDOR_NAME:I

    invoke-virtual {v5, v6}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, vendor:Ljava/lang/String;
    const-string v5, "SYNAPTICS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 93
    iget-object v5, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountX()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, temp:Ljava/lang/String;
    :goto_16
    iget-object v5, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    const-string v5, "NG"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    iget-object v5, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    const-string v5, "NA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 99
    :cond_2a
    const-string v2, "error => Channel"

    .line 110
    :cond_2c
    return-object v2

    .line 95
    .end local v3           #temp:Ljava/lang/String;
    :cond_2d
    iget-object v5, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountY()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #temp:Ljava/lang/String;
    goto :goto_16

    .line 101
    :cond_34
    iget-object v5, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v5}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountY()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 103
    .local v1, lineCount:I
    const-string v2, ""

    .line 104
    .local v2, result:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_45
    if-gt v0, v1, :cond_2c

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  Line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v6, p1, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult_Read(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    if-ge v0, v1, :cond_83

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_45
.end method

.method private startTest()V
    .registers 5

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mStep:I

    packed-switch v0, :pswitch_data_1e4

    .line 84
    :goto_5
    iget v0, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mStep:I

    .line 85
    iget-object v0, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    return-void

    .line 35
    :pswitch_14
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1. XML Setting\n  (1) Vendor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TSP_MANUFACTURE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (2) Panel Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PANEL_TYPE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (3) Device Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DEVICE_TYPE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 43
    :pswitch_66
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2. Common\n  (1) Vendor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v3, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__VENDOR_NAME:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (2) Chip : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChipName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (3) FW Ver Bin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPFirmwareVersionBinary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (4) FW Ver IC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPFirmwareVersionIC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (7) Channel X : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (8) Channel Y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 56
    :pswitch_fd
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3. Connection\n  (1) Spec(MIN/MAX) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TSP_SELFTEST_MIN"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TSP_SELFTEST_MAX"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (2) Spec(check) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    sget v3, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RESULT_CONNECTION:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 64
    :pswitch_14c
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4. Read1\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->resultRead(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 69
    :pswitch_172
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5. Read2\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->resultRead(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 74
    :pswitch_198
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "6. Read3\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->resultRead(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 79
    :pswitch_1be
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "7. Read4\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->resultRead(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 33
    :pswitch_data_1e4
    .packed-switch 0x0
        :pswitch_14
        :pswitch_66
        :pswitch_fd
        :pswitch_14c
        :pswitch_172
        :pswitch_198
        :pswitch_1be
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->setContentView(I)V

    .line 22
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleTouchScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    .line 23
    iget-object v0, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 24
    return-void
.end method
