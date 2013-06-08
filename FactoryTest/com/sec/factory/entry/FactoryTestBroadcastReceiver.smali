.class public Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FactoryTestBroadcastReceiver.java"


# static fields
.field private static mAlreadyReceivedCSC_COMPLETED:Z

.field private static mAlreadyReceivedMEIDA_SCANNING:Z

.field private static mIsFirstMediaScan:Z

.field private static mIsSendingBootMsg:Z

.field private static mPrepare15Test:Z

.field private static final mSalesCode:Ljava/lang/String;

.field private static misRunningFtClient:Z


# instance fields
.field private final ACTION_GET_FTA:Ljava/lang/String;

.field private final ACTION_REQUEST_RECONNECT:Ljava/lang/String;

.field private final ACTION_SECPHONE_READY:Ljava/lang/String;

.field private final ACTION_SECRET_CODE:Ljava/lang/String;

.field private final ACTION_SIM_STATE_CHANGED:Ljava/lang/String;

.field private final REQUEST_FACTORY_RESET:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 52
    const-string v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mSalesCode:Ljava/lang/String;

    .line 56
    sput-boolean v2, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mAlreadyReceivedCSC_COMPLETED:Z

    .line 57
    sput-boolean v2, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mAlreadyReceivedMEIDA_SCANNING:Z

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mIsFirstMediaScan:Z

    .line 59
    sput-boolean v2, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mIsSendingBootMsg:Z

    .line 60
    sput-boolean v2, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mPrepare15Test:Z

    .line 61
    sput-boolean v2, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->misRunningFtClient:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    const-string v0, "android.provider.Telephony.SECRET_CODE"

    iput-object v0, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->ACTION_SECRET_CODE:Ljava/lang/String;

    .line 34
    const-string v0, "android.intent.action.SECPHONE_READY"

    iput-object v0, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->ACTION_SECPHONE_READY:Ljava/lang/String;

    .line 35
    const-string v0, "com.sec.atd.request_reconnect"

    iput-object v0, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->ACTION_REQUEST_RECONNECT:Ljava/lang/String;

    .line 36
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    iput-object v0, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->ACTION_SIM_STATE_CHANGED:Ljava/lang/String;

    .line 37
    const-string v0, "android.intent.action.GET_FTA"

    iput-object v0, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->ACTION_GET_FTA:Ljava/lang/String;

    .line 41
    const-string v0, "com.sec.factory.entry.REQUEST_FACTORY_RESET"

    iput-object v0, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->REQUEST_FACTORY_RESET:Ljava/lang/String;

    return-void
.end method

.method private SecondAckFileCheck()Ljava/lang/Boolean;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 338
    const-string v0, "/efs/FactoryApp/reset_flag"

    .line 339
    .local v0, SecondAckCheckFile:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v1, in:Ljava/io/File;
    const-string v2, "FactoryTestBroadcastReceiver"

    const-string v3, "SecondAckFileCheck"

    const-string v4, "SecondAckFileCheck() - in"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v5, :cond_28

    .line 342
    const-string v2, "FactoryTestBroadcastReceiver"

    const-string v3, "SecondAckFileCheck"

    const-string v4, "SecondAckFileCheck() - true"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 344
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 347
    :goto_27
    return-object v2

    .line 346
    :cond_28
    const-string v2, "FactoryTestBroadcastReceiver"

    const-string v3, "SecondAckFileCheck"

    const-string v4, "SecondAckFileCheck() - false"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_27
.end method

.method private createFileNotiCheck()V
    .registers 7

    .prologue
    .line 353
    const-string v0, "/efs/FactoryApp/reset_flag"

    .line 355
    .local v0, SecondAckCheckFile:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, SecondAckFile:Ljava/io/File;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 360
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 361
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 363
    :cond_1a
    const-string v3, "FactoryTestBroadcastReceiver"

    const-string v4, "createFileNotiCheck"

    const-string v5, "createFileNotiCheck - SecondAckFile"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_23} :catch_24
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_23} :catch_29

    .line 371
    :goto_23
    return-void

    .line 364
    :catch_24
    move-exception v2

    .line 366
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_23

    .line 367
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_29
    move-exception v2

    .line 369
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23
.end method

