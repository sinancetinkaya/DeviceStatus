.class public Lcom/wssyncmldm/ui/XUIDialogActivity;
.super Landroid/app/Activity;
.source "XUIDialogActivity.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XUICInterface;
.implements Lcom/wssyncmldm/interfaces/XNOTIInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;
    }
.end annotation


# static fields
.field static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final KEYGUARD_REQUEST:I = 0x37

.field public static g_UicOption:Ljava/lang/Object;

.field private static m_DialogActivity:Landroid/app/Activity;

.field private static m_DialogId:I

.field private static m_DownloadProgress:Lcom/wssyncmldm/ui/XUIDownloadProgress;

.field private static m_UicResult:Ljava/lang/Object;


# instance fields
.field private m_UicPrgDialog:Landroid/app/ProgressDialog;

.field private m_UicTimer:Ljava/util/Timer;

.field private m_bDRMultiSelected:[Z

.field private m_nDRSingleSelected:I

.field private m_szDefaultResponseText:Ljava/lang/String;

.field private m_szResponseText:Ljava/lang/String;

.field private m_szUicConformText:Ljava/lang/String;

.field private m_szUicMenuList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DialogId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicTimer:Ljava/util/Timer;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/wssyncmldm/ui/XUIDialogActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgCPopupKillTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/wssyncmldm/ui/XUIDialogActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgUicDisplayResult()V

    return-void
.end method

.method static synthetic access$202(Lcom/wssyncmldm/ui/XUIDialogActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szResponseText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicResult:Ljava/lang/Object;

    return-object v0
.end method

.method private xuiDlgCPopupKillTimer()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicTimer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 339
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 341
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicTimer:Ljava/util/Timer;

    .line 342
    return-void
.end method

.method private xuiDlgPopup(I)V
    .registers 8
    .parameter "type"

    .prologue
    .line 300
    sget-object v2, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    check-cast v2, Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 301
    .local v2, pUicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    const/4 v0, 0x0

    .line 303
    .local v0, displayTime:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xuiUICPopup type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 306
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->minDT:I

    if-lez v3, :cond_23

    .line 308
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->minDT:I

    mul-int/lit16 v0, v3, 0x3e8

    .line 311
    :cond_23
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->maxDT:I

    if-lez v3, :cond_2b

    .line 313
    iget v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->maxDT:I

    mul-int/lit16 v0, v3, 0x3e8

    .line 316
    :cond_2b
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicTimer:Ljava/util/Timer;

    if-nez v3, :cond_68

    .line 318
    if-lez v0, :cond_5c

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--> display time is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 321
    new-instance v1, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;

    add-int/lit8 v3, p1, 0x68

    invoke-direct {v1, p0, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;I)V

    .line 322
    .local v1, mytime:Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;
    new-instance v3, Ljava/util/Timer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/Timer;-><init>(Z)V

    iput-object v3, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicTimer:Ljava/util/Timer;

    .line 323
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicTimer:Ljava/util/Timer;

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 330
    .end local v1           #mytime:Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;
    :cond_5c
    :goto_5c
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v3, v3, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    iput-object v3, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szDefaultResponseText:Ljava/lang/String;

    .line 333
    add-int/lit8 v3, p1, 0x68

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    .line 334
    return-void

    .line 328
    :cond_68
    const-string v3, "mUicTimer is running or already started!!"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_5c
.end method

.method public static xuiDlgRemove(I)V
    .registers 3
    .parameter "arg"

    .prologue
    .line 2508
    :try_start_0
    sget-object v1, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DialogActivity:Landroid/app/Activity;

    if-eqz v1, :cond_16

    .line 2510
    sget-object v1, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DialogActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->removeDialog(I)V

    .line 2511
    const/4 v1, 0x0

    sput v1, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DialogId:I

    .line 2512
    const-string v1, "DialogActvity Remove and reset mDialogId"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2513
    sget-object v1, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DialogActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 2520
    :cond_16
    :goto_16
    return-void

    .line 2516
    :catch_17
    move-exception v0

    .line 2518
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static xuiDlgResetUpdateDownloadProgressBar(Z)V
    .registers 2
    .parameter "bStart"

    .prologue
    const/4 v0, 0x1

    .line 487
    if-eqz p0, :cond_c

    .line 489
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 490
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 497
    :goto_b
    return-void

    .line 494
    :cond_c
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 495
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiDownloadProgressInit()V

    goto :goto_b
.end method

.method private xuiDlgUicDisplayResult()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 346
    sget-object v1, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicResult:Ljava/lang/Object;

    check-cast v1, Lcom/wssyncmldm/eng/core/XDMUicResult;

    .line 347
    .local v1, uicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    const/4 v0, 0x0

    .line 348
    .local v0, pUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    if-nez v1, :cond_9

    .line 359
    :goto_8
    return-void

    .line 351
    :cond_9
    const/4 v2, 0x1

    iput v2, v1, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    .line 353
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCreateResult()Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-result-object v0

    .line 354
    invoke-static {v0, v1}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCopyResult(Lcom/wssyncmldm/eng/core/XDMUicResult;Lcom/wssyncmldm/eng/core/XDMUicResult;)Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-result-object v0

    .line 356
    const/16 v2, 0x81

    invoke-static {v2, v0, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 357
    invoke-static {v1}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicFreeResult(Lcom/wssyncmldm/eng/core/XDMUicResult;)Ljava/lang/Object;

    .line 358
    sput-object v3, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicResult:Ljava/lang/Object;

    goto :goto_8
.end method

.method private xuiDlgUicProgressResult(Ljava/lang/Object;)V
    .registers 3
    .parameter "pThis"

    .prologue
    .line 474
    move-object v0, p1

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 476
    .local v0, pUicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicFreeUicOption(Lcom/wssyncmldm/eng/core/XDMUicOption;)Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 477
    return-void
.end method

.method public static xuiDlgUpdateDownloadProgress()V
    .registers 2

    .prologue
    .line 2524
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2525
    sget-object v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DownloadProgress:Lcom/wssyncmldm/ui/XUIDownloadProgress;

    if-eqz v0, :cond_10

    .line 2527
    sget-object v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DownloadProgress:Lcom/wssyncmldm/ui/XUIDownloadProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiSendMessage(I)V

    .line 2533
    :goto_f
    return-void

    .line 2531
    :cond_10
    const-string v0, "mDownloadProgressDialog is null"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_f
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2358
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2359
    const/16 v3, 0x37

    if-eq p1, v3, :cond_8

    .line 2385
    :cond_7
    :goto_7
    return-void

    .line 2365
    :cond_8
    const/4 v3, -0x1

    if-ne p2, v3, :cond_7

    if-eqz p3, :cond_7

    .line 2367
    const-string v3, "password"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2368
    .local v1, password:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2371
    const/4 v2, 0x0

    .line 2375
    .local v2, ret:I
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_30} :catch_39

    .line 2381
    :goto_30
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaInstallStartCheck()V

    .line 2382
    sget v3, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DialogId:I

    invoke-static {v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgRemove(I)V

    goto :goto_7

    .line 2377
    :catch_39
    move-exception v0

    .line 2379
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_30
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 2319
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2321
    sput-object p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DialogActivity:Landroid/app/Activity;

    .line 2322
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2323
    .local v0, sid:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DialogId:I

    .line 2324
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 71
    .parameter "id"

    .prologue
    .line 502
    const-string v64, ""

    .line 503
    .local v64, szMessage:Ljava/lang/String;
    const/16 v49, 0x0

    .line 505
    .local v49, nMessageId:I
    sparse-switch p1, :sswitch_data_135c

    .line 2283
    :goto_7
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v20

    :goto_b
    return-object v20

    .line 509
    :sswitch_c
    new-instance v54, Landroid/app/ProgressDialog;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 510
    .local v54, prgDialog:Landroid/app/ProgressDialog;
    const v4, 0x108009b

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 511
    const v4, 0x1010355

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIconAttribute(I)V

    .line 512
    const v4, 0x7f070080

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 513
    const v4, 0x7f07003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 514
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$1;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 530
    const v4, 0x7f070024

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$2;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v7}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 546
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$3;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v20, v54

    .line 556
    goto :goto_b

    .line 559
    .end local v54           #prgDialog:Landroid/app/ProgressDialog;
    :sswitch_6b
    const-string v61, ""

    .line 560
    .local v61, szCompleteMsg:Ljava/lang/String;
    const-string v4, "OPEN"

    const-string v7, "TMO"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 561
    const v4, 0x7f070057

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 565
    :goto_80
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$6;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$5;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$4;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 563
    :cond_cc
    const v4, 0x7f070055

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v61

    goto :goto_80

    .line 597
    .end local v61           #szCompleteMsg:Ljava/lang/String;
    :sswitch_d6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070038

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$9;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$8;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$7;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 629
    :sswitch_123
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadSetDrawingPercentage(Z)V

    .line 630
    const/16 v4, 0x9

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 631
    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v4, :cond_134

    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v4, :cond_19c

    :cond_134
    const v50, 0x7f070093

    .line 634
    .local v50, nMsgID:I
    :goto_137
    const-string v4, "OPEN"

    const-string v7, "KOR"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_150

    const-string v4, "LG"

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_150

    .line 636
    const v50, 0x7f070095

    .line 639
    :cond_150
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07003b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$12;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$11;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$10;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 631
    .end local v50           #nMsgID:I
    :cond_19c
    const v50, 0x7f070094

    goto :goto_137

    .line 670
    :sswitch_1a0
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadSetDrawingPercentage(Z)V

    .line 671
    const/16 v4, 0x9

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 672
    const-string v4, "OPEN"

    const-string v7, "KOR"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_234

    .line 674
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v59

    .line 676
    .local v59, sales_code:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v4

    if-nez v4, :cond_230

    .line 678
    const-string v4, "LG"

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22c

    .line 679
    const v50, 0x7f070098

    .line 688
    .restart local v50       #nMsgID:I
    :goto_1ca
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 698
    .end local v50           #nMsgID:I
    .end local v59           #sales_code:Ljava/lang/String;
    :goto_1d2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$16;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070024

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$15;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$14;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$13;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 681
    .restart local v59       #sales_code:Ljava/lang/String;
    :cond_22c
    const v50, 0x7f070099

    .restart local v50       #nMsgID:I
    goto :goto_1ca

    .line 685
    .end local v50           #nMsgID:I
    :cond_230
    const v50, 0x7f070097

    .restart local v50       #nMsgID:I
    goto :goto_1ca

    .line 692
    .end local v50           #nMsgID:I
    .end local v59           #sales_code:Ljava/lang/String;
    :cond_234
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v4

    if-eqz v4, :cond_244

    .line 693
    const v4, 0x7f070097

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    goto :goto_1d2

    .line 695
    :cond_244
    const v4, 0x7f070096

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    goto :goto_1d2

    .line 758
    :sswitch_24e
    const/16 v4, 0x12

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 759
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070069

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$17;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 777
    :sswitch_28c
    const/16 v4, 0x14

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 778
    const/16 v4, 0x18

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 780
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v4

    if-eqz v4, :cond_2bc

    .line 782
    const/16 v4, 0x94

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 783
    const/16 v4, 0xe

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 785
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v4

    if-eqz v4, :cond_2b7

    .line 787
    const/16 v4, 0x67

    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 788
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 790
    :cond_2b7
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto/16 :goto_7

    .line 794
    :cond_2bc
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadPostponeStatus()I

    move-result v4

    if-nez v4, :cond_2c7

    .line 796
    const/16 v4, 0xd

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 799
    :cond_2c7
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOInitiatedType()I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2d5

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOInitiatedType()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_3a7

    .line 801
    :cond_2d5
    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v4, :cond_2dd

    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v4, :cond_35c

    .line 802
    :cond_2dd
    const v4, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 814
    :goto_2e6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$22;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070088

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$21;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070024

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$20;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$19;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$18;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    .line 886
    .local v20, ad:Landroid/app/AlertDialog;
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$23;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity$23;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto/16 :goto_b

    .line 805
    .end local v20           #ad:Landroid/app/AlertDialog;
    :cond_35c
    const-string v4, "OPEN"

    const-string v7, "KOR"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37d

    const-string v4, "LG"

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37d

    .line 807
    const v4, 0x7f070042

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    goto/16 :goto_2e6

    .line 808
    :cond_37d
    const-string v4, "OPEN"

    const-string v7, "USC"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_391

    const-string v4, "OPEN"

    const-string v7, "CRI"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39c

    .line 809
    :cond_391
    const v4, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    goto/16 :goto_2e6

    .line 811
    :cond_39c
    const v4, 0x7f070041

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    goto/16 :goto_2e6

    .line 898
    :cond_3a7
    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v4, :cond_3af

    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v4, :cond_42e

    .line 899
    :cond_3af
    const v4, 0x7f070047

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 909
    :goto_3b8
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$28;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$28;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070088

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$27;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$27;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070082

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$26;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$26;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$25;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$24;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$24;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    .line 970
    .restart local v20       #ad:Landroid/app/AlertDialog;
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$29;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity$29;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto/16 :goto_b

    .line 902
    .end local v20           #ad:Landroid/app/AlertDialog;
    :cond_42e
    const-string v4, "OPEN"

    const-string v7, "KOR"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44f

    const-string v4, "LG"

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44f

    .line 904
    const v4, 0x7f070046

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    goto/16 :goto_3b8

    .line 906
    :cond_44f
    const v4, 0x7f070045

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    goto/16 :goto_3b8

    .line 981
    :sswitch_45a
    const v4, 0x7f070087

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 982
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 983
    const/16 v4, 0x19

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 984
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 986
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070088

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$33;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$33;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070024

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$32;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$32;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$31;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$31;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$30;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$30;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1032
    :sswitch_4cc
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$36;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$36;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$35;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$35;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$34;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$34;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1065
    :sswitch_517
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$40;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$40;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002b

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$39;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$39;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$38;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$38;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$37;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$37;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1110
    :sswitch_570
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v38

    .line 1111
    .local v38, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030004

    const/4 v7, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v68

    .line 1112
    .local v68, textEntryView:Landroid/view/View;
    const v4, 0x7f090029

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v67

    check-cast v67, Landroid/widget/EditText;

    .line 1114
    .local v67, text:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szDefaultResponseText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b1

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szDefaultResponseText:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szResponseText:Ljava/lang/String;

    .line 1117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szDefaultResponseText:Ljava/lang/String;

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szDefaultResponseText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 1121
    :cond_5b1
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$41;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$41;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1136
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szUicConformText:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$44;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$44;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$43;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$43;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$42;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$42;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1172
    .end local v38           #factory:Landroid/view/LayoutInflater;
    .end local v67           #text:Landroid/widget/EditText;
    .end local v68           #textEntryView:Landroid/view/View;
    :sswitch_616
    move-object/from16 v0, p0

    iget v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_nDRSingleSelected:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_629

    .line 1173
    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicResult:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_nDRSingleSelected:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/wssyncmldm/eng/core/XDMUicResult;->SingleSelected:I

    .line 1175
    :cond_629
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szUicMenuList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_nDRSingleSelected:I

    new-instance v10, Lcom/wssyncmldm/ui/XUIDialogActivity$48;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$48;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$47;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$47;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$46;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$46;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$45;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$45;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1216
    :sswitch_687
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_bDRMultiSelected:[Z

    if-eqz v4, :cond_6ac

    .line 1218
    const/16 v41, 0x0

    .local v41, i:I
    :goto_68f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_bDRMultiSelected:[Z

    array-length v4, v4

    move/from16 v0, v41

    if-ge v0, v4, :cond_6ac

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_bDRMultiSelected:[Z

    aget-boolean v4, v4, v41

    if-eqz v4, :cond_6a9

    .line 1221
    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicResult:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicResult;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    const/4 v7, 0x1

    aput v7, v4, v41

    .line 1218
    :cond_6a9
    add-int/lit8 v41, v41, 0x1

    goto :goto_68f

    .line 1225
    .end local v41           #i:I
    :cond_6ac
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szUicMenuList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_bDRMultiSelected:[Z

    new-instance v10, Lcom/wssyncmldm/ui/XUIDialogActivity$52;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$52;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9, v10}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$51;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$51;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$50;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$50;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$49;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$49;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1269
    :sswitch_70a
    new-instance v4, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicPrgDialog:Landroid/app/ProgressDialog;

    .line 1270
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicPrgDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicPrgDialog:Landroid/app/ProgressDialog;

    const-string v7, "Please wait while Downloading..."

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicPrgDialog:Landroid/app/ProgressDialog;

    const/16 v7, 0x64

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicPrgDialog:Landroid/app/ProgressDialog;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicPrgDialog:Landroid/app/ProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicPrgDialog:Landroid/app/ProgressDialog;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicPrgDialog:Landroid/app/ProgressDialog;

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$53;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$53;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicPrgDialog:Landroid/app/ProgressDialog;

    move-object/from16 v20, v0

    goto/16 :goto_b

    .line 1291
    :sswitch_764
    const-string v4, "XUI_DL_DOWNLOAD_IN_PROGRESS"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1292
    const/16 v4, 0x18

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1293
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1294
    new-instance v20, Lcom/wssyncmldm/ui/XUIDownloadProgress;

    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$54;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$54;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$55;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$55;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v7}, Lcom/wssyncmldm/ui/XUIDownloadProgress;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    sput-object v20, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DownloadProgress:Lcom/wssyncmldm/ui/XUIDownloadProgress;

    goto/16 :goto_b

    .line 1338
    :sswitch_78e
    new-instance v55, Landroid/app/ProgressDialog;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1339
    .local v55, prgDlg:Landroid/app/ProgressDialog;
    const v4, 0x7f07002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1340
    const/4 v4, 0x1

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1341
    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1342
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$56;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$56;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v20, v55

    .line 1352
    goto/16 :goto_b

    .line 1355
    .end local v55           #prgDlg:Landroid/app/ProgressDialog;
    :sswitch_7c1
    const-string v62, ""

    .line 1356
    .local v62, szLowBatteryMsg:Ljava/lang/String;
    const-string v4, "OPEN"

    const-string v7, "TMO"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_817

    .line 1357
    const v4, 0x7f070084

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 1360
    :goto_7d6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1080027

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$58;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$58;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$57;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$57;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1359
    :cond_817
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f070083

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f07009b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    goto :goto_7d6

    .line 1378
    .end local v62           #szLowBatteryMsg:Ljava/lang/String;
    :sswitch_841
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmWakeLockAcquire()V

    .line 1379
    const/16 v66, 0x0

    .line 1380
    .local v66, t:Ljava/util/Timer;
    new-instance v46, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;

    const/16 v4, 0xd5

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;I)V

    .line 1381
    .local v46, mytime:Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;
    new-instance v66, Ljava/util/Timer;

    .end local v66           #t:Ljava/util/Timer;
    const/4 v4, 0x1

    move-object/from16 v0, v66

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Z)V

    .line 1382
    .restart local v66       #t:Ljava/util/Timer;
    const-wide/16 v9, 0x1388

    move-object/from16 v0, v66

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1383
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070059

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$61;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$61;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$60;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$60;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$59;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$59;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1430
    .end local v46           #mytime:Lcom/wssyncmldm/ui/XUIDialogActivity$XUICloseTimerTask;
    .end local v66           #t:Ljava/util/Timer;
    :sswitch_8af
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07005a

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v7, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->g_nDialogMes:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$64;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$64;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$63;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$63;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$62;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$62;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1459
    :sswitch_901
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1460
    const/16 v4, 0x18

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1461
    const/16 v4, 0xf

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1462
    const-string v56, ""

    .line 1463
    .local v56, sConfirmMsg:Ljava/lang/String;
    const v4, 0x7f07008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 1465
    const-string v4, "OPEN"

    const-string v7, "USC"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_92e

    const-string v4, "OPEN"

    const-string v7, "CRI"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a03

    .line 1467
    :cond_92e
    const v4, 0x7f070091

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 1468
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectFUMO()Lcom/wssyncmldm/db/file/XDBFumoInfo;

    move-result-object v39

    .line 1469
    .local v39, fumoInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectSizeFUMO()I

    move-result v4

    int-to-double v9, v4

    const-wide/high16 v11, 0x4130

    div-double v28, v9, v11

    .line 1470
    .local v28, dObjectSize:D
    new-instance v22, Ljava/math/BigDecimal;

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1471
    .local v22, bd:Ljava/math/BigDecimal;
    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v22

    .line 1473
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUpdateReport()Z

    move-result v4

    if-eqz v4, :cond_974

    .line 1475
    const v4, 0x7f07008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 1476
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    move-object/from16 v0, v56

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    .line 1479
    :cond_974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v7, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->szDescription:Ljava/lang/String;

    const-string v9, "\\n"

    const-string v10, "\n"

    invoke-static {v7, v9, v10}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibReplaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 1481
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070088

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$68;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$68;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070082

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$67;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$67;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$66;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$66;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$65;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$65;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 1521
    .local v16, DownloadAD:Landroid/app/AlertDialog;
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$69;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity$69;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v20, v16

    .line 1528
    goto/16 :goto_b

    .line 1532
    .end local v16           #DownloadAD:Landroid/app/AlertDialog;
    .end local v22           #bd:Ljava/math/BigDecimal;
    .end local v28           #dObjectSize:D
    .end local v39           #fumoInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    :cond_a03
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v43

    .line 1533
    .local v43, inflater2:Landroid/view/LayoutInflater;
    const v4, 0x7f030007

    const/4 v7, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v34

    .line 1534
    .local v34, downloadDetailView:Landroid/view/View;
    const v4, 0x7f090031

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 1535
    .local v35, downloadText:Landroid/widget/TextView;
    const v4, 0x7f090032

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 1537
    .local v3, descriptionText:Landroid/webkit/WebView;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectFUMO()Lcom/wssyncmldm/db/file/XDBFumoInfo;

    move-result-object v39

    .line 1538
    .restart local v39       #fumoInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectSizeFUMO()I

    move-result v4

    int-to-double v9, v4

    const-wide/high16 v11, 0x4130

    div-double v28, v9, v11

    .line 1539
    .restart local v28       #dObjectSize:D
    new-instance v31, Ljava/math/BigDecimal;

    move-object/from16 v0, v31

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1540
    .local v31, dec:Ljava/math/BigDecimal;
    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v31

    .line 1542
    const/16 v47, 0x0

    .line 1545
    .local v47, nColor:I
    :try_start_a47
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f060004

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_a51
    .catch Ljava/lang/Exception; {:try_start_a47 .. :try_end_a51} :catch_b9f

    move-result v47

    .line 1552
    :goto_a52
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUpdateReport()Z

    move-result v4

    if-eqz v4, :cond_a71

    .line 1554
    const v4, 0x7f07008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 1555
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    move-object/from16 v0, v56

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    .line 1558
    :cond_a71
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_SyncML_EnableNotiDeltaBinarySizeBeforeDownload"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a87

    const-string v4, "OPEN"

    const-string v7, "TGY"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ba9

    .line 1562
    :cond_a87
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUpdateReport()Z

    move-result v4

    if-nez v4, :cond_abf

    .line 1564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 1565
    const v4, 0x7f070068

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1567
    :cond_abf
    new-instance v60, Landroid/text/SpannableString;

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->szDescription:Ljava/lang/String;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1568
    .local v60, sp:Landroid/text/Spannable;
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "\r\n"

    const-string v9, "<br>"

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "\n"

    const-string v9, "<br>"

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 1570
    .local v23, body:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<html><body LEFTMARGIN=\"0px\" TOPMARGIN=\"0px\" link=\"#00C4FF\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><font size = \"4\" color=\"#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\">"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "</font></body></html>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1572
    .local v5, LinkUrl:Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1573
    move-object/from16 v0, v35

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1575
    const/4 v4, 0x0

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1585
    .end local v5           #LinkUrl:Ljava/lang/String;
    .end local v23           #body:Ljava/lang/String;
    .end local v60           #sp:Landroid/text/Spannable;
    :goto_b27
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070081

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$74;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$74;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070088

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$73;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$73;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070082

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$72;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$72;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$71;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$71;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$70;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$70;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 1644
    .restart local v16       #DownloadAD:Landroid/app/AlertDialog;
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$75;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity$75;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v20, v16

    .line 1651
    goto/16 :goto_b

    .line 1547
    .end local v16           #DownloadAD:Landroid/app/AlertDialog;
    :catch_b9f
    move-exception v37

    .line 1549
    .local v37, e:Ljava/lang/Exception;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_a52

    .line 1580
    .end local v37           #e:Ljava/lang/Exception;
    :cond_ba9
    move-object/from16 v0, v35

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1581
    move-object/from16 v0, v35

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1582
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_b27

    .line 1655
    .end local v3           #descriptionText:Landroid/webkit/WebView;
    .end local v28           #dObjectSize:D
    .end local v31           #dec:Ljava/math/BigDecimal;
    .end local v34           #downloadDetailView:Landroid/view/View;
    .end local v35           #downloadText:Landroid/widget/TextView;
    .end local v39           #fumoInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    .end local v43           #inflater2:Landroid/view/LayoutInflater;
    .end local v47           #nColor:I
    .end local v56           #sConfirmMsg:Ljava/lang/String;
    :sswitch_bbe
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1656
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1657
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1658
    const/16 v4, 0x17

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1660
    const-string v57, ""

    .line 1661
    .local v57, sMsg:Ljava/lang/String;
    const-string v4, "OPEN"

    const-string v7, "MTR"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4e

    .line 1663
    const v4, 0x7f07008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1691
    :goto_be6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070088

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$79;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$79;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070024

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$78;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$78;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$77;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$77;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$76;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$76;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    .line 1735
    .restart local v20       #ad:Landroid/app/AlertDialog;
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$80;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity$80;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto/16 :goto_b

    .line 1667
    .end local v20           #ad:Landroid/app/AlertDialog;
    :cond_c4e
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmGetEnableDownloadSizeFromCSCFeature()I

    move-result v51

    .line 1668
    .local v51, nSize:I
    const/4 v4, -0x1

    move/from16 v0, v51

    if-ne v0, v4, :cond_c7b

    .line 1670
    const-string v4, "OPEN"

    const-string v7, "KOR"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7b

    .line 1672
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v59

    .line 1673
    .restart local v59       #sales_code:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetServiceType()I

    move-result v53

    .line 1674
    .local v53, networkType:I
    const-string v4, "SKT"

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c99

    .line 1676
    const/16 v4, 0xd

    move/from16 v0, v53

    if-ne v0, v4, :cond_c96

    .line 1677
    const/16 v51, 0x1e

    .line 1687
    .end local v53           #networkType:I
    .end local v59           #sales_code:Ljava/lang/String;
    :cond_c7b
    :goto_c7b
    const v4, 0x7f07008c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1688
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v7

    move-object/from16 v0, v57

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v57

    goto/16 :goto_be6

    .line 1679
    .restart local v53       #networkType:I
    .restart local v59       #sales_code:Ljava/lang/String;
    :cond_c96
    const/16 v51, 0x14

    goto :goto_c7b

    .line 1681
    :cond_c99
    const-string v4, "KT"

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ca6

    .line 1682
    const/16 v51, 0x1e

    goto :goto_c7b

    .line 1684
    :cond_ca6
    const/16 v51, 0x5a

    goto :goto_c7b

    .line 1746
    .end local v51           #nSize:I
    .end local v53           #networkType:I
    .end local v57           #sMsg:Ljava/lang/String;
    .end local v59           #sales_code:Ljava/lang/String;
    :sswitch_ca9
    const-string v63, ""

    .line 1747
    .local v63, szMemoryFullMsg:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v4

    const/16 v7, 0x32

    if-ne v4, v7, :cond_d33

    .line 1748
    const v49, 0x7f070052

    .line 1751
    :goto_cb6
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectSizeFUMO()I

    move-result v4

    int-to-double v9, v4

    const-wide/high16 v11, 0x4130

    div-double v24, v9, v11

    .line 1753
    .local v24, dDlSize:D
    new-instance v15, Ljava/math/BigDecimal;

    move-wide/from16 v0, v24

    invoke-direct {v15, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1754
    .local v15, BdTmp:Ljava/math/BigDecimal;
    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-virtual {v15, v4, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    .line 1755
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v15}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v63

    .line 1757
    const/16 v4, 0x14

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1758
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1080027

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002e

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$83;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$83;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$82;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$82;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$81;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$81;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1750
    .end local v15           #BdTmp:Ljava/math/BigDecimal;
    .end local v24           #dDlSize:D
    :cond_d33
    const v49, 0x7f070051

    goto :goto_cb6

    .line 1789
    .end local v63           #szMemoryFullMsg:Ljava/lang/String;
    :sswitch_d37
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1080027

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070092

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$86;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$86;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$85;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$85;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$84;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$84;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1821
    :sswitch_d84
    const-string v58, ""

    .line 1822
    .local v58, sResultMsg:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v42

    .line 1823
    .local v42, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000b

    const/4 v7, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 1824
    .local v18, ResultView:Landroid/view/View;
    const v4, 0x7f09003d

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1825
    .local v17, ResultText:Landroid/widget/TextView;
    const v4, 0x7f09003e

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    .line 1827
    .local v6, WebText:Landroid/webkit/WebView;
    const/16 v47, 0x0

    .line 1830
    .restart local v47       #nColor:I
    :try_start_dac
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f060004

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_db6
    .catch Ljava/lang/Exception; {:try_start_dac .. :try_end_db6} :catch_e2f

    move-result v47

    .line 1837
    :goto_db7
    const-string v4, "OPEN"

    const-string v7, "TMO"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e42

    .line 1839
    invoke-static {}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbAdpGetFlag()I

    move-result v4

    if-nez v4, :cond_e38

    .line 1840
    const v4, 0x7f070066

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 1844
    :goto_dd0
    const/16 v4, 0x8

    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1908
    :goto_dd5
    move-object/from16 v0, v17

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1909
    move-object/from16 v0, v17

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1911
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$89;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$89;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$88;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$88;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$87;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$87;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1832
    :catch_e2f
    move-exception v37

    .line 1834
    .restart local v37       #e:Ljava/lang/Exception;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_db7

    .line 1842
    .end local v37           #e:Ljava/lang/Exception;
    :cond_e38
    const v4, 0x7f070061

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v58

    goto :goto_dd0

    .line 1848
    :cond_e42
    invoke-static {}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbAdpGetFlag()I

    move-result v4

    if-nez v4, :cond_f31

    .line 1850
    const v4, 0x7f070065

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 1852
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_SyncML_EnableShowVersionNameAferSuccessfulUpdate"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    .line 1853
    .local v33, display_flag:Z
    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_e7d

    .line 1856
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetSwV()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    .line 1860
    :cond_e7d
    const-string v4, "OPEN"

    const-string v7, "KOR"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2a

    const-string v4, ""

    const-string v7, "LG"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e9b

    const-string v4, ""

    const-string v7, "LTELG"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2a

    .line 1864
    :cond_e9b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f23

    .line 1866
    const-string v4, "\n"

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 1868
    const v4, 0x7f0700a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1869
    .restart local v23       #body:Ljava/lang/String;
    const-string v4, " <A HREF=\"http://www.lguplus.co.kr/ent/ltef/dscn/RetrievePsMbLteDcJi.hpi?mid=5389\">"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1870
    const v4, 0x7f0700a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1871
    const-string v4, "</A>"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1872
    const v4, 0x7f0700a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1874
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<html><body LEFTMARGIN=\"0px\" TOPMARGIN=\"0px\" link=\"#00C4FF\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><font size = \"4\" color=\"#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\">"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "</font></body></html>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1877
    .local v8, HtmlData:Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "text/html"

    const-string v10, "utf-8"

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto/16 :goto_dd5

    .line 1882
    .end local v8           #HtmlData:Ljava/lang/String;
    .end local v23           #body:Ljava/lang/String;
    :cond_f23
    const/16 v4, 0x8

    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_dd5

    .line 1887
    :cond_f2a
    const/16 v4, 0x8

    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_dd5

    .line 1892
    .end local v33           #display_flag:Z
    :cond_f31
    const-string v4, "OPEN"

    const-string v7, "DCM"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f4b

    .line 1893
    const v4, 0x7f070062

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 1905
    :goto_f44
    const/16 v4, 0x8

    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_dd5

    .line 1895
    :cond_f4b
    const-string v4, "OPEN"

    const-string v7, "USC"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f5f

    .line 1896
    const v4, 0x7f070060

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v58

    goto :goto_f44

    .line 1898
    :cond_f5f
    const-string v4, "OPEN"

    const-string v7, "KDI"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f73

    .line 1899
    const v4, 0x7f070063

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v58

    goto :goto_f44

    .line 1902
    :cond_f73
    const v4, 0x7f07005d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v58

    goto :goto_f44

    .line 1943
    .end local v6           #WebText:Landroid/webkit/WebView;
    .end local v17           #ResultText:Landroid/widget/TextView;
    .end local v18           #ResultView:Landroid/view/View;
    .end local v42           #inflater:Landroid/view/LayoutInflater;
    .end local v47           #nColor:I
    .end local v58           #sResultMsg:Ljava/lang/String;
    :sswitch_f7d
    const/16 v21, 0x1

    .line 1944
    .local v21, bPost:Z
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetPostponeCount()I

    move-result v48

    .line 1945
    .local v48, nCount:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v52

    .line 1946
    .local v52, nStatus:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectFUMO()Lcom/wssyncmldm/db/file/XDBFumoInfo;

    move-result-object v40

    .line 1947
    .local v40, fumoinfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectSizeFUMO()I

    move-result v4

    int-to-double v9, v4

    const-wide/high16 v11, 0x4130

    div-double v26, v9, v11

    .line 1948
    .local v26, dObjSize:D
    const-string v65, ""

    .line 1950
    .local v65, szObjSizeInfo:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Postpone Count : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1951
    const/4 v4, 0x3

    move/from16 v0, v48

    if-lt v0, v4, :cond_fb5

    .line 1952
    const/16 v21, 0x0

    .line 1954
    :cond_fb5
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v43

    .line 1955
    .restart local v43       #inflater2:Landroid/view/LayoutInflater;
    const v4, 0x7f03000a

    const/4 v7, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    .line 1956
    .local v44, installDetailView:Landroid/view/View;
    const v4, 0x7f09003b

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 1957
    .restart local v3       #descriptionText:Landroid/webkit/WebView;
    const v4, 0x7f09003a

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 1958
    .local v32, detailsText:Landroid/widget/TextView;
    const v4, 0x7f09003c

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/TextView;

    .line 1959
    .local v45, installText:Landroid/widget/TextView;
    const v4, 0x7f090039

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 1961
    .local v36, downloadedText:Landroid/widget/TextView;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetDownloadPostponeStatus()I

    move-result v4

    if-nez v4, :cond_ff9

    .line 1963
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1966
    :cond_ff9
    const/16 v47, 0x0

    .line 1969
    .restart local v47       #nColor:I
    :try_start_ffb
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f060004

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_1005
    .catch Ljava/lang/Exception; {:try_start_ffb .. :try_end_1005} :catch_10c3

    move-result v47

    .line 1976
    :goto_1006
    const-string v4, "OPEN"

    const-string v7, "TMO"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10cd

    .line 1978
    const v4, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 1980
    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1981
    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1982
    const/16 v4, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1983
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1984
    const/16 v4, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2042
    :goto_103a
    if-eqz v21, :cond_11fa

    .line 2044
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2045
    .local v19, abUpdateDlg:Landroid/app/AlertDialog$Builder;
    const v4, 0x108009b

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2046
    const v4, 0x1010355

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2047
    const v4, 0x7f070080

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2048
    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2049
    const-string v4, "OPEN"

    const-string v7, "TMO"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11f0

    const v4, 0x7f07005c

    :goto_1071
    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$90;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$90;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2078
    const v4, 0x7f070033

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$91;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$91;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2088
    const-string v4, "OPEN"

    const-string v7, "TMO"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11f5

    const v4, 0x7f07005a

    :goto_1099
    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$92;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$92;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2099
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$93;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$93;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2108
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$94;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$94;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2118
    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 1971
    .end local v19           #abUpdateDlg:Landroid/app/AlertDialog$Builder;
    :catch_10c3
    move-exception v37

    .line 1973
    .restart local v37       #e:Ljava/lang/Exception;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_1006

    .line 1988
    .end local v37           #e:Ljava/lang/Exception;
    :cond_10cd
    const/16 v4, 0xdc

    move/from16 v0, v52

    if-eq v0, v4, :cond_11ae

    .line 2000
    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v4, :cond_10df

    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-nez v4, :cond_10df

    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_DATA_ONLY_MODEL:Z

    if-eqz v4, :cond_11a3

    .line 2001
    :cond_10df
    const v4, 0x7f07004b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 2005
    :goto_10e8
    const-string v30, ""

    .line 2006
    .local v30, deMessage:Ljava/lang/String;
    const v4, 0x7f070067

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2007
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2008
    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2010
    new-instance v31, Ljava/math/BigDecimal;

    move-object/from16 v0, v31

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 2011
    .restart local v31       #dec:Ljava/math/BigDecimal;
    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v31

    .line 2012
    const v4, 0x7f070048

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v65

    .line 2013
    move-object/from16 v0, v36

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2014
    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2016
    new-instance v60, Landroid/text/SpannableString;

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;->szDescription:Ljava/lang/String;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2017
    .restart local v60       #sp:Landroid/text/Spannable;
    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "\r\n"

    const-string v9, "<br>"

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "\n"

    const-string v9, "<br>"

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 2019
    .restart local v23       #body:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<html><body LEFTMARGIN=\"0px\" TOPMARGIN=\"0px\" link=\"#00C4FF\"><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><font size = \"4\" color=\"#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\">"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "</font></body></html>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2021
    .restart local v5       #LinkUrl:Ljava/lang/String;
    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2022
    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2024
    const/4 v10, 0x0

    const-string v12, "text/html"

    const-string v13, "utf-8"

    const/4 v14, 0x0

    move-object v9, v3

    move-object v11, v5

    invoke-virtual/range {v9 .. v14}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto/16 :goto_103a

    .line 2003
    .end local v5           #LinkUrl:Ljava/lang/String;
    .end local v23           #body:Ljava/lang/String;
    .end local v30           #deMessage:Ljava/lang/String;
    .end local v31           #dec:Ljava/math/BigDecimal;
    .end local v60           #sp:Landroid/text/Spannable;
    :cond_11a3
    const v4, 0x7f070049

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    goto/16 :goto_10e8

    .line 2029
    :cond_11ae
    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v4, :cond_11ba

    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-nez v4, :cond_11ba

    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_DATA_ONLY_MODEL:Z

    if-eqz v4, :cond_11e6

    .line 2030
    :cond_11ba
    const v4, 0x7f07004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 2034
    :goto_11c3
    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2035
    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2036
    const/16 v4, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2037
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2038
    const/16 v4, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_103a

    .line 2032
    :cond_11e6
    const v4, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    goto :goto_11c3

    .line 2049
    .restart local v19       #abUpdateDlg:Landroid/app/AlertDialog$Builder;
    :cond_11f0
    const v4, 0x7f07002a

    goto/16 :goto_1071

    .line 2088
    :cond_11f5
    const v4, 0x7f070082

    goto/16 :goto_1099

    .line 2122
    .end local v19           #abUpdateDlg:Landroid/app/AlertDialog$Builder;
    :cond_11fa
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2123
    .restart local v19       #abUpdateDlg:Landroid/app/AlertDialog$Builder;
    const v4, 0x108009b

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2124
    const v4, 0x1010355

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2125
    const v4, 0x7f070080

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2126
    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2127
    const-string v4, "OPEN"

    const-string v7, "TMO"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1259

    const v4, 0x7f07005c

    :goto_122f
    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$95;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$95;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2153
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$96;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$96;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2161
    new-instance v4, Lcom/wssyncmldm/ui/XUIDialogActivity$97;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$97;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2171
    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 2127
    :cond_1259
    const v4, 0x7f07002d

    goto :goto_122f

    .line 2175
    .end local v3           #descriptionText:Landroid/webkit/WebView;
    .end local v19           #abUpdateDlg:Landroid/app/AlertDialog$Builder;
    .end local v21           #bPost:Z
    .end local v26           #dObjSize:D
    .end local v32           #detailsText:Landroid/widget/TextView;
    .end local v36           #downloadedText:Landroid/widget/TextView;
    .end local v40           #fumoinfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;
    .end local v43           #inflater2:Landroid/view/LayoutInflater;
    .end local v44           #installDetailView:Landroid/view/View;
    .end local v45           #installText:Landroid/widget/TextView;
    .end local v47           #nColor:I
    .end local v48           #nCount:I
    .end local v52           #nStatus:I
    .end local v65           #szObjSizeInfo:Ljava/lang/String;
    :sswitch_125d
    const v49, 0x7f070087

    .line 2177
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1080027

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07003b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$100;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$100;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$99;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$99;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$98;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$98;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 2208
    :sswitch_12ac
    const v4, 0x7f070089

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 2209
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$104;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$104;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070024

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$103;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$103;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$102;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$102;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$101;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$101;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 2249
    :sswitch_130f
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108009b

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x1010355

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070080

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f070056

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIDialogActivity$107;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$107;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$106;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$106;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v7, Lcom/wssyncmldm/ui/XUIDialogActivity$105;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity$105;-><init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    goto/16 :goto_b

    .line 505
    :sswitch_data_135c
    .sparse-switch
        0x67 -> :sswitch_c
        0x69 -> :sswitch_4cc
        0x6a -> :sswitch_517
        0x6b -> :sswitch_570
        0x6c -> :sswitch_616
        0x6d -> :sswitch_687
        0x6e -> :sswitch_70a
        0x6f -> :sswitch_d6
        0x89 -> :sswitch_1a0
        0x8a -> :sswitch_123
        0x91 -> :sswitch_24e
        0x94 -> :sswitch_28c
        0x95 -> :sswitch_125d
        0x96 -> :sswitch_130f
        0xac -> :sswitch_6b
        0xcb -> :sswitch_764
        0xce -> :sswitch_901
        0xcf -> :sswitch_7c1
        0xd0 -> :sswitch_d37
        0xd5 -> :sswitch_841
        0xd6 -> :sswitch_78e
        0xd7 -> :sswitch_d84
        0xd8 -> :sswitch_f7d
        0xde -> :sswitch_8af
        0xe7 -> :sswitch_ca9
        0xe9 -> :sswitch_bbe
        0xea -> :sswitch_12ac
        0xec -> :sswitch_45a
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 2330
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2331
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2332
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 8
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 2289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2290
    packed-switch p1, :pswitch_data_50

    .line 2313
    :cond_1a
    :goto_1a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 2314
    return-void

    .line 2293
    :pswitch_1e
    const-string v1, "OPEN"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2295
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetCallState()I

    move-result v1

    if-eqz v1, :cond_39

    move-object v1, p2

    .line 2297
    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2302
    :cond_39
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetDeviceEncryptState()Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;

    move-result-object v0

    .line 2303
    .local v0, devEncrypt:Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaDecrypted:Z

    if-nez v1, :cond_1a

    move-object v1, p2

    .line 2305
    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1a

    .line 2290
    nop

    :pswitch_data_50
    .packed-switch 0xd8
        :pswitch_1e
    .end packed-switch
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 2338
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2342
    :try_start_5
    sget v1, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DialogId:I

    if-lez v1, :cond_e

    .line 2344
    sget v1, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_DialogId:I

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgShow(I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_12

    .line 2352
    :cond_e
    :goto_e
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2353
    return-void

    .line 2347
    :catch_12
    move-exception v0

    .line 2349
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e
.end method

.method protected xuiDlgFotaPostpone()V
    .registers 5

    .prologue
    .line 481
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    .local v0, i:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 483
    return-void
.end method

.method public xuiDlgShow(I)Z
    .registers 9
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0xd7

    const/4 v4, 0x0

    const/16 v3, 0xcb

    const/16 v2, 0x67

    .line 2389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2390
    sparse-switch p1, :sswitch_data_10e

    .line 2501
    :goto_21
    return v6

    .line 2393
    :sswitch_22
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto :goto_21

    .line 2396
    :sswitch_26
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2397
    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto :goto_21

    .line 2400
    :sswitch_2f
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2401
    const/16 v0, 0x6f

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto :goto_21

    .line 2404
    :sswitch_38
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2405
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2406
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto :goto_21

    .line 2409
    :sswitch_44
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2410
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2411
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto :goto_21

    .line 2416
    :sswitch_50
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2417
    sget-object v0, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    invoke-virtual {p0, v0, v6}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgUICRequest(Ljava/lang/Object;Z)V

    .line 2418
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    goto :goto_21

    .line 2421
    :sswitch_5c
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2422
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto :goto_21

    .line 2427
    :sswitch_63
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2428
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2429
    invoke-static {v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgResetUpdateDownloadProgressBar(Z)V

    goto :goto_21

    .line 2433
    :sswitch_6d
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2434
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2435
    const/16 v0, 0xcf

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto :goto_21

    .line 2438
    :sswitch_79
    const/16 v0, 0xd6

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto :goto_21

    .line 2441
    :sswitch_7f
    const/16 v0, 0xd6

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2442
    const/16 v0, 0xd5

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto :goto_21

    .line 2445
    :sswitch_8a
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2446
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2447
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto :goto_21

    .line 2450
    :sswitch_94
    const/16 v0, 0x91

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto :goto_21

    .line 2453
    :sswitch_9a
    const/16 v0, 0x94

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto :goto_21

    .line 2456
    :sswitch_a0
    const/16 v0, 0xec

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto/16 :goto_21

    .line 2459
    :sswitch_a7
    const/16 v0, 0xde

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto/16 :goto_21

    .line 2462
    :sswitch_ae
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2463
    invoke-virtual {p0, v5}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2464
    const/16 v0, 0xce

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto/16 :goto_21

    .line 2467
    :sswitch_bb
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2468
    invoke-virtual {p0, v5}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2469
    const/16 v0, 0xe9

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto/16 :goto_21

    .line 2472
    :sswitch_c8
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2473
    const/16 v0, 0xe7

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto/16 :goto_21

    .line 2476
    :sswitch_d2
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2477
    const/16 v0, 0xd0

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto/16 :goto_21

    .line 2480
    :sswitch_dc
    invoke-virtual {p0, v5}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto/16 :goto_21

    .line 2483
    :sswitch_e1
    const/16 v0, 0xd8

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    .line 2484
    invoke-static {v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgResetUpdateDownloadProgressBar(Z)V

    goto/16 :goto_21

    .line 2487
    :sswitch_eb
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto/16 :goto_21

    .line 2490
    :sswitch_f2
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2491
    const/16 v0, 0xd8

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2492
    const/16 v0, 0xea

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto/16 :goto_21

    .line 2495
    :sswitch_101
    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2496
    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->showDialog(I)V

    goto/16 :goto_21

    .line 2390
    nop

    :sswitch_data_10e
    .sparse-switch
        0x67 -> :sswitch_22
        0x68 -> :sswitch_50
        0x6f -> :sswitch_2f
        0x89 -> :sswitch_44
        0x8a -> :sswitch_38
        0x91 -> :sswitch_94
        0x94 -> :sswitch_9a
        0x95 -> :sswitch_eb
        0x96 -> :sswitch_101
        0xac -> :sswitch_26
        0xad -> :sswitch_8a
        0xcb -> :sswitch_5c
        0xcc -> :sswitch_63
        0xce -> :sswitch_ae
        0xcf -> :sswitch_6d
        0xd0 -> :sswitch_d2
        0xd3 -> :sswitch_63
        0xd4 -> :sswitch_63
        0xd5 -> :sswitch_7f
        0xd6 -> :sswitch_79
        0xd7 -> :sswitch_dc
        0xd8 -> :sswitch_e1
        0xde -> :sswitch_a7
        0xe7 -> :sswitch_c8
        0xe9 -> :sswitch_bb
        0xea -> :sswitch_f2
        0xec -> :sswitch_a0
    .end sparse-switch
.end method

.method protected xuiDlgShowWiFiSetting()V
    .registers 3

    .prologue
    .line 2537
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2538
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2539
    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 2540
    return-void
.end method

.method protected xuiDlgUICRequest(Ljava/lang/Object;Z)V
    .registers 13
    .parameter "uicOption"
    .parameter "bDisplay"

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, pUicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    const/4 v3, 0x0

    .line 184
    .local v3, pUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    if-eqz p1, :cond_2d

    move-object v2, p1

    .line 186
    check-cast v2, Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 194
    const-string v4, ""

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 196
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->UICType:I

    if-lt v4, v6, :cond_25

    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->UICType:I

    if-gt v4, v7, :cond_25

    .line 198
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCreateResult()Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-result-object v3

    .line 200
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->appId:I

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMUicResult;->appId:I

    .line 201
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->UICType:I

    iput v4, v3, Lcom/wssyncmldm/eng/core/XDMUicResult;->UICType:I

    .line 202
    sput-object v3, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicResult:Ljava/lang/Object;

    .line 205
    :cond_25
    if-eqz p2, :cond_2c

    .line 207
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->UICType:I

    packed-switch v4, :pswitch_data_166

    .line 296
    :cond_2c
    :goto_2c
    return-void

    .line 190
    :cond_2d
    const-string v4, "uicOption is null"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_2c

    .line 211
    :pswitch_33
    invoke-direct {p0, v6}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgPopup(I)V

    goto :goto_2c

    .line 215
    :pswitch_37
    invoke-direct {p0, v5}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgPopup(I)V

    goto :goto_2c

    .line 219
    :pswitch_3b
    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget v4, v4, Lcom/wssyncmldm/eng/core/XDMUicOption;->maxLen:I

    if-lez v4, :cond_70

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max Len :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget v4, v4, Lcom/wssyncmldm/eng/core/XDMUicOption;->maxLen:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szUicConformText:Ljava/lang/String;

    .line 221
    :cond_70
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgPopup(I)V

    goto :goto_2c

    .line 225
    :pswitch_75
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuNumbers:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szUicMenuList:[Ljava/lang/String;

    .line 226
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7c
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuNumbers:I

    if-ge v1, v4, :cond_9b

    .line 228
    iget-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szUicMenuList:[Ljava/lang/String;

    iget-object v5, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v1

    .line 229
    iget-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szUicMenuList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 230
    iget-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szUicMenuList:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v1

    .line 226
    :cond_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 233
    :cond_9b
    iget-object v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    if-eqz v4, :cond_c3

    const-string v4, "0"

    iget-object v5, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v5, v5, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_c3

    .line 234
    iget-object v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_nDRSingleSelected:I

    .line 238
    :goto_bd
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgPopup(I)V

    goto/16 :goto_2c

    .line 236
    :cond_c3
    const/4 v4, -0x1

    iput v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_nDRSingleSelected:I

    goto :goto_bd

    .line 242
    .end local v1           #i:I
    :pswitch_c7
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuNumbers:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szUicMenuList:[Ljava/lang/String;

    .line 243
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuNumbers:I

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_bDRMultiSelected:[Z

    .line 245
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_d4
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuNumbers:I

    if-ge v1, v4, :cond_f3

    .line 247
    iget-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szUicMenuList:[Ljava/lang/String;

    iget-object v5, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v1

    .line 248
    iget-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szUicMenuList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 249
    iget-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szUicMenuList:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v1

    .line 245
    :cond_f0
    add-int/lit8 v1, v1, 0x1

    goto :goto_d4

    .line 253
    :cond_f3
    if-nez v3, :cond_fc

    .line 255
    const-string v4, "pUicResult is null"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 259
    :cond_fc
    const/4 v1, 0x0

    :goto_fd
    iget-object v4, v3, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    array-length v4, v4

    if-ge v1, v4, :cond_133

    .line 261
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, DefaultSet:Ljava/lang/String;
    iget-object v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->len:I

    if-eqz v4, :cond_12f

    const-string v4, "0"

    iget-object v5, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v5, v5, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_12f

    .line 264
    iget-object v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, v4, Lcom/wssyncmldm/eng/core/XDMText;->text:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12c

    .line 266
    iget-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_bDRMultiSelected:[Z

    if-eqz v4, :cond_12c

    .line 268
    iget-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_bDRMultiSelected:[Z

    add-int/lit8 v5, v1, -0x1

    aput-boolean v6, v4, v5

    .line 259
    :cond_12c
    :goto_12c
    add-int/lit8 v1, v1, 0x1

    goto :goto_fd

    .line 274
    :cond_12f
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_bDRMultiSelected:[Z

    goto :goto_12c

    .line 278
    .end local v0           #DefaultSet:Ljava/lang/String;
    :cond_133
    invoke-direct {p0, v7}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgPopup(I)V

    goto/16 :goto_2c

    .line 282
    .end local v1           #i:I
    :pswitch_138
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->progrType:I

    if-nez v4, :cond_142

    .line 283
    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgPopup(I)V

    goto/16 :goto_2c

    .line 284
    :cond_142
    iget v4, v2, Lcom/wssyncmldm/eng/core/XDMUicOption;->progrType:I

    if-ne v4, v5, :cond_14d

    .line 285
    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgUicProgressResult(Ljava/lang/Object;)V

    goto/16 :goto_2c

    .line 288
    :cond_14d
    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicPrgDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-wide v6, v4, Lcom/wssyncmldm/eng/core/XDMUicOption;->progrCurSize:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    sget-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    check-cast v4, Lcom/wssyncmldm/eng/core/XDMUicOption;

    iget-wide v8, v4, Lcom/wssyncmldm/eng/core/XDMUicOption;->progrMaxSize:J

    div-long/2addr v6, v8

    long-to-int v4, v6

    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_2c

    .line 207
    nop

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_75
        :pswitch_c7
        :pswitch_138
    .end packed-switch
.end method

.method public xuiDlgUicChoiceResult(Ljava/lang/Object;I)V
    .registers 10
    .parameter "pThis"
    .parameter "StateCode"

    .prologue
    const/16 v3, 0x10

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 426
    move-object v0, p1

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 427
    .local v0, pUicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    sget-object v2, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicResult:Ljava/lang/Object;

    check-cast v2, Lcom/wssyncmldm/eng/core/XDMUicResult;

    .line 428
    .local v2, uicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    const/4 v1, 0x0

    .line 430
    .local v1, pUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    sparse-switch p2, :sswitch_data_44

    .line 456
    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    .line 460
    :cond_12
    :goto_12
    iget v3, v0, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuNumbers:I

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->MenuNumbers:I

    .line 461
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCreateResult()Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-result-object v1

    .line 462
    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCopyResult(Lcom/wssyncmldm/eng/core/XDMUicResult;Lcom/wssyncmldm/eng/core/XDMUicResult;)Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-result-object v1

    .line 464
    const/16 v3, 0x81

    invoke-static {v3, v1, v4}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 465
    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicFreeResult(Lcom/wssyncmldm/eng/core/XDMUicResult;)Ljava/lang/Object;

    .line 467
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicFreeUicOption(Lcom/wssyncmldm/eng/core/XDMUicOption;)Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 468
    sput-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    .line 469
    sput-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicResult:Ljava/lang/Object;

    .line 470
    return-void

    .line 434
    :sswitch_2e
    iget v3, v0, Lcom/wssyncmldm/eng/core/XDMUicOption;->UICType:I

    if-ne v3, v5, :cond_35

    .line 436
    iput v5, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    goto :goto_12

    .line 438
    :cond_35
    iget v3, v0, Lcom/wssyncmldm/eng/core/XDMUicOption;->UICType:I

    if-ne v3, v6, :cond_12

    .line 440
    iput v6, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    goto :goto_12

    .line 446
    :sswitch_3c
    const/4 v3, 0x2

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    goto :goto_12

    .line 451
    :sswitch_40
    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    goto :goto_12

    .line 430
    nop

    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_2e
        0x2 -> :sswitch_3c
        0x10 -> :sswitch_40
    .end sparse-switch
.end method

.method protected xuiDlgUicConfirmResult(Ljava/lang/Object;I)V
    .registers 8
    .parameter "pThis"
    .parameter "StateCode"

    .prologue
    const/4 v4, 0x0

    .line 363
    move-object v0, p1

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 364
    .local v0, pUicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    sget-object v2, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicResult:Ljava/lang/Object;

    check-cast v2, Lcom/wssyncmldm/eng/core/XDMUicResult;

    .line 365
    .local v2, uicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    const/4 v1, 0x0

    .line 367
    .local v1, pUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    if-nez v2, :cond_c

    .line 381
    :goto_b
    return-void

    .line 370
    :cond_c
    iput p2, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    .line 372
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCreateResult()Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-result-object v1

    .line 373
    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCopyResult(Lcom/wssyncmldm/eng/core/XDMUicResult;Lcom/wssyncmldm/eng/core/XDMUicResult;)Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-result-object v1

    .line 375
    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicFreeResult(Lcom/wssyncmldm/eng/core/XDMUicResult;)Ljava/lang/Object;

    .line 376
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicFreeUicOption(Lcom/wssyncmldm/eng/core/XDMUicOption;)Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 377
    sput-object v4, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicResult:Ljava/lang/Object;

    .line 378
    const/4 v0, 0x0

    .line 380
    const/16 v3, 0x81

    invoke-static {v3, v1, v4}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b
.end method

.method protected xuiDlgUicInputResult(Ljava/lang/Object;I)V
    .registers 10
    .parameter "pThis"
    .parameter "StateCode"

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 385
    move-object v0, p1

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 386
    .local v0, pUicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;
    sget-object v2, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicResult:Ljava/lang/Object;

    check-cast v2, Lcom/wssyncmldm/eng/core/XDMUicResult;

    .line 387
    .local v2, uicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    const/4 v1, 0x0

    .line 389
    .local v1, pUicResult:Lcom/wssyncmldm/eng/core/XDMUicResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 391
    sparse-switch p2, :sswitch_data_5c

    .line 408
    iput v6, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    .line 412
    :cond_26
    :goto_26
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCreateResult()Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-result-object v1

    .line 413
    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicCopyResult(Lcom/wssyncmldm/eng/core/XDMUicResult;Lcom/wssyncmldm/eng/core/XDMUicResult;)Lcom/wssyncmldm/eng/core/XDMUicResult;

    move-result-object v1

    .line 415
    const/16 v3, 0x81

    invoke-static {v3, v1, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 416
    invoke-static {v2}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicFreeResult(Lcom/wssyncmldm/eng/core/XDMUicResult;)Ljava/lang/Object;

    .line 417
    const/4 v2, 0x0

    .line 418
    sput-object v5, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_UicResult:Ljava/lang/Object;

    .line 420
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMUic;->xdmUicFreeUicOption(Lcom/wssyncmldm/eng/core/XDMUicOption;)Lcom/wssyncmldm/eng/core/XDMUicOption;

    .line 421
    sput-object v5, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    .line 422
    return-void

    .line 394
    :sswitch_3f
    const/4 v3, 0x0

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    .line 395
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szResponseText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 396
    iget-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    iget-object v4, p0, Lcom/wssyncmldm/ui/XUIDialogActivity;->m_szResponseText:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/wssyncmldm/eng/core/XDMList;->xdmListAppendStrText(Lcom/wssyncmldm/eng/core/XDMText;Ljava/lang/String;)Lcom/wssyncmldm/eng/core/XDMText;

    move-result-object v3

    iput-object v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->text:Lcom/wssyncmldm/eng/core/XDMText;

    goto :goto_26

    .line 400
    :sswitch_55
    iput v6, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    goto :goto_26

    .line 404
    :sswitch_58
    const/4 v3, 0x2

    iput v3, v2, Lcom/wssyncmldm/eng/core/XDMUicResult;->result:I

    goto :goto_26

    .line 391
    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_3f
        0x2 -> :sswitch_58
        0x10 -> :sswitch_55
    .end sparse-switch
.end method
