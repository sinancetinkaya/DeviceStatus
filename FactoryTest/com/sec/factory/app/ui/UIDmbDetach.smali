.class public Lcom/sec/factory/app/ui/UIDmbDetach;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIDmbDetach.java"


# instance fields
.field private Flag:I

.field private ant_close:Landroid/widget/TextView;

.field private ant_open:Landroid/widget/TextView;

.field private dmb_detach_passfail:Landroid/widget/TextView;

.field private ispassed:I

.field private mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    const-string v0, "UIDmbDetach"

    const/16 v1, 0x33

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->Flag:I

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->ispassed:I

    .line 29
    return-void
.end method

.method private checkPassFail()V
    .registers 5

    .prologue
    const/16 v3, 0x33

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, passfail:Z
    iget v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->Flag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 103
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/sec/factory/app/ui/UIDmbDetach;->writeNV(IZ)V

    .line 104
    const/4 v0, 0x1

    .line 110
    :goto_d
    if-eqz v0, :cond_28

    .line 111
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->dmb_detach_passfail:Landroid/widget/TextView;

    const-string v2, "PASS"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->dmb_detach_passfail:Landroid/widget/TextView;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    const/16 v1, 0x50

    iput v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->ispassed:I

    .line 119
    :goto_22
    return-void

    .line 107
    :cond_23
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/sec/factory/app/ui/UIDmbDetach;->writeNV(IZ)V

    goto :goto_d

    .line 115
    :cond_28
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->dmb_detach_passfail:Landroid/widget/TextView;

    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->dmb_detach_passfail:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    const/16 v1, 0x46

    iput v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->ispassed:I

    goto :goto_22
.end method

.method private checkPassResult()V
    .registers 6

    .prologue
    const/16 v4, 0x50

    const/4 v3, 0x0

    .line 123
    iget v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->ispassed:I

    if-ne v0, v4, :cond_20

    .line 124
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "checkPassResult()"

    const-string v2, "TEST_DMB_DETACH pass!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/16 v0, 0x33

    invoke-virtual {p0, v0, v4}, Lcom/sec/factory/app/ui/UIDmbDetach;->setTestResultWithoutNV(BB)V

    .line 127
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIDmbDetach;->finishOnPassWithTimer()V

    .line 132
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 133
    iput v3, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->Flag:I

    .line 134
    return-void

    .line 128
    :cond_20
    iget v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->ispassed:I

    const/16 v1, 0x46

    if-ne v0, v1, :cond_18

    .line 129
    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIDmbDetach;->setResult(I)V

    goto :goto_18
.end method

.method private init()V
    .registers 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "init()"

    const-string v2, "init_start"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const v0, 0x7f090081

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIDmbDetach;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->ant_open:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIDmbDetach;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->ant_close:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIDmbDetach;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->dmb_detach_passfail:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method private writeNV(IZ)V
    .registers 6
    .parameter "id"
    .parameter "isPass"

    .prologue
    .line 137
    const/4 v0, 0x1

    if-ne p2, v0, :cond_13

    .line 138
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "writeNV"

    const-string v2, "PASS"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    int-to-byte v0, p1

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UIDmbDetach;->setTestResult(BB)V

    .line 144
    :goto_12
    return-void

    .line 141
    :cond_13
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "writeNV"

    const-string v2, "FAIL"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onCreate()"

    const-string v2, "startOnCreate()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    .line 45
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIDmbDetach;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 46
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIDmbDetach;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIDmbDetach;->init()V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 53
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 54
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v6, 0x3e8

    const v5, -0xffff01

    const/4 v0, 0x1

    .line 73
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onKeyDown"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyEent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    packed-switch p1, :pswitch_data_66

    .line 97
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_27
    :goto_27
    return v0

    .line 76
    :pswitch_28
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->ant_open:Landroid/widget/TextView;

    const-string v2, "ANT OPEN : PASS"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->ant_open:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 79
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1, v6, v7}, Lcom/sec/factory/modules/ModuleDevice;->startVibrate(J)V

    .line 80
    iput v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->Flag:I

    goto :goto_27

    .line 83
    :pswitch_41
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->ant_close:Landroid/widget/TextView;

    const-string v2, "ANT CLOSE : PASS"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->ant_close:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 86
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    invoke-virtual {v1, v6, v7}, Lcom/sec/factory/modules/ModuleDevice;->startVibrate(J)V

    .line 87
    iget v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->Flag:I

    if-ne v1, v0, :cond_27

    .line 89
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->Flag:I

    .line 90
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIDmbDetach;->checkPassFail()V

    .line 91
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIDmbDetach;->checkPassResult()V

    goto :goto_27

    .line 74
    nop

    :pswitch_data_66
    .packed-switch 0xef
        :pswitch_28
        :pswitch_41
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 60
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 61
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 67
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 68
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIDmbDetach;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onResume"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
