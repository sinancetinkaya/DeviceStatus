.class public Lcom/sec/factory/app/ui/UISensorHub;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UISensorHub.java"


# static fields
.field protected static mModulePower:Lcom/sec/factory/modules/ModulePower;


# instance fields
.field private final ACTION_WAKE_UP:Ljava/lang/String;

.field private BinFwVersion:Landroid/widget/TextView;

.field private final FAIL:I

.field private IntCheckResult:Landroid/widget/TextView;

.field private McuChipName:Landroid/widget/TextView;

.field private McuFwVersion:Landroid/widget/TextView;

.field private final PASS:I

.field private PassFail:Landroid/widget/TextView;

.field private final READ_FAIL:I

.field isFactoryMode:Z

.field private ispassed:I

.field public mHandler:Landroid/os/Handler;

.field private mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

.field private mPM:Landroid/os/PowerManager;

.field private result:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/app/ui/UISensorHub;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 49
    const-string v0, "UISensorHub"

    const/16 v1, 0x31

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 29
    const-string v0, "com.sec.factory.aporiented.athandler.AtSensorHb.WakeUp"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->ACTION_WAKE_UP:Ljava/lang/String;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->ispassed:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->isFactoryMode:Z

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->PASS:I

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->FAIL:I

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->READ_FAIL:I

    .line 58
    new-instance v0, Lcom/sec/factory/app/ui/UISensorHub$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UISensorHub$1;-><init>(Lcom/sec/factory/app/ui/UISensorHub;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UISensorHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISensorHub;->getMcuFirmware()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UISensorHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISensorHub;->getBinFirmware()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UISensorHub;)Lcom/sec/factory/modules/ModuleDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UISensorHub;)Landroid/os/PowerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UISensorHub;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->result:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/factory/app/ui/UISensorHub;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISensorHub;->result:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UISensorHub;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->IntCheckResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UISensorHub;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->McuChipName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UISensorHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISensorHub;->checkPassFail()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UISensorHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISensorHub;->checkPassResult()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/factory/app/ui/UISensorHub;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISensorHub;->startSensorHubTest()V

    return-void
.end method

.method private checkPassFail()V
    .registers 7

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, passfail:Z
    const-string v1, "OK"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISensorHub;->result:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "OK"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISensorHub;->result:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 233
    invoke-direct {p0, v5, v3}, Lcom/sec/factory/app/ui/UISensorHub;->writeNV(IZ)V

    .line 234
    const/4 v0, 0x1

    .line 240
    :goto_21
    if-eqz v0, :cond_3f

    iget v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->ispassed:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3f

    .line 241
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->PassFail:Landroid/widget/TextView;

    const-string v2, "PASS"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->PassFail:Landroid/widget/TextView;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iput v3, p0, Lcom/sec/factory/app/ui/UISensorHub;->ispassed:I

    .line 249
    :goto_39
    return-void

    .line 237
    :cond_3a
    const/4 v1, 0x0

    invoke-direct {p0, v5, v1}, Lcom/sec/factory/app/ui/UISensorHub;->writeNV(IZ)V

    goto :goto_21

    .line 245
    :cond_3f
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->PassFail:Landroid/widget/TextView;

    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->PassFail:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iput v4, p0, Lcom/sec/factory/app/ui/UISensorHub;->ispassed:I

    goto :goto_39
.end method

.method private checkPassResult()V
    .registers 5

    .prologue
    .line 270
    iget v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->ispassed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 271
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "checkPassResult()"

    const-string v2, "pass!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/16 v0, 0x31

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UISensorHub;->setTestResultWithoutNV(BB)V

    .line 274
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 279
    :cond_1d
    :goto_1d
    return-void

    .line 275
    :cond_1e
    iget v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->ispassed:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISensorHub;->setResult(I)V

    goto :goto_1d
.end method

.method private getBinFirmware()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 220
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getBinFirmware"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, BinFirmware:[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getBinFirmware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BinFirmware = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->BinFwVersion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bin Firm Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method private getMcuFirmware()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 210
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getMcuFirmware"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, McuFirmware:[Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getMcuFirmware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "McuFirmware = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub;->McuFwVersion:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MCU Firm Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "init()"

    const-string v2, "init_start"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const v0, 0x7f0901d4

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISensorHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->IntCheckResult:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0901d5

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISensorHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->McuFwVersion:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0901d6

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISensorHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->BinFwVersion:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0901d7

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISensorHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->McuChipName:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0901d8

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISensorHub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->PassFail:Landroid/widget/TextView;

    .line 130
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    .line 131
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISensorHub;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->mPM:Landroid/os/PowerManager;

    .line 132
    sget-object v0, Lcom/sec/factory/app/ui/UISensorHub;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    if-nez v0, :cond_92

    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    :goto_5c
    sput-object v0, Lcom/sec/factory/app/ui/UISensorHub;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    .line 133
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_72

    invoke-static {p0}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_95

    :cond_72
    const/4 v0, 0x1

    :goto_73
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->isFactoryMode:Z

    .line 134
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "handleCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFactoryMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/factory/app/ui/UISensorHub;->isFactoryMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 132
    :cond_92
    sget-object v0, Lcom/sec/factory/app/ui/UISensorHub;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    goto :goto_5c

    .line 133
    :cond_95
    const/4 v0, 0x0

    goto :goto_73
.end method

.method private startSensorHubTest()V
    .registers 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startSensorHubTest"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    return-void
.end method

.method private writeNV(IZ)V
    .registers 6
    .parameter "id"
    .parameter "isPass"

    .prologue
    .line 282
    const/4 v0, 0x1

    if-ne p2, v0, :cond_13

    .line 283
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "writeNV"

    const-string v2, "PASS"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    int-to-byte v0, p1

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UISensorHub;->setTestResult(BB)V

    .line 289
    :goto_12
    return-void

    .line 286
    :cond_13
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

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
    .line 140
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onCreate()"

    const-string v2, "startOnCreate()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISensorHub;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 144
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISensorHub;->setContentView(I)V

    .line 145
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISensorHub;->init()V

    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/factory/app/ui/UISensorHub$2;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/ui/UISensorHub$2;-><init>(Lcom/sec/factory/app/ui/UISensorHub;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 154
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 159
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 160
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyEent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    packed-switch p1, :pswitch_data_24

    .line 186
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_21
    return v0

    .line 182
    :pswitch_22
    const/4 v0, 0x1

    goto :goto_21

    .line 180
    :pswitch_data_24
    .packed-switch 0x4
        :pswitch_22
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyUp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyEent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    packed-switch p1, :pswitch_data_24

    .line 198
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_21
    return v0

    .line 194
    :pswitch_22
    const/4 v0, 0x1

    goto :goto_21

    .line 192
    :pswitch_data_24
    .packed-switch 0x4
        :pswitch_22
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 166
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 167
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 173
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onResume"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 255
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onTouchEvent()"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->ispassed:I

    if-ne v0, v3, :cond_1e

    .line 257
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onTouchEvent()"

    const-string v2, "pass!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISensorHub;->setResult(I)V

    .line 259
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISensorHub;->finish()V

    .line 265
    :cond_1d
    :goto_1d
    return v3

    .line 260
    :cond_1e
    iget v0, p0, Lcom/sec/factory/app/ui/UISensorHub;->ispassed:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISensorHub;->setResult(I)V

    .line 262
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISensorHub;->finish()V

    goto :goto_1d
.end method
