.class public Lcom/sec/factory/app/ui/UIBase;
.super Landroid/app/Activity;
.source "UIBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;
    }
.end annotation


# instance fields
.field private final BACK_KEY_EVENT_TIMELAG:J

.field protected CLASS_NAME:Ljava/lang/String;

.field private COUNT_MAX_NV_WRITE:I

.field protected final FAIL:B

.field protected final NOTEST:B

.field protected ONPASS_FINISH_DELAY:I

.field protected final PASS:B

.field protected TEST_ID:I

.field protected TEST_RESULT:B

.field private mCopyDumpResult:Z

.field private mCount_NVWrite:I

.field private mCurrentStage:Ljava/lang/String;

.field private mDumpTime:Ljava/lang/String;

.field private mFactoryDump:Lcom/sec/factory/app/factorytest/FactoryTestDump;

.field protected mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

.field protected mFlag_BackKey_Twice:Z

.field public mHandler:Landroid/os/Handler;

.field protected mIsFromLcdTest:Z

.field private mIsLongPress:Z

.field private mLogDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mLogDialogOnClick:Landroid/content/DialogInterface$OnClickListener;

.field private mLogProgressDialog:Landroid/app/ProgressDialog;

.field private mLogResult:I

.field private mPrevBackKeyEventTime:J

.field mTimer:Ljava/util/Timer;

