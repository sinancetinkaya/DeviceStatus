.class public Lcom/sec/factory/app/ui/UITspReferenceMode;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UITspReferenceMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;
    }
.end annotation


# static fields
.field private static refMaxFlag:I

.field private static refMaxFlag2:I

.field private static refMinFlag:I

.field private static refMinFlag2:I


# instance fields
.field ChipName:Landroid/widget/TextView;

.field private final FAIL:I

.field private final PASS:I

.field PanelFirmVer:Landroid/widget/TextView;

.field PassFail:Landroid/widget/TextView;

.field PhoneFirmVer:Landroid/widget/TextView;

.field private final READ_FAIL:I

.field TspMax:Landroid/widget/TextView;

.field TspMax2:Landroid/widget/TextView;

.field TspMin:Landroid/widget/TextView;

.field TspMin2:Landroid/widget/TextView;

.field private UNKNOWN:Ljava/lang/String;

.field insp_value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;",
            ">;"
        }
    .end annotation
.end field

.field private ispassed:I

.field private mDeviceType:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mLcdType:Ljava/lang/String;

.field private mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

.field private mRefMax:I

.field private mRefMax2:I

.field private mRefMin:I

.field private mRefMin2:I

.field private mTspManufacture:Ljava/lang/String;

.field private mTspSpecText:Landroid/widget/TextView;

.field private mTspSpecText2:Landroid/widget/TextView;

.field ref_value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;",
            ">;"
        }
    .end annotation
.end field