.method private launchFactoryHistoryView()V
    .registers 4

    .prologue
    .line 430
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/support/XMLDataStorage;->wasCompletedParsing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 431
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "launchFactoryHistoryView"

    const-string v2, "Launch UIFactoryTestNVView"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIFactoryTestNVView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 434
    iget-object v1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 439
    :goto_26
    return-void

    .line 436
    :cond_27
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "launchFactoryHistoryView"

    const-string v2, "XML data parsing was not completed."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v1, "XML data parsing was not completed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_26
.end method

.method private launchFactoryTest()V
    .registers 4

    .prologue
    .line 403
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/support/XMLDataStorage;->wasCompletedParsing()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 404
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "launchFactoryTest"

    const-string v2, "Launch FactoryTestMain"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 407
    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 409
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    iget-object v1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 415
    :goto_30
    return-void

    .line 412
    :cond_31
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "launchFactoryTest"

    const-string v2, "XML data parsing was not completed."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v1, "XML data parsing was not completed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_30
.end method

.method private launchMainHistoryView()V
    .registers 4

    .prologue
    .line 418
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/support/XMLDataStorage;->wasCompletedParsing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 419
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "launchMainHistoryView"

    const-string v2, "Launch UIFactoryHistory"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIFactoryHistory;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 427
    :goto_26
    return-void

    .line 424
    :cond_27
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "launchMainHistoryView"

    const-string v2, "XML data parsing was not completed."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v1, "XML data parsing was not completed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_26
.end method

.method private launchSystemInfo()V
    .registers 5

    .prologue
    .line 397
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "launchSystemInfo"

    const-string v2, "Start SystemInfoService"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/factory/app/systeminfo/SystemInfoService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 400
    return-void
.end method

.method private sendDisableKeyguardIntent()V
    .registers 5

    .prologue
    .line 466
    const-string v1, "FactoryTestBroadcastReceiver"

    const-string v2, "sendDisableKeyguardIntent"

    const-string v3, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, keyguardIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method private sendFactoryTestModeIntent()V
    .registers 5

    .prologue
    .line 452
    const-string v1, "FactoryTestBroadcastReceiver"

    const-string v2, "sendFactoryTestModeIntent"

    const-string v3, "android.intent.action.SET_FACTORY_SIM_MODE"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_FACTORY_SIM_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 455
    iget-object v1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 456
    return-void
.end method

.method private sendRTCAlarmOffIntent()V
    .registers 6

    .prologue
    .line 459
    const-string v2, "FactoryTestBroadcastReceiver"

    const-string v3, "sendRTCAlarmOffIntent"

    const-string v4, "android.intent.action.START_FACTORY_TEST"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v0, "android.intent.action.START_FACTORY_TEST"

    .line 461
    .local v0, RTC_OFF:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.START_FACTORY_TEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v1, alarmManagerOffIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 463
    return-void
.end method

.method private startDummyFtClientForBootCompleted()V
    .registers 5

    .prologue
    .line 386
    const-string v1, "FactoryTestBroadcastReceiver"

    const-string v2, "startDummyFtClientForBootCompleted"

    const-string v3, "start DummyFtClient service for APO"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 390
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.factory"

    const-string v2, "com.sec.factory.aporiented.DummyFtClient"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 394
    return-void
.end method

.method private startFactoryTestClientServiceAPO()V
    .registers 5

    .prologue
    .line 374
    const-string v1, "FactoryTestBroadcastReceiver"

    const-string v2, "startFactoryTestClientServiceAPO"

    const-string v3, "start FactoryTestClient service for APO"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->misRunningFtClient:Z

    .line 378
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 379
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.factory"

    const-string v2, "com.sec.factory.aporiented.FtClient"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 382
    iget-object v1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 383
    return-void
.end method

