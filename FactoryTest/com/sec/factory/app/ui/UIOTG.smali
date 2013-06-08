.class public Lcom/sec/factory/app/ui/UIOTG;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIOTG.java"


# instance fields
.field private final COLOR_FAIL:I

.field private final COLOR_PASS:I

.field private final DESCRIPTION_MEDIA_MOUNTED:Ljava/lang/String;

.field private final DESCRIPTION_MEDIA_UNMOUNTED:Ljava/lang/String;

.field private final MSG_MEDIA_MOUNTED:B

.field private final MSG_MEDIA_UNMOUNTED:B

.field private final MSG_OTG_CHECK_TEST_START:B

.field private mDescriptionText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsTestPass:Z

.field private mResultText:Landroid/widget/TextView;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 33
    const-string v0, "UIOTG"

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 17
    const-string v0, "USB Memory Inserted"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->DESCRIPTION_MEDIA_MOUNTED:Ljava/lang/String;

    .line 18
    const-string v0, "Please Insert USB Memory"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->DESCRIPTION_MEDIA_UNMOUNTED:Ljava/lang/String;

    .line 20
    iput-byte v2, p0, Lcom/sec/factory/app/ui/UIOTG;->MSG_OTG_CHECK_TEST_START:B

    .line 21
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UIOTG;->MSG_MEDIA_MOUNTED:B

    .line 22
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UIOTG;->MSG_MEDIA_UNMOUNTED:B

    .line 24
    const v0, -0xff7941

    iput v0, p0, Lcom/sec/factory/app/ui/UIOTG;->COLOR_PASS:I

    .line 25
    const/high16 v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIOTG;->COLOR_FAIL:I

    .line 30
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIOTG;->mIsTestPass:Z

    .line 57
    new-instance v0, Lcom/sec/factory/app/ui/UIOTG$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIOTG$1;-><init>(Lcom/sec/factory/app/ui/UIOTG;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/sec/factory/app/ui/UIOTG$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIOTG$2;-><init>(Lcom/sec/factory/app/ui/UIOTG;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIOTG;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->mDescriptionText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/factory/app/ui/UIOTG;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIOTG;->mIsTestPass:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIOTG;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIOTG;->setTestResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UIOTG;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private registerBroadcastReceiver()V
    .registers 5

    .prologue
    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOTG;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "registerBroadcastReceiver"

    const-string v3, "registerBroadcastReceiver"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOTG;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/app/ui/UIOTG;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method

.method private setTestResult()V
    .registers 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOTG;->mResultText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIOTG;->mIsTestPass:Z

    if-eqz v0, :cond_21

    const-string v0, "PASS"

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOTG;->mResultText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIOTG;->mIsTestPass:Z

    if-eqz v0, :cond_24

    const v0, -0xff7941

    :goto_14
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIOTG;->mIsTestPass:Z

    if-eqz v0, :cond_27

    .line 118
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOTG;->setTestResult(B)V

    .line 122
    :goto_20
    return-void

    .line 112
    :cond_21
    const-string v0, "FAIL"

    goto :goto_8

    .line 113
    :cond_24
    const/high16 v0, -0x1

    goto :goto_14

    .line 120
    :cond_27
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOTG;->setTestResultFailCase(B)V

    goto :goto_20
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOTG;->setContentView(I)V

    .line 40
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOTG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->mResultText:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0900f6

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOTG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->mDescriptionText:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 52
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 53
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOTG;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 55
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 45
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 46
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onResume"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIOTG;->registerBroadcastReceiver()V

    .line 48
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    return-void
.end method