.field ref_value2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput v0, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMinFlag:I

    .line 52
    sput v0, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMaxFlag:I

    .line 53
    sput v0, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMinFlag2:I

    .line 54
    sput v0, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMaxFlag2:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v0, "UITspReferenceMode"

    const/16 v1, 0x24

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 26
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->UNKNOWN:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ispassed:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->PASS:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->FAIL:I

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->READ_FAIL:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value2:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->insp_value:Ljava/util/ArrayList;

    .line 55
    iput v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin:I

    .line 56
    iput v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax:I

    .line 57
    iput v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin2:I

    .line 58
    iput v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax2:I

    .line 68
    new-instance v0, Lcom/sec/factory/app/ui/UITspReferenceMode$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UITspReferenceMode$1;-><init>(Lcom/sec/factory/app/ui/UITspReferenceMode;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UITspReferenceMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->getChipsetName()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UITspReferenceMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->getPhoneFirmware()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UITspReferenceMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->getPanelFirmware()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UITspReferenceMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->displayTSPvalue()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UITspReferenceMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->checkPassResult()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UITspReferenceMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->startTspSelfTest()V

    return-void
.end method

.method private checkPassFail()V
    .registers 8

    .prologue
    const v6, 0xf423f

    const v5, -0xf423f

    .line 429
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "checkPassFail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refMin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  refMinFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMinFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "checkPassFail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refMax = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  refMaxFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMaxFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "checkPassFail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ispassed ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ispassed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, passfail:Z
    const-string v1, "IS_SECOND_SELFTEST"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 438
    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin:I

    sget v2, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMinFlag:I

    if-le v1, v2, :cond_a4

    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin:I

    if-ge v1, v6, :cond_a4

    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax:I

    sget v2, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMaxFlag:I

    if-ge v1, v2, :cond_a4

    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax:I

    if-le v1, v5, :cond_a4

    .line 439
    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin2:I

    sget v2, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMinFlag2:I

    if-le v1, v2, :cond_a4

    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin2:I

    if-ge v1, v6, :cond_a4

    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax2:I

    sget v2, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMaxFlag2:I

    if-ge v1, v2, :cond_a4

    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax2:I

    if-le v1, v5, :cond_a4

    .line 440
    const/4 v0, 0x1

    .line 449
    :cond_a4
    :goto_a4
    if-eqz v0, :cond_cc

    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ispassed:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_cc

    .line 450
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->PassFail:Landroid/widget/TextView;

    const-string v2, "PASS"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ispassed:I

    .line 457
    :goto_b5
    return-void

    .line 444
    :cond_b6
    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin:I

    sget v2, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMinFlag:I

    if-le v1, v2, :cond_a4

    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin:I

    if-ge v1, v6, :cond_a4

    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax:I

    sget v2, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMaxFlag:I

    if-ge v1, v2, :cond_a4

    iget v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax:I

    if-le v1, v5, :cond_a4

    .line 445
    const/4 v0, 0x1

    goto :goto_a4

    .line 453
    :cond_cc
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->PassFail:Landroid/widget/TextView;

    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ispassed:I

    goto :goto_b5
.end method

.method private checkPassResult()V
    .registers 4

    .prologue
    .line 478
    iget v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ispassed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 479
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "checkPassResult()"

    const-string v2, "pass!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->setResult(I)V

    .line 481
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->finish()V

    .line 486
    :cond_15
    :goto_15
    return-void

    .line 482
    :cond_16
    iget v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ispassed:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->setResult(I)V

    goto :goto_15
.end method

.method private displayTSPvalue()V
    .registers 4

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMin:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMin:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMax:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMax:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMin2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMin2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delta : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMax2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMax2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delta : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->checkPassFail()V

    .line 376
    return-void
.end method

.method private getChipsetName()V
    .registers 6

    .prologue
    .line 391
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getChipsetName"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->UNKNOWN:Ljava/lang/String;

    .line 393
    .local v0, ChipsetName:Ljava/lang/String;
    const-string v1, "ATMEL"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 394
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->tsp_module_mode(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    :goto_1b
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getChipsetName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChipsetName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ChipName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    return-void

    .line 396
    :cond_4e
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v2, "get_chip_vendor"

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v3, "get_chip_name"

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private getPanelFirmware()V
    .registers 6

    .prologue
    .line 417
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getPanelFirmware"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->UNKNOWN:Ljava/lang/String;

    .line 419
    .local v0, PanelFirmware:Ljava/lang/String;
    const-string v1, "ATMEL"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 420
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->tsp_module_mode(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    :goto_1b
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getChipsetName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPanelFirmware = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->PanelFirmVer:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->PanelFirmVer:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Panel Firm Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    return-void

    .line 422
    :cond_50
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v2, "get_fw_ver_ic"

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private getPhoneFirmware()V
    .registers 6

    .prologue
    .line 404
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getPhoneFirmware"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->UNKNOWN:Ljava/lang/String;

    .line 407
    .local v0, PhoneFirmware:Ljava/lang/String;
    const-string v1, "ATMEL"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 408
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->tsp_module_mode(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    :goto_1b
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getChipsetName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneFirmware = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->PhoneFirmVer:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone Firm Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    return-void

    .line 410
    :cond_4e
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v2, "get_fw_ver_bin"

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private getReadValue()Ljava/lang/String;
    .registers 6

    .prologue
    .line 215
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getReadValue()"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, ""

    .line 218
    .local v0, value:Ljava/lang/String;
    const-string v1, "MELFAS"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 219
    const-string v1, "TFT"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "tablet"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 220
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v2, "run_cm_abs_read"

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getReadValue()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrun value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-object v0

    .line 221
    :cond_4b
    const-string v1, "OCTA"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 222
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v2, "run_cm_delta_read"

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 224
    :cond_5e
    const-string v1, "SYNAPTICS"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 225
    const-string v1, "TFT"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    const-string v1, "tablet"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 226
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v2, "run_rawcap_read"

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 227
    :cond_85
    const-string v1, "OCTA"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_30

    .line 230
    :cond_90
    const-string v1, "ATMEL"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 231
    const-string v1, "TFT"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    const-string v1, "tablet"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 233
    :cond_ae
    const-string v1, "OCTA"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 234
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v2, "TSP_COMMAND_REFER_SET"

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->tsp_module_data_read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30

    .line 236
    :cond_c2
    const-string v1, "STM"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 237
    const-string v1, "TFT"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const-string v1, "tablet"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 239
    :cond_e0
    const-string v1, "OCTA"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 240
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v2, "run_raw_read"

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30
.end method

.method private getReadValue2()Ljava/lang/String;
    .registers 6

    .prologue
    .line 249
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getReadValue2()"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, ""

    .line 252
    .local v0, value:Ljava/lang/String;
    const-string v1, "MELFAS"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 253
    const-string v1, "TFT"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "tablet"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 278
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getReadValue2()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrun value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-object v0

    .line 255
    :cond_43
    const-string v1, "OCTA"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_28

    .line 258
    :cond_4e
    const-string v1, "SYNAPTICS"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 259
    const-string v1, "TFT"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const-string v1, "tablet"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 261
    :cond_6c
    const-string v1, "OCTA"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_28

    .line 264
    :cond_77
    const-string v1, "ATMEL"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 265
    const-string v1, "TFT"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    const-string v1, "tablet"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 267
    :cond_95
    const-string v1, "OCTA"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_28

    .line 270
    :cond_a0
    const-string v1, "STM"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 271
    const-string v1, "TFT"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    const-string v1, "tablet"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 273
    :cond_be
    const-string v1, "OCTA"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 274
    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v2, "run_delta_read"

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28
.end method

.method private getTspValue()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 284
    const-string v5, ""

    .line 285
    .local v5, value:Ljava/lang/String;
    const v6, 0xf423f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 286
    .local v2, min:Ljava/lang/Integer;
    const v6, -0xf423f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 288
    .local v1, max:Ljava/lang/Integer;
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->getReadValue()Ljava/lang/String;

    move-result-object v5

    .line 290
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v3, st:Ljava/util/StringTokenizer;
    :goto_1d
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 293
    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;-><init>(Lcom/sec/factory/app/ui/UITspReferenceMode;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 296
    :cond_32
    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value:Ljava/util/ArrayList;

    if-eqz v6, :cond_5b

    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5b

    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5b

    .line 298
    :try_start_46
    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;

    invoke-virtual {v6}, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;->get_string()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_5a} :catch_c2

    move-result-object v2

    .line 304
    :cond_5b
    :goto_5b
    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value:Ljava/util/ArrayList;

    if-eqz v6, :cond_84

    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_84

    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_84

    .line 306
    :try_start_6f
    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;

    invoke-virtual {v6}, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;->get_string()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_83} :catch_c7

    move-result-object v1

    .line 312
    :cond_84
    :goto_84
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_91

    .line 313
    move-object v4, v2

    .line 314
    .local v4, temp:Ljava/lang/Integer;
    move-object v2, v1

    .line 315
    move-object v1, v4

    .line 318
    .end local v4           #temp:Ljava/lang/Integer;
    :cond_91
    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "getTspValue()"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "min = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", max = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin:I

    .line 321
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax:I

    .line 323
    return-void

    .line 299
    :catch_c2
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_5b

    .line 307
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_c7
    move-exception v0

    .line 308
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_84
.end method

.method private getTspValue2()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 327
    const-string v5, ""

    .line 328
    .local v5, value:Ljava/lang/String;
    const v6, 0xf423f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 329
    .local v2, min:Ljava/lang/Integer;
    const v6, -0xf423f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 331
    .local v1, max:Ljava/lang/Integer;
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->getReadValue2()Ljava/lang/String;

    move-result-object v5

    .line 333
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v3, st:Ljava/util/StringTokenizer;
    :goto_1d
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 336
    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value2:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;-><init>(Lcom/sec/factory/app/ui/UITspReferenceMode;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 339
    :cond_32
    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value2:Ljava/util/ArrayList;

    if-eqz v6, :cond_5b

    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value2:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5b

    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value2:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5b

    .line 341
    :try_start_46
    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value2:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;

    invoke-virtual {v6}, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;->get_string()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_5a} :catch_c2

    move-result-object v2

    .line 347
    :cond_5b
    :goto_5b
    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value2:Ljava/util/ArrayList;

    if-eqz v6, :cond_84

    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value2:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_84

    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value2:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_84

    .line 349
    :try_start_6f
    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ref_value2:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;

    invoke-virtual {v6}, Lcom/sec/factory/app/ui/UITspReferenceMode$Ref_value;->get_string()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_83} :catch_c7

    move-result-object v1

    .line 355
    :cond_84
    :goto_84
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_91

    .line 356
    move-object v4, v2

    .line 357
    .local v4, temp:Ljava/lang/Integer;
    move-object v2, v1

    .line 358
    move-object v1, v4

    .line 361
    .end local v4           #temp:Ljava/lang/Integer;
    :cond_91
    iget-object v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "getTspValue()"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "min = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", max = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMin2:I

    .line 364
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mRefMax2:I

    .line 366
    return-void

    .line 342
    :catch_c2
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_5b

    .line 350
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_c7
    move-exception v0

    .line 351
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_84
.end method

.method private init()V
    .registers 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "init()"

    const-string v2, "init_start"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const v0, 0x7f0901f2

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMin:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0901f3

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMax:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0901f7

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->PhoneFirmVer:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0901f8

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->PanelFirmVer:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0901f9

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ChipName:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0901fb

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->PassFail:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0901f1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspSpecText:Landroid/widget/TextView;

    .line 101
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    .line 103
    const v0, 0x7f0901f4

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspSpecText2:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0901f5

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMin2:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0901f6

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMax2:Landroid/widget/TextView;

    .line 106
    return-void
.end method

.method private setModelFeature()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 109
    const-string v0, "TSP_MANUFACTURE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    .line 110
    const-string v0, "PANEL_TYPE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mLcdType:Ljava/lang/String;

    .line 111
    const-string v0, "DEVICE_TYPE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mDeviceType:Ljava/lang/String;

    .line 112
    const-string v0, "TSP_SELFTEST_MIN"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMinFlag:I

    .line 113
    const-string v0, "TSP_SELFTEST_MAX"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMaxFlag:I

    .line 115
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setModelFeature()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTspManufacture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setModelFeature()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refMinFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMinFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setModelFeature()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refMaxFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMaxFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "IS_SECOND_SELFTEST"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 120
    const-string v0, "TSP_SELFTEST_MIN2"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMinFlag2:I

    .line 121
    const-string v0, "TSP_SELFTEST_MAX2"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMaxFlag2:I

    .line 122
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspSpecText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw SPEC: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMinFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMaxFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspSpecText2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delta SPEC: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMinFlag2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMaxFlag2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_ee
    return-void

    .line 125
    :cond_ef
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspSpecText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TSP SELFTEST SPEC: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMinFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/factory/app/ui/UITspReferenceMode;->refMaxFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mTspSpecText2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMin2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->TspMax2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ee
.end method

.method private startTspSelfTest()V
    .registers 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTspSelfTest"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->getTspValue()V

    .line 203
    const-string v0, "IS_SECOND_SELFTEST"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 204
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->getTspValue2()V

    .line 207
    :cond_16
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onCreate()"

    const-string v2, "startOnCreate()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 139
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->setContentView(I)V

    .line 140
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->init()V

    .line 141
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->setModelFeature()V

    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/factory/app/ui/UITspReferenceMode$2;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/ui/UITspReferenceMode$2;-><init>(Lcom/sec/factory/app/ui/UITspReferenceMode;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 155
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 156
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

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

    .line 176
    packed-switch p1, :pswitch_data_24

    .line 182
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_21
    return v0

    .line 178
    :pswitch_22
    const/4 v0, 0x1

    goto :goto_21

    .line 176
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
    .line 187
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

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

    .line 188
    packed-switch p1, :pswitch_data_24

    .line 194
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_21
    return v0

    .line 190
    :pswitch_22
    const/4 v0, 0x1

    goto :goto_21

    .line 188
    :pswitch_data_24
    .packed-switch 0x4
        :pswitch_22
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 162
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 169
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 170
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onResume"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 463
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onTouchEvent()"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ispassed:I

    if-ne v0, v3, :cond_1e

    .line 465
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onTouchEvent()"

    const-string v2, "pass!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->setResult(I)V

    .line 467
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->finish()V

    .line 473
    :cond_1d
    :goto_1d
    return v3

    .line 468
    :cond_1e
    iget v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode;->ispassed:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->setResult(I)V

    .line 470
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->finish()V

    goto :goto_1d
.end method
