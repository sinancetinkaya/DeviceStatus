.class public Lcom/sec/factory/app/factorytest/FactoryTestMain;
.super Lcom/sec/factory/app/ui/UIBase;
.source "FactoryTestMain.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;,
        Lcom/sec/factory/app/factorytest/FactoryTestMain$EmptyListener;
    }
.end annotation


# static fields
.field public static CURRENT_TEST_ID:I

.field private static DUMMY:I

.field public static IsLoopBack2:Z

.field public static final WHAT_RESULT:I

.field public static final WHAT_RESULT_FAIL_CASE:I

.field public static final WHAT_RESULT_WITHOUT_NV:I

.field public static final WHAT_SCOPE_MAX:I

.field public static final WHAT_SCOPE_MIN:I

.field private static mAutoBrightnessMode:I

.field private static mSystemScreenBrightness:I


# instance fields
.field private IsKeyRelease:Z

.field isSupportMIC2:Z

.field isSupportRCV:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryStatus:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCapacityAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mFeedback:Landroid/os/Handler;

.field private mFeedbackText:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private mInnerTestResult:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mMainNV:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

.field private mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mTestInner:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

.field private mTestInnerBT:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;

.field private mTestInnerEarphone:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

.field private mTestInnerLoopback:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;

.field private mTestInnerOTG:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

.field private mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

