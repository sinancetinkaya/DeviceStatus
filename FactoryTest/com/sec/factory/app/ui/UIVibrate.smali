.class public Lcom/sec/factory/app/ui/UIVibrate;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIVibrate.java"


# static fields
.field private static rgb_view:Landroid/view/View;


# instance fields
.field private final STATE_BLUE:I

.field private final STATE_FINISH:I

.field private final STATE_GREEN:I

.field private final STATE_RED:I

.field private final STATE_START:I

.field private final STATE_WHITE_BLACK:I

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

    .line 37
    const-string v0, "UIVibrate"

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;)V

    .line 23
    iput v1, p0, Lcom/sec/factory/app/ui/UIVibrate;->STATE_START:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->STATE_RED:I

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->STATE_GREEN:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->STATE_BLUE:I

    .line 27
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->STATE_WHITE_BLACK:I

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->STATE_FINISH:I

    .line 30
    iput v1, p0, Lcom/sec/factory/app/ui/UIVibrate;->test_state:I

    .line 31
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UIVibrate;->mIsLongPress:Z

    .line 33
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mTestCase:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private changeTestLevel(I)V
    .registers 7
    .parameter "state"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 97
    packed-switch p1, :pswitch_data_b6

    .line 140
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "changeTestLevel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default, test_state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/app/ui/UIVibrate;->test_state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_23
    return-void

    .line 99
    :pswitch_24
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->isLedSupport:Z

    if-eqz v0, :cond_2d

    .line 100
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0, v2}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    .line 102
    :cond_2d
    iput v1, p0, Lcom/sec/factory/app/ui/UIVibrate;->test_state:I

    .line 103
    sget-object v0, Lcom/sec/factory/app/ui/UIVibrate;->rgb_view:Landroid/view/View;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "changeTestLevel"

    const-string v2, "START -> RED"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 107
    :pswitch_40
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->isLedSupport:Z

    if-eqz v0, :cond_49

    .line 108
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0, v3}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    .line 110
    :cond_49
    iput v2, p0, Lcom/sec/factory/app/ui/UIVibrate;->test_state:I

    .line 111
    sget-object v0, Lcom/sec/factory/app/ui/UIVibrate;->rgb_view:Landroid/view/View;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "changeTestLevel"

    const-string v2, "RED -> GREEN"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 115
    :pswitch_5d
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->isLedSupport:Z

    if-eqz v0, :cond_66

    .line 116
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    .line 118
    :cond_66
    iput v3, p0, Lcom/sec/factory/app/ui/UIVibrate;->test_state:I

    .line 119
    sget-object v0, Lcom/sec/factory/app/ui/UIVibrate;->rgb_view:Landroid/view/View;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 120
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "changeTestLevel"

    const-string v2, "GREEN -> BLUE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 123
    :pswitch_7a
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->isLedSupport:Z

    if-eqz v0, :cond_83

    .line 124
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    .line 126
    :cond_83
    iput v4, p0, Lcom/sec/factory/app/ui/UIVibrate;->test_state:I

    .line 127
    sget-object v0, Lcom/sec/factory/app/ui/UIVibrate;->rgb_view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "changeTestLevel"

    const-string v2, "BLUE -> WHITE_BLACK"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 131
    :pswitch_96
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->test_state:I

    .line 132
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->isLedSupport:Z

    if-eqz v0, :cond_a3

    .line 133
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    .line 135
    :cond_a3
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "changeTestLevel"

    const-string v2, "WHITE_BLACK -> FINISH"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIVibrate;->setResult(I)V

    .line 137
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIVibrate;->finish()V

    goto/16 :goto_23

    .line 97
    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_24
        :pswitch_40
        :pswitch_5d
        :pswitch_7a
        :pswitch_96
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIVibrate;->setContentView(I)V

    .line 44
    const v0, 0x7f09020c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIVibrate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/sec/factory/app/ui/UIVibrate;->rgb_view:Landroid/view/View;

    .line 45
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    .line 46
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIVibrate;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 47
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mIsLongPress:Z

    if-nez v0, :cond_a

    .line 76
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mIsLongPress:Z

    .line 78
    :cond_a
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mIsLongPress:Z

    if-nez v0, :cond_11

    .line 79
    packed-switch p1, :pswitch_data_1c

    .line 86
    :cond_11
    :goto_11
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 81
    :pswitch_16
    iget v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->test_state:I

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIVibrate;->changeTestLevel(I)V

    goto :goto_11

    .line 79
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
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mIsLongPress:Z

    .line 93
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 65
    iget v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->test_state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->isLedSupport:Z

    if-eqz v0, :cond_12

    .line 66
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->setLEDlamp(I)Z

    .line 68
    :cond_12
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->isMotorSupport:Z

    if-eqz v0, :cond_1b

    .line 69
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 71
    :cond_1b
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 52
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOTOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->isMotorSupport:Z

    .line 54
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->isLedSupport:Z

    .line 56
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->isMotorSupport:Z

    if-eqz v0, :cond_2d

    .line 57
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->startVibrate()V

    .line 59
    :cond_2d
    iget v0, p0, Lcom/sec/factory/app/ui/UIVibrate;->test_state:I

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIVibrate;->changeTestLevel(I)V

    .line 60
    return-void
.end method
