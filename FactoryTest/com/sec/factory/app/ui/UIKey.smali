.class public Lcom/sec/factory/app/ui/UIKey;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;
    }
.end annotation


# instance fields
.field private final FINISH_HARD_KEY_TEST:I

.field private final FINISH_QWERTY_KEY_TEST:I

.field private final REQUEST_HARD_KEY_TEST:I

.field private final REQUEST_QWERTY_KEY_TEST:I

.field private mAlertDialogEx:Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;

.field private mIsQwertyKeyTestStarted:Z

.field private mIsStandByQwertyTest:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    const-string v0, "UIKey"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 21
    iput v2, p0, Lcom/sec/factory/app/ui/UIKey;->REQUEST_HARD_KEY_TEST:I

    .line 22
    iput v3, p0, Lcom/sec/factory/app/ui/UIKey;->REQUEST_QWERTY_KEY_TEST:I

    .line 23
    iput v2, p0, Lcom/sec/factory/app/ui/UIKey;->FINISH_HARD_KEY_TEST:I

    .line 24
    iput v3, p0, Lcom/sec/factory/app/ui/UIKey;->FINISH_QWERTY_KEY_TEST:I

    .line 27
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIKey;->mIsStandByQwertyTest:Z

    .line 28
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIKey;->mIsQwertyKeyTestStarted:Z

    .line 32
    return-void
.end method

.method private start(I)V
    .registers 5
    .parameter

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_24

    .line 129
    :goto_3
    return-void

    .line 121
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UIHardKey;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string v1, "requestCode"

    iget v2, p0, Lcom/sec/factory/app/ui/UIKey;->TEST_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UIKey;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 126
    :pswitch_17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UIQwertyKey;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UIKey;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 118
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_4
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v4, 0x50

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/sec/factory/app/ui/UIBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 70
    packed-switch p1, :pswitch_data_4e

    .line 115
    :goto_b
    return-void

    .line 72
    :pswitch_c
    const-string v0, "SUPPORT_QWERTY_KEY"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 73
    if-nez p2, :cond_1a

    .line 76
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIKey;->finish()V

    goto :goto_b

    .line 78
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIKey;->mIsStandByQwertyTest:Z

    .line 79
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKey;->mAlertDialogEx:Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->show()V

    goto :goto_b

    .line 82
    :cond_23
    if-ne p2, v1, :cond_2e

    .line 83
    invoke-virtual {p0, v4}, Lcom/sec/factory/app/ui/UIKey;->setTestResult(B)V

    .line 99
    :goto_28
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIKey;->mIsQwertyKeyTestStarted:Z

    .line 100
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIKey;->finish()V

    goto :goto_b

    .line 94
    :cond_2e
    const/16 v0, 0x2d

    iget v1, p0, Lcom/sec/factory/app/ui/UIKey;->TEST_ID:I

    if-eq v0, v1, :cond_38

    .line 95
    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIKey;->setTestResultFailCase(B)V

    goto :goto_28

    .line 97
    :cond_38
    iget v0, p0, Lcom/sec/factory/app/ui/UIKey;->TEST_ID:I

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIKey;->setTestResultFailCase(B)V

    goto :goto_28

    .line 106
    :pswitch_3f
    if-ne p2, v1, :cond_4a

    .line 107
    invoke-virtual {p0, v4}, Lcom/sec/factory/app/ui/UIKey;->setTestResult(B)V

    .line 111
    :goto_44
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIKey;->mIsQwertyKeyTestStarted:Z

    .line 112
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIKey;->finish()V

    goto :goto_b

    .line 109
    :cond_4a
    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIKey;->setTestResultFailCase(B)V

    goto :goto_44

    .line 70
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_3f
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 55
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIKey;->mIsStandByQwertyTest:Z

    if-eqz v0, :cond_1b

    .line 57
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    .line 58
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKey;->mAlertDialogEx:Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->dismiss()V

    .line 59
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIKey;->mIsQwertyKeyTestStarted:Z

    if-nez v0, :cond_1b

    .line 60
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIKey;->mIsQwertyKeyTestStarted:Z

    .line 61
    invoke-direct {p0, v2}, Lcom/sec/factory/app/ui/UIKey;->start(I)V

    .line 65
    :cond_1b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v1, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;

    const v2, 0x7f03001b

    const v3, 0x7f0900e2

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;-><init>(Lcom/sec/factory/app/ui/UIKey;Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIKey;->mAlertDialogEx:Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;

    .line 38
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIKey;->mAlertDialogEx:Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;

    const-string v2, "QWERTY Key Test Start..."

    invoke-virtual {v1, v2}, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->setTitle(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIKey;->mAlertDialogEx:Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;

    const-string v2, "Slide Up Please..."

    invoke-virtual {v1, v2}, Lcom/sec/factory/app/ui/UIKey$AlertDialogEx;->setMessage(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIKey;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, i:Landroid/content/Intent;
    const-string v1, "requestCode"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIKey;->setTestId(I)V

    .line 43
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIKey;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onCreate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEST_ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UIKey;->TEST_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/factory/app/ui/UIKey;->start(I)V

    .line 46
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 51
    return-void
.end method