.field protected mTimerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "className"

    .prologue
    const/16 v1, 0x4e

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput v3, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_ID:I

    .line 37
    iput-byte v1, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_RESULT:B

    .line 39
    const/16 v0, 0x50

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UIBase;->PASS:B

    .line 40
    const/16 v0, 0x46

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UIBase;->FAIL:B

    .line 41
    iput-byte v1, p0, Lcom/sec/factory/app/ui/UIBase;->NOTEST:B

    .line 43
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UIBase;->BACK_KEY_EVENT_TIMELAG:J

    .line 44
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIBase;->mIsLongPress:Z

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UIBase;->mPrevBackKeyEventTime:J

    .line 46
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIBase;->mIsFromLcdTest:Z

    .line 48
    iput v2, p0, Lcom/sec/factory/app/ui/UIBase;->ONPASS_FINISH_DELAY:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIBase;->COUNT_MAX_NV_WRITE:I

    .line 53
    iput v2, p0, Lcom/sec/factory/app/ui/UIBase;->mCount_NVWrite:I

    .line 55
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIBase;->mFlag_BackKey_Twice:Z

    .line 59
    const-string v0, "FactoryTestMain"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mCurrentStage:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mDumpTime:Ljava/lang/String;

    .line 61
    iput v3, p0, Lcom/sec/factory/app/ui/UIBase;->mLogResult:I

    .line 65
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIBase;->mCopyDumpResult:Z

    .line 67
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mTimer:Ljava/util/Timer;

    .line 84
    new-instance v0, Lcom/sec/factory/app/ui/UIBase$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIBase$1;-><init>(Lcom/sec/factory/app/ui/UIBase;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mTimerHandler:Landroid/os/Handler;

    .line 320
    new-instance v0, Lcom/sec/factory/app/ui/UIBase$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIBase$2;-><init>(Lcom/sec/factory/app/ui/UIBase;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mHandler:Landroid/os/Handler;

    .line 426
    new-instance v0, Lcom/sec/factory/app/ui/UIBase$7;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIBase$7;-><init>(Lcom/sec/factory/app/ui/UIBase;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogDialogOnClick:Landroid/content/DialogInterface$OnClickListener;

    .line 72
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 7
    .parameter "className"
    .parameter "id"

    .prologue
    const/16 v1, 0x4e

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput v3, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_ID:I

    .line 37
    iput-byte v1, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_RESULT:B

    .line 39
    const/16 v0, 0x50

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UIBase;->PASS:B

    .line 40
    const/16 v0, 0x46

    iput-byte v0, p0, Lcom/sec/factory/app/ui/UIBase;->FAIL:B

    .line 41
    iput-byte v1, p0, Lcom/sec/factory/app/ui/UIBase;->NOTEST:B

    .line 43
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UIBase;->BACK_KEY_EVENT_TIMELAG:J

    .line 44
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIBase;->mIsLongPress:Z

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UIBase;->mPrevBackKeyEventTime:J

    .line 46
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIBase;->mIsFromLcdTest:Z

    .line 48
    iput v2, p0, Lcom/sec/factory/app/ui/UIBase;->ONPASS_FINISH_DELAY:I

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIBase;->COUNT_MAX_NV_WRITE:I

    .line 53
    iput v2, p0, Lcom/sec/factory/app/ui/UIBase;->mCount_NVWrite:I

    .line 55
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIBase;->mFlag_BackKey_Twice:Z

    .line 59
    const-string v0, "FactoryTestMain"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mCurrentStage:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mDumpTime:Ljava/lang/String;

    .line 61
    iput v3, p0, Lcom/sec/factory/app/ui/UIBase;->mLogResult:I

    .line 65
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIBase;->mCopyDumpResult:Z

    .line 67
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mTimer:Ljava/util/Timer;

    .line 84
    new-instance v0, Lcom/sec/factory/app/ui/UIBase$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIBase$1;-><init>(Lcom/sec/factory/app/ui/UIBase;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mTimerHandler:Landroid/os/Handler;

    .line 320
    new-instance v0, Lcom/sec/factory/app/ui/UIBase$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIBase$2;-><init>(Lcom/sec/factory/app/ui/UIBase;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mHandler:Landroid/os/Handler;

    .line 426
    new-instance v0, Lcom/sec/factory/app/ui/UIBase$7;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIBase$7;-><init>(Lcom/sec/factory/app/ui/UIBase;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogDialogOnClick:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    .line 77
    iput p2, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_ID:I

    .line 78
    return-void
.end method

.method private ResultMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2c

    .line 417
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 418
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "Dump Result"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 419
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 420
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 422
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 424
    :cond_2c
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIBase;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBase;->infoLogAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBase;->doCopyDumpOperation()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UIBase;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIBase;->mCopyDumpResult:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/factory/app/ui/UIBase;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIBase;->mCopyDumpResult:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UIBase;)Lcom/sec/factory/app/factorytest/FactoryTestDump;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryDump:Lcom/sec/factory/app/factorytest/FactoryTestDump;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UIBase;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogResult:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/factory/app/ui/UIBase;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/sec/factory/app/ui/UIBase;->mLogResult:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UIBase;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mDumpTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UIBase;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mCurrentStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UIBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBase;->doDumpState()V

    return-void
.end method

.method private doCopyDumpOperation()V
    .registers 8

    .prologue
    .line 340
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mLogProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Copying Dump..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 342
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 343
    .local v0, copytimer:Ljava/util/Timer;
    new-instance v1, Lcom/sec/factory/app/ui/UIBase$3;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIBase$3;-><init>(Lcom/sec/factory/app/ui/UIBase;Ljava/util/Timer;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 354
    new-instance v6, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/factory/app/ui/UIBase$4;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/ui/UIBase$4;-><init>(Lcom/sec/factory/app/ui/UIBase;)V

    invoke-direct {v6, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 363
    .local v6, thread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 364
    return-void
.end method

.method private doDumpState()V
    .registers 8

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBase;->showProgressDialog()V

    .line 368
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryDump:Lcom/sec/factory/app/factorytest/FactoryTestDump;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestDump;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mDumpTime:Ljava/lang/String;

    .line 369
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->getPositionData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mCurrentStage:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mCurrentStage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mCurrentStage:Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "doDumpState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sysdump_time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIBase;->mDumpTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onItemClick"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentStage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIBase;->mCurrentStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 377
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/sec/factory/app/ui/UIBase$5;

    invoke-direct {v1, p0, v0}, Lcom/sec/factory/app/ui/UIBase$5;-><init>(Lcom/sec/factory/app/ui/UIBase;Ljava/util/Timer;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 390
    new-instance v6, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/factory/app/ui/UIBase$6;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/ui/UIBase$6;-><init>(Lcom/sec/factory/app/ui/UIBase;)V

    invoke-direct {v6, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 405
    .local v6, thread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 407
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-eqz v1, :cond_80

    .line 408
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->getCPDump()V

    .line 409
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->getCpDumpResponse()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 413
    :cond_80
    return-void
.end method

.method private finishKeyCode()V
    .registers 6

    .prologue
    .line 304
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "finishKeyCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCount_NVWrite: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UIBase;->mCount_NVWrite:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , TEST_ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget v1, p0, Lcom/sec/factory/app/ui/UIBase;->mCount_NVWrite:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIBase;->COUNT_MAX_NV_WRITE:I

    if-ge v1, v2, :cond_5b

    iget v1, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_ID:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_5b

    .line 307
    iget v1, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_ID:I

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemPosition_ID(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemResult(I)B

    move-result v0

    .line 309
    .local v0, nvValue:B
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "finishKeyCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nvValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorNVValue(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v0           #nvValue:B
    :cond_5b
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->finish()V

    .line 318
    return-void
.end method

.method private infoLogAll()V
    .registers 2

    .prologue
    .line 435
    const-string v0, "Dump Success!"

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIBase;->ResultMessage(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method private showDumpStartDialog()V
    .registers 5

    .prologue
    .line 490
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "showDumpStartDialog"

    const-string v3, "showDumpStartDialog"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/16 v1, 0x2710

    invoke-static {v1}, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;->newInstance(I)Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;

    move-result-object v0

    .line 492
    .local v0, dialog:Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method private showProgressDialog()V
    .registers 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1c

    .line 440
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Getting Dump..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 442
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 445
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 447
    :cond_1c
    return-void
.end method


# virtual methods
.method protected finishOnPassWithTimer()V
    .registers 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/factory/app/ui/UIBase;->ONPASS_FINISH_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    return-void
.end method

.method protected getPositionData()Ljava/lang/String;
    .registers 5

    .prologue
    .line 496
    const-string v2, "recentfactorytest"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/app/ui/UIBase;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 497
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "itemposition"

    const-string v3, "FactoryTestMain"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, result:Ljava/lang/String;
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestDump;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestDump;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryDump:Lcom/sec/factory/app/factorytest/FactoryTestDump;

    .line 103
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 104
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mLogProgressDialog:Landroid/app/ProgressDialog;

    .line 105
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 106
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x41

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 107
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 110
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x54

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 112
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->setRemoveStatusBar(Landroid/view/Window;)V

    .line 113
    const-string v0, "SUPPORT_3X4_KEY"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 114
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0xe7

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 116
    :cond_65
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onCreate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 119
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-nez v0, :cond_a0

    .line 120
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 121
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 124
    :cond_a0
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 141
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-eqz v0, :cond_18

    .line 142
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->DestroySecPhoneService()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 144
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onDestroy"

    const-string v2, "Unbind SecPhoneService"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_18
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onDestroy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 15
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v10, 0x7d0

    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    .line 167
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIBase;->mIsFromLcdTest:Z

    if-eqz v0, :cond_c

    .line 168
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->finish()V

    .line 171
    :cond_c
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIBase;->mIsLongPress:Z

    if-nez v0, :cond_16

    .line 172
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIBase;->mIsLongPress:Z

    .line 174
    :cond_16
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIBase;->mIsLongPress:Z

    if-nez v0, :cond_1f

    .line 175
    sparse-switch p1, :sswitch_data_dc

    .line 215
    :cond_1d
    :goto_1d
    iput-wide v8, p0, Lcom/sec/factory/app/ui/UIBase;->mPrevBackKeyEventTime:J

    .line 217
    :cond_1f
    const-string v0, "UIBase"

    const-string v1, "onKeyDown"

    const-string v2, "return true"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_28
    return v7

    .line 177
    :sswitch_29
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_BACK => Prev : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/factory/app/ui/UIBase;->mPrevBackKeyEventTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Curr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => Time Lag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sec/factory/app/ui/UIBase;->mPrevBackKeyEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-wide v0, p0, Lcom/sec/factory/app/ui/UIBase;->mPrevBackKeyEventTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_a5

    .line 182
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/factory/app/ui/UIBase;->mPrevBackKeyEventTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v10

    if-gez v0, :cond_9e

    .line 183
    iput-boolean v7, p0, Lcom/sec/factory/app/ui/UIBase;->mFlag_BackKey_Twice:Z

    .line 184
    iget v0, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_ID:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_9a

    .line 185
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase;->finish()V

    .line 195
    :goto_90
    const-string v0, "UIBase"

    const-string v1, "onKeyDown"

    const-string v2, "KEYCODE_BACK = return true"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 187
    :cond_9a
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBase;->finishKeyCode()V

    goto :goto_90

    .line 190
    :cond_9e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UIBase;->mPrevBackKeyEventTime:J

    goto :goto_90

    .line 193
    :cond_a5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/factory/app/ui/UIBase;->mPrevBackKeyEventTime:J

    goto :goto_90

    .line 198
    :sswitch_ac
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    const-string v2, "KEYCODE_VOLUME_UP"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget v0, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_ID:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1d

    .line 201
    const-string v0, "UIBase"

    const-string v1, "onKeyDown"

    const-string v2, "KEYCODE_VOLUME_UP = TEST_HDMI"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBase;->finishKeyCode()V

    goto/16 :goto_1d

    .line 206
    :sswitch_c9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto/16 :goto_28

    .line 209
    :sswitch_ce
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    const-string v2, "KEYCODE_HEADSETHOOK"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UIBase;->startEarKey(Z)V

    goto/16 :goto_28

    .line 175
    :sswitch_data_dc
    .sparse-switch
        0x3 -> :sswitch_c9
        0x4 -> :sswitch_29
        0x18 -> :sswitch_ac
        0x4f -> :sswitch_ce
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 230
    packed-switch p1, :pswitch_data_a

    .line 236
    :goto_4
    return v0

    .line 232
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIBase;->showDumpStartDialog()V

    goto :goto_4

    .line 230
    nop

    :pswitch_data_a
    .packed-switch 0x3
        :pswitch_5
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 151
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UIBase;->mIsLongPress:Z

    .line 152
    const-string v0, "UIBase"

    const-string v1, "onKeyUp"

    const-string v2, "return true"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    packed-switch p1, :pswitch_data_1e

    .line 162
    :goto_f
    const/4 v0, 0x1

    return v0

    .line 156
    :pswitch_11
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyUp"

    const-string v2, "KEYCODE_HEADSETHOOK"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v3}, Lcom/sec/factory/app/ui/UIBase;->startEarKey(Z)V

    goto :goto_f

    .line 154
    :pswitch_data_1e
    .packed-switch 0x4f
        :pswitch_11
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onPause"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onResume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method protected savePositionData(Ljava/lang/String;)V
    .registers 6
    .parameter "currentitem"

    .prologue
    .line 504
    const-string v2, "recentfactorytest"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/factory/app/ui/UIBase;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 505
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 506
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "itemposition"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 507
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    return-void
.end method

.method protected setCountNVWrite(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 240
    iput p1, p0, Lcom/sec/factory/app/ui/UIBase;->COUNT_MAX_NV_WRITE:I

    .line 241
    return-void
.end method

.method public setTestId(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 81
    iput p1, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_ID:I

    .line 82
    return-void
.end method

.method protected setTestResult(B)V
    .registers 7
    .parameter "result"

    .prologue
    .line 261
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setTestResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget v1, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_ID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_66

    iget-byte v1, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_RESULT:B

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_66

    .line 263
    iput-byte p1, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_RESULT:B

    .line 264
    iget v1, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_ID:I

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemPosition_ID(I)I

    move-result v0

    .line 265
    .local v0, itemid:I
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setTestResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget v1, p0, Lcom/sec/factory/app/ui/UIBase;->mCount_NVWrite:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIBase;->mCount_NVWrite:I

    .line 267
    invoke-static {v0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->setItemResult(IB)V

    .line 268
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 269
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v1

    if-nez v1, :cond_66

    .line 270
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-eqz v1, :cond_66

    .line 271
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemNVKey(I)B

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->updateNVItem(BB)V

    .line 275
    .end local v0           #itemid:I
    :cond_66
    return-void
.end method

.method protected setTestResult(BB)V
    .registers 8
    .parameter "id"
    .parameter "result"

    .prologue
    .line 278
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setTestResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {p1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemPosition_ID(I)I

    move-result v0

    .line 280
    .local v0, itemid:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_64

    .line 281
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setTestResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget v1, p0, Lcom/sec/factory/app/ui/UIBase;->mCount_NVWrite:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIBase;->mCount_NVWrite:I

    .line 283
    invoke-static {v0, p2}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->setItemResult(IB)V

    .line 284
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 285
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v1

    if-nez v1, :cond_64

    .line 288
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-eqz v1, :cond_64

    .line 289
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemNVKey(I)B

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->updateNVItem(BB)V

    .line 293
    :cond_64
    return-void
.end method

.method protected setTestResultFailCase(B)V
    .registers 7
    .parameter "id"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setTestResultFailCase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCount_NVWrite: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UIBase;->mCount_NVWrite:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , TEST_ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget v1, p0, Lcom/sec/factory/app/ui/UIBase;->mCount_NVWrite:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIBase;->COUNT_MAX_NV_WRITE:I

    if-ge v1, v2, :cond_57

    iget v1, p0, Lcom/sec/factory/app/ui/UIBase;->TEST_ID:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_57

    .line 247
    invoke-static {p1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemPosition_ID(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemResult(I)B

    move-result v0

    .line 249
    .local v0, nvValue:B
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setTestResultFailCase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nvValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorNVValue(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v0           #nvValue:B
    :cond_57
    return-void
.end method

.method protected setTestResultWithoutNV(BB)V
    .registers 5
    .parameter "id"
    .parameter "result"

    .prologue
    .line 296
    invoke-static {p1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemPosition_ID(I)I

    move-result v0

    .line 297
    .local v0, itemid:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_d

    .line 298
    invoke-static {v0, p2}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->setItemResultWithoutNVUpdate(IB)V

    .line 299
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 301
    :cond_d
    return-void
.end method

.method public startEarKey(Z)V
    .registers 4
    .parameter "in"

    .prologue
    .line 222
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 223
    const/16 v0, 0xd

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;->setTestResult(BB)V

    .line 225
    :cond_a
    return-void
.end method
