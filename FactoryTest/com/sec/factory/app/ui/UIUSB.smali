.class public Lcom/sec/factory/app/ui/UIUSB;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIUSB.java"


# static fields
.field public static WHAT_CHECK_LCD_ON:I


# instance fields
.field private final DELAY:I

.field private DUMMY:I

.field private final TESTSTATE_TA_CONNECT:I

.field private final TESTSTATE_TA_DISCONNECT:I

.field private final TESTSTATE_USB_CONNECT:I

.field private final TESTSTATE_USB_DISCONNECT:I

.field private isPlugged:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field private mLinearBackground:Landroid/widget/LinearLayout;

.field private mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

.field private mModulePower:Lcom/sec/factory/modules/ModulePower;

.field private mTableTA:Landroid/widget/TableLayout;

.field private mTableUSB:Landroid/widget/TableLayout;

.field private mTestState:I

.field private mTextTAStep1Result:Landroid/widget/TextView;

.field private mTextTAStep2:Landroid/widget/TextView;

.field private mTextTAStep2Result:Landroid/widget/TextView;

.field private mTextUSBStep1Result:Landroid/widget/TextView;

.field private mTextUSBStep2:Landroid/widget/TextView;

.field private mTextUSBStep2Result:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/sec/factory/app/ui/UIUSB;->WHAT_CHECK_LCD_ON:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 62
    const-string v0, "UIUSB"

    const/16 v1, 0x12

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIUSB;->isPlugged:Z

    .line 49
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/factory/app/ui/UIUSB;->DELAY:I

    .line 51
    iput v2, p0, Lcom/sec/factory/app/ui/UIUSB;->mCount:I

    .line 53
    iput v2, p0, Lcom/sec/factory/app/ui/UIUSB;->DUMMY:I

    .line 54
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIUSB;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIUSB;->TESTSTATE_TA_CONNECT:I

    .line 55
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIUSB;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIUSB;->TESTSTATE_TA_DISCONNECT:I

    .line 56
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIUSB;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIUSB;->TESTSTATE_USB_CONNECT:I

    .line 57
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIUSB;->DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIUSB;->TESTSTATE_USB_DISCONNECT:I

    .line 59
    iput v2, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    .line 91
    new-instance v0, Lcom/sec/factory/app/ui/UIUSB$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIUSB$1;-><init>(Lcom/sec/factory/app/ui/UIUSB;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    new-instance v0, Lcom/sec/factory/app/ui/UIUSB$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIUSB$2;-><init>(Lcom/sec/factory/app/ui/UIUSB;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private TACheck(I)V
    .registers 6
    .parameter "plugged"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIUSB;->TESTSTATE_TA_CONNECT:I

    if-ne v0, v1, :cond_1f

    if-ne p1, v3, :cond_1f

    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIUSB;->isPlugged:Z

    if-nez v0, :cond_1f

    .line 174
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UIUSB;->isPlugged:Z

    .line 175
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ACTION_BATTERY_CHANGED : Plugged"

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/factory/app/ui/UIUSB;->WHAT_CHECK_LCD_ON:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    :cond_1e
    :goto_1e
    return-void

    .line 177
    :cond_1f
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIUSB;->TESTSTATE_TA_DISCONNECT:I

    if-ne v0, v1, :cond_1e

    if-nez p1, :cond_1e

    .line 178
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIUSB;->isPlugged:Z

    .line 179
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ACTION_BATTERY_CHANGED : Unplugged"

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep2Result:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep2Result:Landroid/widget/TextView;

    const-string v1, "Disconnected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep2Result:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    .line 185
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTableUSB:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_1e
.end method

.method private USBCheck(Z)V
    .registers 6
    .parameter "connected"

    .prologue
    const v3, -0xffff01

    const/4 v2, 0x0

    .line 191
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIUSB;->TESTSTATE_USB_CONNECT:I

    if-ne v0, v1, :cond_29

    if-eqz p1, :cond_29

    .line 192
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextUSBStep1Result:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextUSBStep1Result:Landroid/widget/TextView;

    const-string v1, "Connected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextUSBStep1Result:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextUSBStep2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    .line 204
    :cond_28
    :goto_28
    return-void

    .line 197
    :cond_29
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    iget v1, p0, Lcom/sec/factory/app/ui/UIUSB;->TESTSTATE_USB_DISCONNECT:I

    if-ne v0, v1, :cond_28

    if-nez p1, :cond_28

    .line 198
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextUSBStep2Result:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextUSBStep2Result:Landroid/widget/TextView;

    const-string v1, "Disconnected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextUSBStep2Result:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iput v2, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    .line 202
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIUSB;->finish()V

    goto :goto_28
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIUSB;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    return v0
.end method

.method static synthetic access$008(Lcom/sec/factory/app/ui/UIUSB;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIUSB;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIUSB;->TACheck(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIUSB;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIUSB;->USBCheck(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/factory/app/ui/UIUSB;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/sec/factory/app/ui/UIUSB;->mCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/sec/factory/app/ui/UIUSB;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIUSB;->mCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UIUSB;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep1Result:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UIUSB;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UIUSB;)Lcom/sec/factory/modules/ModulePower;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UIUSB;)Lcom/sec/factory/modules/ModuleDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UIUSB;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initialize()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "initialize"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIUSB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mLinearBackground:Landroid/widget/LinearLayout;

    .line 157
    iput v3, p0, Lcom/sec/factory/app/ui/UIUSB;->mTestState:I

    .line 158
    const v0, 0x7f090204

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIUSB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTableTA:Landroid/widget/TableLayout;

    .line 159
    const v0, 0x7f090205

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIUSB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep1Result:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f090206

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIUSB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep2:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f090207

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIUSB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep2Result:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTableTA:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 165
    const v0, 0x7f090208

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIUSB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTableUSB:Landroid/widget/TableLayout;

    .line 166
    const v0, 0x7f090209

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIUSB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextUSBStep1Result:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f09020a

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIUSB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextUSBStep2:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f09020b

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIUSB;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIUSB;->mTextUSBStep2Result:Landroid/widget/TextView;

    .line 169
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v1, 0x7f030033

    invoke-virtual {p0, v1}, Lcom/sec/factory/app/ui/UIUSB;->setContentView(I)V

    .line 67
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIUSB;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    .line 68
    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIUSB;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, mIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIUSB;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/app/ui/UIUSB;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIUSB;->initialize()V

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 89
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 85
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 81
    return-void
.end method
