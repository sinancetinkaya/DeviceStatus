.class public Lcom/sec/factory/app/ui/UILedTest;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UILedTest.java"


# static fields
.field private static textColor:Landroid/widget/TextView;


# instance fields
.field private final BLACK_BLUE:I

.field private final BLACK_FINISH:I

.field private final BLACK_GREEN:I

.field private final BLACK_RED:I

.field private final BLACK_START:I

.field private final BLACK_WHITE:I

.field private isLedSupport:Z

.field private isMotorSupport:Z

.field private mIsLongPress:Z

.field private mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

.field private mTestCase:Ljava/lang/String;

.field private test_state:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v0, "UILedTest"

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;)V

    .line 24
    iput v1, p0, Lcom/sec/factory/app/ui/UILedTest;->BLACK_START:I

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UILedTest;->BLACK_RED:I

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UILedTest;->BLACK_GREEN:I

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/app/ui/UILedTest;->BLACK_BLUE:I

    .line 28
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/app/ui/UILedTest;->BLACK_WHITE:I

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/factory/app/ui/UILedTest;->BLACK_FINISH:I

    .line 31
    iput v1, p0, Lcom/sec/factory/app/ui/UILedTest;->test_state:I

    .line 32
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UILedTest;->mIsLongPress:Z

    .line 34
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mTestCase:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private changeTestLevel(I)V
    .registers 8
    .parameter "state"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 98
    packed-switch p1, :pswitch_data_d0

    .line 145
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "changeTestLevel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default, test_state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UILedTest;->test_state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_24
    return-void

    .line 100
    :pswitch_25
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->isLedSupport:Z

    if-eqz v0, :cond_2e

    .line 101
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0, v2}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    .line 103
    :cond_2e
    iput v1, p0, Lcom/sec/factory/app/ui/UILedTest;->test_state:I

    .line 104
    sget-object v0, Lcom/sec/factory/app/ui/UILedTest;->textColor:Landroid/widget/TextView;

    const-string v1, "RED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    sget-object v0, Lcom/sec/factory/app/ui/UILedTest;->textColor:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "changeTestLevel"

    const-string v2, "START -> RED"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 109
    :pswitch_48
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->isLedSupport:Z

    if-eqz v0, :cond_51

    .line 110
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    .line 112
    :cond_51
    iput v2, p0, Lcom/sec/factory/app/ui/UILedTest;->test_state:I

    .line 113
    sget-object v0, Lcom/sec/factory/app/ui/UILedTest;->textColor:Landroid/widget/TextView;

    const-string v1, "GREEN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    sget-object v0, Lcom/sec/factory/app/ui/UILedTest;->textColor:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "changeTestLevel"

    const-string v2, "RED -> GREEN"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 118
    :pswitch_6c
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->isLedSupport:Z

    if-eqz v0, :cond_75

    .line 119
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    .line 121
    :cond_75
    iput v4, p0, Lcom/sec/factory/app/ui/UILedTest;->test_state:I

    .line 122
    sget-object v0, Lcom/sec/factory/app/ui/UILedTest;->textColor:Landroid/widget/TextView;

    const-string v1, "BLUE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    sget-object v0, Lcom/sec/factory/app/ui/UILedTest;->textColor:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "changeTestLevel"

    const-string v2, "GREEN -> BLUE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 127
    :pswitch_90
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->isLedSupport:Z

    if-eqz v0, :cond_99

    .line 128
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    .line 130
    :cond_99
    iput v5, p0, Lcom/sec/factory/app/ui/UILedTest;->test_state:I

    .line 131
    sget-object v0, Lcom/sec/factory/app/ui/UILedTest;->textColor:Landroid/widget/TextView;

    const-string v1, "WHITE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    sget-object v0, Lcom/sec/factory/app/ui/UILedTest;->textColor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "changeTestLevel"

    const-string v2, "BLUE -> WHITE_BLACK"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 136
    :pswitch_b2
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/factory/app/ui/UILedTest;->test_state:I

    .line 137
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->isLedSupport:Z

    if-eqz v0, :cond_bf

    .line 138
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    .line 140
    :cond_bf
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "changeTestLevel"

    const-string v2, "WHITE_BLACK -> FINISH"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UILedTest;->setResult(I)V

    .line 142
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UILedTest;->finish()V

    goto/16 :goto_24

    .line 98
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_48
        :pswitch_6c
        :pswitch_90
        :pswitch_b2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UILedTest;->setContentView(I)V

    .line 45
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UILedTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/sec/factory/app/ui/UILedTest;->textColor:Landroid/widget/TextView;

    .line 46
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    .line 47
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UILedTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 48
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mIsLongPress:Z

    if-nez v0, :cond_a

    .line 77
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mIsLongPress:Z

    .line 79
    :cond_a
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mIsLongPress:Z

    if-nez v0, :cond_11

    .line 80
    packed-switch p1, :pswitch_data_1c

    .line 87
    :cond_11
    :goto_11
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 82
    :pswitch_16
    iget v0, p0, Lcom/sec/factory/app/ui/UILedTest;->test_state:I

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UILedTest;->changeTestLevel(I)V

    goto :goto_11

    .line 80
    :pswitch_data_1c
    .packed-switch 0x18
        :pswitch_16
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mIsLongPress:Z

    .line 94
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 66
    iget v0, p0, Lcom/sec/factory/app/ui/UILedTest;->test_state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->isLedSupport:Z

    if-eqz v0, :cond_12

    .line 67
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    .line 69
    :cond_12
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->isMotorSupport:Z

    if-eqz v0, :cond_1b

    .line 70
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 72
    :cond_1b
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 53
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOTOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->isMotorSupport:Z

    .line 55
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->isLedSupport:Z

    .line 57
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UILedTest;->isMotorSupport:Z

    if-eqz v0, :cond_2d

    .line 58
    iget-object v0, p0, Lcom/sec/factory/app/ui/UILedTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->startVibrate()V

    .line 60
    :cond_2d
    iget v0, p0, Lcom/sec/factory/app/ui/UILedTest;->test_state:I

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UILedTest;->changeTestLevel(I)V

    .line 61
    return-void
.end method