.field private mTestResultText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 56
    sput v2, Lcom/sec/factory/app/factorytest/FactoryTestMain;->DUMMY:I

    .line 57
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->DUMMY:I

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_SCOPE_MIN:I

    .line 58
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->DUMMY:I

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    .line 59
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->DUMMY:I

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT_FAIL_CASE:I

    .line 60
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->DUMMY:I

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT_WITHOUT_NV:I

    .line 61
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->DUMMY:I

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_SCOPE_MAX:I

    .line 63
    sput v2, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CURRENT_TEST_ID:I

    .line 64
    sput-boolean v2, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsLoopBack2:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 212
    const-string v0, "FactoryTestMain"

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;)V

    .line 46
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->isSupportRCV:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->isSupportMIC2:Z

    .line 76
    iput-boolean v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsKeyRelease:Z

    .line 78
    iput v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mBatteryStatus:I

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMain$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$1;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedback:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMain$3;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$3;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mInnerTestResult:Landroid/os/Handler;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedbackText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/factory/app/factorytest/FactoryTestMain;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->launchTest(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/factory/app/factorytest/FactoryTestMain;BB)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResult(BB)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/factory/app/factorytest/FactoryTestMain;B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResultFailCase(B)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/factory/app/factorytest/FactoryTestMain;BB)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResultWithoutNV(BB)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/factorytest/FactoryTestMain;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->playSound(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->stopSound()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private checkCPStatus()Z
    .registers 4

    .prologue
    .line 793
    const-string v2, "SW_VERSION"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, cpversion:Ljava/lang/String;
    const-string v1, "Unknown"

    .line 795
    .local v1, modemUnknown:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private checkCapacity()V
    .registers 6

    .prologue
    .line 805
    const-string v0, "BATTERY_CAPACITY"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 806
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "checkCapacity()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 808
    const/16 v0, 0x1e

    .line 809
    const-string v2, "FACTORY_TEST_APP"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Version;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 812
    const-string v2, "phone"

    const-string v3, "DEVICE_TYPE"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 813
    const/16 v0, 0x14

    .line 816
    :cond_45
    if-ge v1, v0, :cond_8a

    .line 817
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 818
    const-string v2, "Battery Low"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need to Charge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "% Over"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 820
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMain$EmptyListener;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$EmptyListener;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V

    .line 821
    const-string v2, "OK"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 822
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMain$5;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$5;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 830
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mCapacityAlertDialog:Landroid/app/AlertDialog;

    .line 831
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mCapacityAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 833
    :cond_8a
    return-void
.end method

.method private isEarKey(Landroid/view/InputDevice;)Z
    .registers 9
    .parameter "dev"

    .prologue
    .line 406
    const-string v0, "sec_jack"

    .line 408
    .local v0, DEV_SEC_JACK:Ljava/lang/String;
    const/4 v1, 0x0

    .line 410
    .local v1, bRet:Z
    if-nez p1, :cond_f

    .line 411
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "isEarKey"

    const-string v5, "Error : Device is null"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_e
    :goto_e
    return v1

    .line 413
    :cond_f
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, devName:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onKeyDown"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    if-eqz v2, :cond_e

    .line 417
    const-string v3, "sec_jack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 418
    const/4 v1, 0x1

    goto :goto_e
.end method

.method private launchTest(I)V
    .registers 3
    .parameter "testID"

    .prologue
    .line 615
    packed-switch p1, :pswitch_data_124

    .line 772
    :goto_3
    :pswitch_3
    return-void

    .line 618
    :pswitch_4
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInner:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->startBattery()V

    goto :goto_3

    .line 627
    :pswitch_a
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInner:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->startLowFrequency()V

    goto :goto_3

    .line 630
    :pswitch_10
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInner:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->startSDCard()V

    goto :goto_3

    .line 633
    :pswitch_16
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInner:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->startSIMCard()V

    goto :goto_3

    .line 636
    :pswitch_1c
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInner:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->startSIMCard2()V

    goto :goto_3

    .line 639
    :pswitch_22
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInner:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->startSpeaker()V

    goto :goto_3

    .line 642
    :pswitch_28
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInner:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->startSpeaker_r()V

    goto :goto_3

    .line 645
    :pswitch_2e
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startUSB()V

    goto :goto_3

    .line 649
    :pswitch_34
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerBT:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->startBluetooth()V

    goto :goto_3

    .line 658
    :pswitch_3a
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerLoopback:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->startLoopback()V

    goto :goto_3

    .line 661
    :pswitch_40
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerLoopback:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->startLoopback()V

    goto :goto_3

    .line 664
    :pswitch_46
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerOTG:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->startOTG()V

    goto :goto_3

    .line 668
    :pswitch_4c
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startBarometer()V

    goto :goto_3

    .line 671
    :pswitch_52
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startBtLeSearch()V

    goto :goto_3

    .line 674
    :pswitch_58
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startChargeNFCRead()V

    goto :goto_3

    .line 677
    :pswitch_5e
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startDMB1()V

    goto :goto_3

    .line 680
    :pswitch_64
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startDMB2()V

    goto :goto_3

    .line 683
    :pswitch_6a
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startGeomagneticGyro()V

    goto :goto_3

    .line 686
    :pswitch_70
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startGrip()V

    goto :goto_3

    .line 689
    :pswitch_76
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startGyroscope()V

    goto :goto_3

    .line 692
    :pswitch_7c
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startHallIC()V

    goto :goto_3

    .line 695
    :pswitch_82
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startHDMI()V

    goto/16 :goto_3

    .line 698
    :pswitch_89
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startIRLED()V

    goto/16 :goto_3

    .line 701
    :pswitch_90
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startKey(I)V

    goto/16 :goto_3

    .line 704
    :pswitch_97
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startKey(I)V

    goto/16 :goto_3

    .line 707
    :pswitch_9e
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startLcd()V

    goto/16 :goto_3

    .line 710
    :pswitch_a5
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startMacroAF()V

    goto/16 :goto_3

    .line 713
    :pswitch_ac
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startMagnetic()V

    goto/16 :goto_3

    .line 716
    :pswitch_b3
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startNFC()V

    goto/16 :goto_3

    .line 719
    :pswitch_ba
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startProximityLight()V

    goto/16 :goto_3

    .line 722
    :pswitch_c1
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startRGB()V

    goto/16 :goto_3

    .line 725
    :pswitch_c8
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startSensorHub()V

    goto/16 :goto_3

    .line 728
    :pswitch_cf
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startSimple()V

    goto/16 :goto_3

    .line 731
    :pswitch_d6
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startSPDIFAudioTest()V

    goto/16 :goto_3

    .line 734
    :pswitch_dd
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startSPenDrawing()V

    goto/16 :goto_3

    .line 737
    :pswitch_e4
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startSPenEraser()V

    goto/16 :goto_3

    .line 740
    :pswitch_eb
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startSPenHovering()V

    goto/16 :goto_3

    .line 743
    :pswitch_f2
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startSPenDetection()V

    goto/16 :goto_3

    .line 746
    :pswitch_f9
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startBarcodeEmulator()V

    goto/16 :goto_3

    .line 749
    :pswitch_100
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startTSP(I)V

    goto/16 :goto_3

    .line 752
    :pswitch_107
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startTSP(I)V

    goto/16 :goto_3

    .line 755
    :pswitch_10e
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startWirelessCharge()V

    goto/16 :goto_3

    .line 758
    :pswitch_115
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startFeliCa()V

    goto/16 :goto_3

    .line 761
    :pswitch_11c
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;->startDmbDetach()V

    goto/16 :goto_3

    .line 615
    nop

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_cf
        :pswitch_3a
        :pswitch_34
        :pswitch_10
        :pswitch_22
        :pswitch_28
        :pswitch_90
        :pswitch_5e
        :pswitch_64
        :pswitch_b3
        :pswitch_100
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_ba
        :pswitch_2e
        :pswitch_7c
        :pswitch_ac
        :pswitch_76
        :pswitch_4c
        :pswitch_82
        :pswitch_46
        :pswitch_16
        :pswitch_dd
        :pswitch_eb
        :pswitch_e4
        :pswitch_3
        :pswitch_d6
        :pswitch_89
        :pswitch_10e
        :pswitch_a
        :pswitch_70
        :pswitch_c1
        :pswitch_3
        :pswitch_6a
        :pswitch_52
        :pswitch_58
        :pswitch_115
        :pswitch_f2
        :pswitch_40
        :pswitch_3
        :pswitch_107
        :pswitch_97
        :pswitch_9e
        :pswitch_1c
        :pswitch_a5
        :pswitch_c8
        :pswitch_f9
        :pswitch_11c
    .end packed-switch
.end method

.method private playSound(IZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 887
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v1

    if-nez v1, :cond_d

    .line 889
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->stopMedia()V

    .line 891
    :cond_d
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 892
    if-eqz p2, :cond_21

    .line 893
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedback:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedback:Landroid/os/Handler;

    const/4 v2, 0x3

    const-string v3, "Media playing"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 895
    :cond_21
    return-void
.end method

.method private registerTestReceiver()V
    .registers 3

    .prologue
    .line 775
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 776
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.factory.app.factorytest.finsh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    const-string v1, "com.sec.samsung.STOP_FACTORY_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 779
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 780
    return-void
.end method

.method private showCpUnknownDialog()V
    .registers 4

    .prologue
    .line 799
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "showCpUnknownDialog"

    const-string v2, "showCpUnknownDialog"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const v0, 0x7f070004

    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;->newInstance(I)Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;

    move-result-object v0

    .line 801
    invoke-virtual {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method private stopSound()V
    .registers 4

    .prologue
    .line 898
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    .line 899
    .local v0, moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 900
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->stopMedia()V

    .line 901
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedback:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 903
    :cond_13
    return-void
.end method

.method private unregisterTestReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 783
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_13

    .line 784
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 785
    iput-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 786
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "unregisterTestReceiver"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :cond_13
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v8, 0x1f

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/16 v5, 0x50

    const/4 v4, -0x1

    .line 526
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onActivityResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    sparse-switch p1, :sswitch_data_56

    .line 572
    :goto_25
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 573
    return-void

    .line 529
    :sswitch_29
    if-ne p2, v4, :cond_2f

    .line 530
    invoke-virtual {p0, v6, v5}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResult(BB)V

    goto :goto_25

    .line 532
    :cond_2f
    invoke-virtual {p0, v6}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResultFailCase(B)V

    goto :goto_25

    .line 536
    :sswitch_33
    if-ne p2, v4, :cond_39

    .line 537
    invoke-virtual {p0, v7, v5}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResult(BB)V

    goto :goto_25

    .line 539
    :cond_39
    invoke-virtual {p0, v7}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResultFailCase(B)V

    goto :goto_25

    .line 543
    :sswitch_3d
    if-ne p2, v4, :cond_43

    .line 544
    invoke-virtual {p0, v8, v5}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResult(BB)V

    goto :goto_25

    .line 546
    :cond_43
    invoke-virtual {p0, v8}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResultFailCase(B)V

    goto :goto_25

    .line 562
    :sswitch_47
    if-ne p2, v4, :cond_4f

    .line 563
    const/16 v0, 0x30

    invoke-virtual {p0, v0, v5}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResult(BB)V

    goto :goto_25

    .line 565
    :cond_4f
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResultFailCase(B)V

    goto :goto_25

    .line 527
    nop

    :sswitch_data_56
    .sparse-switch
        0x7 -> :sswitch_29
        0x8 -> :sswitch_33
        0x1f -> :sswitch_3d
        0x30 -> :sswitch_47
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 237
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 238
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setContentView(I)V

    .line 239
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/factory/modules/ModuleAudio;->sendToAudioManagerFTAOnOff(Z)V

    .line 241
    new-instance v6, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;

    invoke-direct {v6, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;-><init>(Landroid/content/Context;)V

    .line 242
    .local v6, adapter:Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;
    invoke-static {v6}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->setAdapter(Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;)V

    .line 243
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->initialize()V

    .line 245
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mAudioManager:Landroid/media/AudioManager;

    .line 247
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    .line 248
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 251
    const v0, 0x7f090085

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestResultText:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f090086

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mProgress:Landroid/widget/ProgressBar;

    .line 253
    const v0, 0x7f090087

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedbackText:Landroid/widget/TextView;

    .line 255
    iput-object p0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mContext:Landroid/content/Context;

    .line 256
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedback:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestResultText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/TextView;Landroid/widget/ListView;Lcom/sec/factory/app/factorytest/FactoryTestPhone;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mMainNV:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

    .line 258
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mInnerTestResult:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedback:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInner:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    .line 259
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mInnerTestResult:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedback:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerBT:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;

    .line 260
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mInnerTestResult:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedback:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerLoopback:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;

    .line 262
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mInnerTestResult:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedback:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerLoopback:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Landroid/widget/ListView;Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerEarphone:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    .line 264
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mInnerTestResult:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedback:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerOTG:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

    .line 265
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestOuter:Lcom/sec/factory/app/factorytest/FactoryTestMainOuter;

    .line 267
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleCommunication;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommunication;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    .line 269
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 270
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestResultText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mMainNV:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->formatTestResultAPO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_df
    sget v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->FONT_SIZE:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_ed

    .line 274
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestResultText:Landroid/widget/TextView;

    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->FONT_SIZE:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 277
    :cond_ed
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->registerTestReceiver()V

    .line 279
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-nez v0, :cond_109

    .line 280
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->checkCPStatus()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 281
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onCreate"

    const-string v2, "Something wrong with CP"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->showCpUnknownDialog()V

    .line 315
    :goto_108
    return-void

    .line 288
    :cond_109
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->checkCapacity()V

    .line 290
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getEnable(I)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 291
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunication;->nfcOn()V

    .line 294
    :cond_119
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 297
    const/4 v7, 0x0

    .local v7, i:I
    :goto_120
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->size()I

    move-result v0

    if-ge v7, v0, :cond_136

    .line 298
    invoke-static {v7}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->isAutoTest(I)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 299
    invoke-static {v7}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemID(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->launchTest(I)V

    .line 297
    :cond_133
    add-int/lit8 v7, v7, 0x1

    goto :goto_120

    .line 304
    .end local v7           #i:I
    :cond_136
    const-string v0, "SUPPORT_RCV"

    invoke-static {v0, v8}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->isSupportRCV:Z

    .line 305
    invoke-static {}, Lcom/sec/factory/modules/ModuleAudio;->isSupportSecondMicTest()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->isSupportMIC2:Z

    .line 307
    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModulePower;->getScreenBrightnessMode()I

    move-result v0

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mAutoBrightnessMode:I

    .line 308
    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModulePower;->getBrightness()I

    move-result v0

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mSystemScreenBrightness:I

    .line 309
    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModulePower;->setScreenBrightnessMode(I)V

    .line 310
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/factory/app/factorytest/FactoryTestMain$4;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$4;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_108
.end method

.method protected onDestroy()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 372
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    .line 373
    .local v0, moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/ModuleAudio;->setEarKeyState(I)V

    .line 376
    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v1

    sget v2, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mAutoBrightnessMode:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModulePower;->setScreenBrightnessMode(I)V

    .line 377
    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v1

    sget v2, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mSystemScreenBrightness:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModulePower;->setBrightness(I)V

    .line 379
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->unregisterTestReceiver()V

    .line 380
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerEarphone:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->unregisterTestReceiver()V

    .line 381
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInner:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->unregisterTestReceiver()V

    .line 382
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerOTG:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->unregisterOTGReceiver()V

    .line 383
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerBT:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->stopBluetooth()V

    .line 384
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 385
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mMainNV:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->unregisterReceiverNRequestCPO()V

    .line 387
    :cond_3d
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-eqz v1, :cond_51

    .line 388
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->DestroySecPhoneService()V

    .line 389
    iput-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 390
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onDestroy"

    const-string v3, "Unbind SecPhoneService"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_51
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getEnable(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 393
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommunication;->nfcOff()V

    .line 395
    :cond_5e
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/ModuleAudio;->sendToAudioManagerFTAOnOff(Z)V

    .line 397
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mCapacityAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_70

    .line 398
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mCapacityAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 399
    iput-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mCapacityAlertDialog:Landroid/app/AlertDialog;

    .line 402
    :cond_70
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 403
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x4

    .line 577
    invoke-static {p3}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getClickable(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 612
    :cond_7
    :goto_7
    return-void

    .line 581
    :cond_8
    invoke-static {p3}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemID(I)I

    move-result v1

    .line 582
    .local v1, testID:I
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onItemClick"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", testID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    sput v1, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CURRENT_TEST_ID:I

    .line 585
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onItemClick"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CURRENT_TEST_ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CURRENT_TEST_ID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->isDoingLoopback()Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v2, 0x1

    if-eq v1, v2, :cond_69

    .line 592
    const/16 v2, 0x2a

    if-ne v1, v2, :cond_7

    .line 595
    :cond_69
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v2

    if-eqz v2, :cond_86

    if-eq v1, v6, :cond_86

    const/4 v2, 0x5

    if-eq v1, v2, :cond_86

    const/16 v2, 0x21

    if-eq v1, v2, :cond_86

    .line 598
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->stopSound()V

    .line 599
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 602
    :cond_86
    invoke-static {p3}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemName_Position(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, currentStage:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 604
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_aa

    .line 605
    const/4 v2, 0x0

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 606
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_aa
    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->savePositionData(Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onItemClick"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentStage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-direct {p0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->launchTest(I)V

    goto/16 :goto_7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v2, 0x1

    .line 427
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onKeyDown"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-boolean v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsKeyRelease:Z

    if-nez v3, :cond_24

    .line 491
    :goto_23
    return v2

    .line 432
    :cond_24
    iput-boolean v9, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsKeyRelease:Z

    .line 435
    packed-switch p1, :pswitch_data_13e

    .line 491
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_23

    .line 437
    :pswitch_2e
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onKeyDown"

    const-string v5, "KEYCODE_VOLUME_UP"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    .line 439
    .local v0, moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getMicCount()I

    move-result v1

    .line 440
    .local v1, nMic:I
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onKeyDown"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentLoopbackPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getCurrentLoopbackPath()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isDoingLoopback()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v3

    if-nez v3, :cond_7d

    iget-boolean v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->isSupportRCV:Z

    if-eqz v3, :cond_7d

    .line 445
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getCurrentLoopbackPath()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_7d

    .line 446
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerLoopback:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;

    invoke-virtual {v3, v2}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->changeLoopbackRoute(Z)V

    .line 447
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 451
    :cond_7d
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v3

    if-eqz v3, :cond_a2

    const-string v3, "SUPPORT_EAR_VOLUME_CONTROL"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 453
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getEarKeyState()I

    move-result v3

    if-eqz v3, :cond_97

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getEarKeyState()I

    move-result v3

    if-ne v3, v8, :cond_c6

    .line 455
    :cond_97
    invoke-virtual {v0, v2}, Lcom/sec/factory/modules/ModuleAudio;->setEarKeyState(I)V

    .line 460
    :cond_9a
    :goto_9a
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerEarphone:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    invoke-virtual {v3, v2}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->startEarkey(Z)V

    .line 461
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 464
    :cond_a2
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isDoingLoopback()Z

    move-result v2

    if-nez v2, :cond_b7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->isEarKey(Landroid/view/InputDevice;)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 465
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v9}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 467
    :cond_b7
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onKeyDown"

    const-string v4, "KEYCODE_VOLUME_UP = return true"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_23

    .line 456
    :cond_c6
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getEarKeyState()I

    move-result v3

    if-eq v3, v10, :cond_d2

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getEarKeyState()I

    move-result v3

    if-ne v3, v7, :cond_9a

    .line 458
    :cond_d2
    invoke-virtual {v0, v8}, Lcom/sec/factory/modules/ModuleAudio;->setEarKeyState(I)V

    goto :goto_9a

    .line 470
    .end local v0           #moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    .end local v1           #nMic:I
    :pswitch_d6
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onKeyDown"

    const-string v5, "KEYCODE_VOLUME_DOWN"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    .line 472
    .restart local v0       #moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isEarphonePlugged()Z

    move-result v3

    if-eqz v3, :cond_108

    const-string v3, "SUPPORT_EAR_VOLUME_CONTROL"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 474
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getEarKeyState()I

    move-result v3

    if-eqz v3, :cond_fd

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getEarKeyState()I

    move-result v3

    if-ne v3, v7, :cond_12e

    .line 476
    :cond_fd
    invoke-virtual {v0, v10}, Lcom/sec/factory/modules/ModuleAudio;->setEarKeyState(I)V

    .line 481
    :cond_100
    :goto_100
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerEarphone:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    invoke-virtual {v3, v2}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->startEarkey(Z)V

    .line 482
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 484
    :cond_108
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isDoingLoopback()Z

    move-result v3

    if-nez v3, :cond_123

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->isEarKey(Landroid/view/InputDevice;)Z

    move-result v3

    if-nez v3, :cond_123

    .line 485
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 487
    :cond_123
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onKeyDown"

    const-string v5, "KEYCODE_VOLUME_DOWN = return true"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 477
    :cond_12e
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getEarKeyState()I

    move-result v3

    if-eq v3, v2, :cond_13a

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->getEarKeyState()I

    move-result v3

    if-ne v3, v8, :cond_100

    .line 479
    :cond_13a
    invoke-virtual {v0, v7}, Lcom/sec/factory/modules/ModuleAudio;->setEarKeyState(I)V

    goto :goto_100

    .line 435
    :pswitch_data_13e
    .packed-switch 0x18
        :pswitch_2e
        :pswitch_d6
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 496
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onKeyUp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iput-boolean v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsKeyRelease:Z

    .line 500
    packed-switch p1, :pswitch_data_6a

    .line 521
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_25
    :goto_25
    return v0

    .line 502
    :pswitch_26
    const-string v0, "SUPPORT_EAR_VOLUME_CONTROL"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 503
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyUp"

    const-string v2, "KEYCODE_VOLUME_UP"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerEarphone:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    invoke-virtual {v0, v5}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->startEarkey(Z)V

    .line 505
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyUp"

    const-string v2, "KEYCODE_VOLUME_UP = return true"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_45
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_25

    .line 509
    :pswitch_4a
    const-string v1, "SUPPORT_EAR_VOLUME_CONTROL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 510
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onKeyUp"

    const-string v3, "KEYCODE_VOLUME_DOWN"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerEarphone:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    invoke-virtual {v1, v5}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->startEarkey(Z)V

    .line 512
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onKeyUp"

    const-string v3, "KEYCODE_VOLUME_DOWN = return true"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 500
    :pswitch_data_6a
    .packed-switch 0x18
        :pswitch_26
        :pswitch_4a
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onNewIntent"

    const-string v2, "onNewIntent"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 224
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerBT:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;

    invoke-virtual {v0, v3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->setEnable(Z)V

    .line 225
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedback:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 227
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->initialize()V

    .line 228
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 229
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mCapacityAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_29

    .line 230
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mCapacityAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 232
    :cond_29
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onNewIntent(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 350
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 351
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    .line 352
    .local v0, moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isDoingLoopback()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 353
    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->stopLoopback()V

    .line 354
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onPause"

    const-string v3, "Stop Loopback"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_19
    invoke-direct {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->stopSound()V

    .line 366
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 367
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 319
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 321
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModulePower;->setBrightness(I)V

    .line 322
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunication;->isEnabledBtDevice()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 324
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerBT:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->getEnable()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 325
    const/16 v0, 0x50

    invoke-virtual {p0, v3, v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->setTestResult(BB)V

    .line 326
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerBT:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;

    invoke-virtual {v0, v2}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->setEnable(Z)V

    .line 330
    :cond_2a
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getAllitemPass()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 331
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 332
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    .line 338
    :goto_3b
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-nez v0, :cond_46

    .line 339
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mMainNV:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->registerReceiverNRequestCPO()V

    .line 341
    :cond_46
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isConnectionModeNone()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 342
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 345
    :cond_55
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 346
    return-void

    .line 334
    :cond_59
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 335
    sput-boolean v2, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    goto :goto_3b
.end method

.method public startEarKey(Z)V
    .registers 3
    .parameter "in"

    .prologue
    .line 907
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->startEarKey(Z)V

    .line 908
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mTestInnerEarphone:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    invoke-virtual {v0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->startEarkey(Z)V

    .line 910
    return-void
.end method
