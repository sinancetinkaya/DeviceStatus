.class public Lcom/sec/factory/app/ui/UIFeliCa;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIFeliCa.java"


# static fields
.field private static mReaderModeResult:Landroid/widget/TextView;

.field private static polling_flag:I


# instance fields
.field private final FELICA_FINISH_DELAY:I

.field private final MSG_FINISH_TEST:B

.field public mHandler:Landroid/os/Handler;

.field private mIsPassed_reader:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/sec/factory/app/ui/UIFeliCa;->polling_flag:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 82
    const-string v0, "UIFeliCa()"

    const/16 v1, 0x28

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIFeliCa;->mIsPassed_reader:Z

    .line 23
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UIFeliCa;->MSG_FINISH_TEST:B

    .line 26
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/factory/app/ui/UIFeliCa;->FELICA_FINISH_DELAY:I

    .line 30
    new-instance v0, Lcom/sec/factory/app/ui/UIFeliCa$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIFeliCa$1;-><init>(Lcom/sec/factory/app/ui/UIFeliCa;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFeliCa;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/sec/factory/app/ui/UIFeliCa$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIFeliCa$2;-><init>(Lcom/sec/factory/app/ui/UIFeliCa;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIFeliCa;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIFeliCa;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIFeliCa;->mIsPassed_reader:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UIFeliCa;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIFeliCa;->mIsPassed_reader:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIFeliCa;ILjava/lang/String;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/factory/app/ui/UIFeliCa;->updateDisplay(ILjava/lang/String;I)V

    return-void
.end method

.method private updateDisplay(ILjava/lang/String;I)V
    .registers 6
    .parameter "id"
    .parameter "result"
    .parameter "textColor"

    .prologue
    .line 74
    const-string v0, "UIFeliCa"

    const-string v1, "updateDisplay(int id, String result, int textColor)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const v0, 0x7f09008c

    if-ne p1, v0, :cond_16

    .line 76
    sget-object v0, Lcom/sec/factory/app/ui/UIFeliCa;->mReaderModeResult:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget-object v0, Lcom/sec/factory/app/ui/UIFeliCa;->mReaderModeResult:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    :cond_16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 87
    const-string v1, "UIFeliCa"

    const-string v2, "onCreate(Bundle savedInstanceState)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIFeliCa;->setContentView(I)V

    .line 90
    const v1, 0x7f09008c

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIFeliCa;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/sec/factory/app/ui/UIFeliCa;->mReaderModeResult:Landroid/widget/TextView;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.felicatest.FELICA_TEST_POLLING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIFeliCa;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/app/ui/UIFeliCa;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 128
    const-string v0, "UIFeliCa"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFeliCa;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIFeliCa;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 122
    const-string v0, "UIFeliCa"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 124
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/16 v4, 0x1e

    .line 98
    const-string v2, "UIFeliCa"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, nvValue:B
    invoke-static {v4}, Lcom/sec/factory/support/NVAccessor;->getNV(B)B

    move-result v1

    .line 103
    sget v2, Lcom/sec/factory/app/ui/UIFeliCa;->polling_flag:I

    if-nez v2, :cond_44

    .line 104
    const-string v2, "UIFeliCa"

    const-string v3, "Start Polling"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v2, 0x1

    sput v2, Lcom/sec/factory/app/ui/UIFeliCa;->polling_flag:I

    .line 106
    const/16 v2, 0x50

    if-eq v1, v2, :cond_28

    .line 107
    const/16 v2, 0x45

    invoke-static {v4, v2}, Lcom/sec/factory/support/NVAccessor;->setNV(BB)V

    .line 109
    :cond_28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.felicatest"

    const-string v3, "com.sec.android.app.felicatest.FeliCaTest"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    const-string v2, "FeliCa_Start_Parameter"

    const/16 v3, 0x6f

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIFeliCa;->startActivity(Landroid/content/Intent;)V

    .line 118
    .end local v0           #intent:Landroid/content/Intent;
    :goto_43
    return-void

    .line 116
    :cond_44
    const/4 v2, 0x0

    sput v2, Lcom/sec/factory/app/ui/UIFeliCa;->polling_flag:I

    goto :goto_43
.end method

.method protected setTestResult(B)V
    .registers 4
    .parameter "result"

    .prologue
    .line 135
    const-string v0, "UIFeliCa"

    const-string v1, "setTestResult(final byte result)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method
