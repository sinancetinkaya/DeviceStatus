.class public Lcom/sec/factory/app/ui/UITSP;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UITSP.java"


# instance fields
.field private final FINISH_TSP_PATTERN_TEST:I

.field private final FINISH_TSP_REFERENCE_MODE_TEST:I

.field private final REQUEST_TSP_PATTERN_TEST:I

.field private final REQUEST_TSP_REFERENCE_MODE_TEST:I

.field private TSP_REFERENCE_MODE_RESULT:Z

.field private mDeviceType:Ljava/lang/String;

.field private mLcdType:Ljava/lang/String;

.field private mTestCase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 23
    const-string v0, "UITSP"

    invoke-direct {p0, v0, v3}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 12
    iput v2, p0, Lcom/sec/factory/app/ui/UITSP;->REQUEST_TSP_REFERENCE_MODE_TEST:I

    .line 13
    iput v1, p0, Lcom/sec/factory/app/ui/UITSP;->REQUEST_TSP_PATTERN_TEST:I

    .line 14
    iput v2, p0, Lcom/sec/factory/app/ui/UITSP;->FINISH_TSP_REFERENCE_MODE_TEST:I

    .line 15
    iput v1, p0, Lcom/sec/factory/app/ui/UITSP;->FINISH_TSP_PATTERN_TEST:I

    .line 16
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UITSP;->TSP_REFERENCE_MODE_RESULT:Z

    .line 17
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITSP;->mTestCase:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private start(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 81
    packed-switch p1, :pswitch_data_ba

    .line 113
    :cond_5
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSP;->setTestResult(B)V

    .line 114
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITSP;->finish()V

    .line 117
    :goto_d
    return-void

    .line 83
    :pswitch_e
    const-string v0, "OCTA"

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSP;->mLcdType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "tablet"

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSP;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 84
    :cond_22
    const-string v0, "IS_TSP_STANDARD"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UITSPSelfTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/sec/factory/app/ui/UITSP;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 89
    :cond_35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UITspReferenceMode;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/sec/factory/app/ui/UITSP;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 94
    :cond_40
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSP;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "start"

    const-string v2, "mLcdType:TFT , mDeviceType:phone"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :pswitch_49
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSP;->mTestCase:Ljava/lang/String;

    const-string v1, "PATTERN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 98
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSP;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onActivityResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/factory/app/ui/UITSP;->TSP_REFERENCE_MODE_RESULT:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UITspPattern;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const-string v1, "TEST_TSP_SELF"

    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UITSP;->TSP_REFERENCE_MODE_RESULT:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0, v4}, Lcom/sec/factory/app/ui/UITSP;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 104
    :cond_81
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSP;->mTestCase:Ljava/lang/String;

    const-string v1, "STYLE_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITSP;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onActivityResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/factory/app/ui/UITSP;->TSP_REFERENCE_MODE_RESULT:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UITspPatternStyleX;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const-string v1, "TEST_TSP_SELF"

    iget-boolean v2, p0, Lcom/sec/factory/app/ui/UITSP;->TSP_REFERENCE_MODE_RESULT:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0, v4}, Lcom/sec/factory/app/ui/UITSP;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 81
    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_e
        :pswitch_49
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v3, 0x2c

    const/16 v2, 0xa

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/sec/factory/app/ui/UIBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 48
    packed-switch p1, :pswitch_data_44

    .line 78
    :goto_c
    return-void

    .line 50
    :pswitch_d
    if-ne p2, v0, :cond_15

    .line 51
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UITSP;->TSP_REFERENCE_MODE_RESULT:Z

    .line 52
    invoke-direct {p0, v1}, Lcom/sec/factory/app/ui/UITSP;->start(I)V

    goto :goto_c

    .line 55
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UITSP;->TSP_REFERENCE_MODE_RESULT:Z

    .line 57
    iget v0, p0, Lcom/sec/factory/app/ui/UITSP;->TEST_ID:I

    if-eq v3, v0, :cond_23

    .line 58
    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UITSP;->setTestResultFailCase(B)V

    .line 62
    :goto_1f
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITSP;->finish()V

    goto :goto_c

    .line 60
    :cond_23
    iget v0, p0, Lcom/sec/factory/app/ui/UITSP;->TEST_ID:I

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSP;->setTestResultFailCase(B)V

    goto :goto_1f

    .line 67
    :pswitch_2a
    if-ne p2, v0, :cond_35

    .line 68
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSP;->setTestResult(B)V

    .line 75
    :goto_31
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITSP;->finish()V

    goto :goto_c

    .line 70
    :cond_35
    iget v0, p0, Lcom/sec/factory/app/ui/UITSP;->TEST_ID:I

    if-eq v3, v0, :cond_3d

    .line 71
    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UITSP;->setTestResultFailCase(B)V

    goto :goto_31

    .line 73
    :cond_3d
    iget v0, p0, Lcom/sec/factory/app/ui/UITSP;->TEST_ID:I

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITSP;->setTestResultFailCase(B)V

    goto :goto_31

    .line 48
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_d
        :pswitch_2a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITSP;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    .local v0, i:Landroid/content/Intent;
    const-string v1, "requestCode"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UITSP;->setTestId(I)V

    .line 32
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITSP;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onCreate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEST_ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UITSP;->TEST_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "PANEL_TYPE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UITSP;->mLcdType:Ljava/lang/String;

    .line 35
    const-string v1, "DEVICE_TYPE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UITSP;->mDeviceType:Ljava/lang/String;

    .line 36
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/factory/app/ui/UITSP;->start(I)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 43
    return-void
.end method