.method private startFactoryTestSupportService()V
    .registers 4

    .prologue
    .line 442
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "startFactoryTestSupportService"

    const-string v2, "Start FactoryTestSupportService"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 447
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 449
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 66
    iput-object p1, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "FactoryTestBroadcastReceiver"

    const-string v2, "onReceive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 71
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/factory/support/XMLDataStorage;->parseXML(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 72
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "ACTION_BOOT_COMPLETED => XML data parsing was failed."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_3d
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->disable15Test()Z

    .line 78
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->getFtClientEnableState()Z

    move-result v0

    if-nez v0, :cond_58

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->connectedJIG()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 80
    :cond_58
    const-string v0, "SUPPORT_BOOST_MEDIASCAN"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 81
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "wake lock"

    const-string v2, "SUPPORT_BOOST_MEDIASCAN"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p1}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/ModulePower;->doMediaScanWakeLock(Z)V

    .line 85
    :cond_70
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 86
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->startFactoryTestClientServiceAPO()V

    .line 94
    :cond_79
    :goto_79
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_8d

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 96
    :cond_8d
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "ACTION_BOOT_COMPLETED : isFactorySim && isFactoryMode == true"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->enableFtClient()Z

    .line 99
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->sendRTCAlarmOffIntent()V

    .line 100
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->startFactoryTestSupportService()V

    .line 104
    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 106
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "ACTION_BOOT_COMPLETED => Factory mode: CDMA model timezone restored"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 110
    const-string v1, "Asia/Shanghai"

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 114
    :cond_d3
    const-string v0, "TMB"

    const-string v1, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 115
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    const-string v1, "com.tmobile.pr.mytmobile"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleCommon;->disableApplication(Ljava/lang/String;)V

    .line 116
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    const-string v1, "com.zynga.msc.widget.tmobile"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleCommon;->disableApplication(Ljava/lang/String;)V

    .line 119
    :cond_fd
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->launchSystemInfo()V

    .line 335
    :cond_100
    :goto_100
    return-void

    .line 88
    :cond_101
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isConnectionModeNone()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 89
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "ACTION_BOOT_COMPLETED startFactoryTestClientServiceAPO"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->startFactoryTestClientServiceAPO()V

    goto/16 :goto_79

    .line 121
    :cond_119
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->disableFtClient()Z

    goto :goto_100

    .line 123
    :cond_121
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ed

    .line 124
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/factory/support/XMLDataStorage;->parseXML(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13c

    .line 125
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "ACTION_SIM_STATE_CHANGED => XML data parsing was failed."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_13c
    const-string v0, "UnKnow"

    .line 129
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 133
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v2, Ljava/io/File;

    const-string v3, "TESTSIM_NOTI"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e3

    if-eqz v0, :cond_1e3

    .line 138
    const-string v2, "45001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17b

    const-string v2, "00101"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17b

    const-string v2, "999999999999999"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d2

    .line 140
    :cond_17b
    const-string v2, "FactoryTestBroadcastReceiver"

    const-string v3, "onReceive"

    const-string v4, "Test SIM/Fact SIM Detected"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "TESTSIM_NOTI"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    :goto_18b
    const-string v2, "IMSI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19b

    const-string v2, "LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b8

    .line 152
    :cond_19b
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->isFactorySim()Z

    move-result v1

    if-eqz v1, :cond_1b8

    .line 153
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->sendDisableKeyguardIntent()V

    .line 154
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->sendRTCAlarmOffIntent()V

    .line 155
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->startFactoryTestSupportService()V

    .line 156
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->launchSystemInfo()V

    .line 157
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->enableFtClient()Z

    .line 160
    :cond_1b8
    const-string v1, "999999999999999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 161
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "write"

    const-string v2, "write FACTORY_START after SIM_STATE_CHANGED"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->setSwitchFactoryState()V

    goto/16 :goto_100

    .line 143
    :cond_1d2
    const-string v2, "FactoryTestBroadcastReceiver"

    const-string v3, "onReceive"

    const-string v4, "Not a Test SIM"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "TESTSIM_NOTI"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_18b

    .line 147
    :cond_1e3
    const-string v2, "FactoryTestBroadcastReceiver"

    const-string v3, "onReceive"

    const-string v4, "File does not exist or SIM not inserted"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18b

    .line 164
    :cond_1ed
    const-string v1, "com.sec.atd.request_reconnect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21d

    .line 166
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "com.sec.atd.request_reconnect"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/aporiented/FtClient;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/aporiented/FtClient;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 169
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "re-start FtClient"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_100

    .line 170
    :cond_21d
    const-string v1, "android.intent.action.CSC_MODEM_SETTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_286

    .line 171
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "intent.action.CSC_MODEM_SETTING"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/factory/support/XMLDataStorage;->parseXML(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_241

    .line 173
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "intent.action.CSC_MODEM_SETTING => XML data parsing was failed."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_241
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isConnectionModeNone()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 178
    sput-boolean v5, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mAlreadyReceivedCSC_COMPLETED:Z

    .line 179
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAlreadyReceivedCSC_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mAlreadyReceivedCSC_COMPLETED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-boolean v0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mAlreadyReceivedCSC_COMPLETED:Z

    if-eqz v0, :cond_100

    sget-boolean v0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mAlreadyReceivedMEIDA_SCANNING:Z

    if-eqz v0, :cond_100

    .line 182
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "send"

    const-string v2, "ACTION_SEND_RESET_COMPLETED"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.factory.entry.SEND_RESET_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_100

    .line 186
    :cond_286
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_441

    .line 187
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "Intent.ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/factory/support/XMLDataStorage;->parseXML(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2aa

    .line 189
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "ACTION_MEDIA_SCANNER_FINISHED => XML data parsing was failed."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_2aa
    sget-boolean v0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mIsFirstMediaScan:Z

    if-ne v0, v5, :cond_2bc

    .line 195
    sput-boolean v6, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mIsFirstMediaScan:Z

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.factory.entry.SEND_SET_FOREGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_100

    .line 202
    :cond_2bc
    const-string v0, "ATT"

    sget-object v1, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40a

    .line 203
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->SecondAckFileCheck()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3ff

    .line 204
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "ACTION_MEDIA_SCANNER_FINISHED"

    const-string v2, "This time is factory mode(IMSI is 999999999999999) - 2nd  ACK Noti Start."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {p1}, Lcom/sec/factory/entry/DisplayNotiBar;->createNotification(Landroid/content/Context;)V

    .line 215
    :goto_2dc
    sget-boolean v0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mIsSendingBootMsg:Z

    if-nez v0, :cond_3a9

    .line 216
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_300

    .line 217
    sget-boolean v0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->misRunningFtClient:Z

    if-nez v0, :cond_300

    .line 219
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "USER MODE"

    const-string v2, "BOOT_COMPLETE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isConnectionModeNone()Z

    move-result v0

    if-nez v0, :cond_300

    .line 221
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->startDummyFtClientForBootCompleted()V

    .line 226
    :cond_300
    sput-boolean v5, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mIsSendingBootMsg:Z

    .line 227
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "send"

    const-string v2, "ACTION_SEND_BOOT_COMPLETED"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.factory.entry.SEND_BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_32f

    .line 230
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "write"

    const-string v2, "write FACTORY_START after SEND_BOOT_COMPLETED"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->setSwitchFactoryState()V

    .line 233
    :cond_32f
    const-string v0, "SUPPORT_BOOST_MEDIASCAN"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_347

    .line 234
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "wake lock"

    const-string v2, "SUPPORT_BOOST_MEDIASCAN"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {p1}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/factory/modules/ModulePower;->doMediaScanWakeLock(Z)V

    .line 237
    :cond_347
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_35b

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_415

    .line 239
    :cond_35b
    sget-boolean v0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mPrepare15Test:Z

    if-ne v0, v5, :cond_364

    .line 240
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->launchFactoryTest()V

    .line 241
    sput-boolean v6, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mPrepare15Test:Z

    .line 251
    :cond_364
    :goto_364
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->enable15Test()Z

    .line 253
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_385

    const-string v0, "eng"

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->getBinaryType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a9

    :cond_385
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->FactoryShortcutExists()Z

    move-result v0

    if-nez v0, :cond_3a9

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_3a9

    .line 257
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "CreateFactoyShortCut - test"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->CreateFactoyShortCut()V

    .line 263
    :cond_3a9
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isFirstBoot()Z

    move-result v0

    if-ne v0, v5, :cond_100

    .line 265
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isConnectionModeNone()Z

    move-result v0

    if-eqz v0, :cond_3f6

    .line 266
    sput-boolean v5, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mAlreadyReceivedMEIDA_SCANNING:Z

    .line 267
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAlreadyReceivedMEIDA_SCANNING"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mAlreadyReceivedMEIDA_SCANNING:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-boolean v0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mAlreadyReceivedCSC_COMPLETED:Z

    if-eqz v0, :cond_3f6

    sget-boolean v0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mAlreadyReceivedMEIDA_SCANNING:Z

    if-eqz v0, :cond_3f6

    .line 270
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "send"

    const-string v2, "ACTION_SEND_RESET_COMPLETED"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.factory.entry.SEND_RESET_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    :cond_3f6
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->setFirstBoot()Z

    goto/16 :goto_100

    .line 208
    :cond_3ff
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "ACTION_MEDIA_SCANNER_FINISHED"

    const-string v2, "reset_flag is Not exit!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2dc

    .line 212
    :cond_40a
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "ACTION_MEDIA_SCANNER_FINISHED"

    const-string v2, "Not ATT MODEL "

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2dc

    .line 246
    :cond_415
    const-string v0, "TMB"

    const-string v1, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_364

    .line 247
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    const-string v1, "com.tmobile.pr.mytmobile"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleCommon;->enableApplication(Ljava/lang/String;)V

    .line 248
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    const-string v1, "com.zynga.msc.widget.tmobile"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleCommon;->enableApplication(Ljava/lang/String;)V

    goto/16 :goto_364

    .line 279
    :cond_441
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4ab

    .line 280
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/factory/support/XMLDataStorage;->parseXML(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_45c

    .line 281
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "PACKAGE_CHANGED => XML data parsing was failed."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_45c
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string v1, "com.google.android.setupwizard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 285
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "android.intent.action.PACKAGE_CHANGED - setupWizard"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_48f

    const-string v0, "eng"

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->getBinaryType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_100

    :cond_48f
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_100

    .line 290
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "CreateFactoyShortCut"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->CreateFactoyShortCut()V

    goto/16 :goto_100

    .line 294
    :cond_4ab
    const-string v1, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_555

    .line 295
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "onReceive"

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v1, "FactoryTestBroadcastReceiver"

    const-string v2, "onReceive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/factory/support/XMLDataStorage;->parseXML(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4f1

    .line 299
    const-string v1, "FactoryTestBroadcastReceiver"

    const-string v2, "onReceive"

    const-string v3, "ACTION_SECRET_CODE => XML data parsing was failed."

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_4f1
    const-string v1, "$$15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50e

    .line 302
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->is15TestEnable()Z

    move-result v0

    if-eqz v0, :cond_50a

    .line 303
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->launchFactoryTest()V

    .line 304
    sput-boolean v6, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mPrepare15Test:Z

    goto/16 :goto_100

    .line 306
    :cond_50a
    sput-boolean v5, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mPrepare15Test:Z

    goto/16 :goto_100

    .line 308
    :cond_50e
    const-string v1, "7547"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51b

    .line 309
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->launchMainHistoryView()V

    goto/16 :goto_100

    .line 310
    :cond_51b
    const-string v1, "46744674"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_535

    .line 311
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->setFactoryMode()V

    .line 312
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->startFactoryTestSupportService()V

    .line 313
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->launchSystemInfo()V

    .line 314
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->sendFactoryTestModeIntent()V

    goto/16 :goto_100

    .line 315
    :cond_535
    const-string v1, "12345"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_548

    .line 316
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->startFactoryTestSupportService()V

    .line 317
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->launchSystemInfo()V

    .line 318
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->sendFactoryTestModeIntent()V

    goto/16 :goto_100

    .line 319
    :cond_548
    const-string v1, "08"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 320
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->launchFactoryHistoryView()V

    goto/16 :goto_100

    .line 322
    :cond_555
    const-string v1, "android.intent.action.SECPHONE_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_100

    .line 323
    const-string v1, "android.intent.action.GET_FTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_589

    .line 324
    const-string v0, "FTA_HW_VER"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string v1, "FTA_SW_VER"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_FTA_RESPONSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    const-string v3, "fta_hw_ver"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v0, "fta_sw_ver"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget-object v0, p0, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_100

    .line 330
    :cond_589
    const-string v1, "com.sec.factory.entry.REQUEST_FACTORY_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_596

    .line 331
    invoke-direct {p0}, Lcom/sec/factory/entry/FactoryTestBroadcastReceiver;->createFileNotiCheck()V

    goto/16 :goto_100

    .line 332
    :cond_596
    const-string v1, "com.sec.android.app.factoryTest.NOTI_CLEAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 333
    invoke-static {p1}, Lcom/sec/factory/entry/DisplayNotiBar;->clearNotification(Landroid/content/Context;)V

    goto/16 :goto_100
.end method
