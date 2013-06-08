.class public Lcom/sec/factory/modules/ModuleCommunicationService;
.super Landroid/app/Service;
.source "ModuleCommunicationService.java"


# static fields
.field private static mNFCTurnningOnCount:I

.field private static mNfcAdapter:Landroid/nfc/NfcAdapter;


# instance fields
.field private final BT_DISCOVERY_TIMEOUT:I

.field private final BT_LE_DISCOVERY_TIMEOUT:I

.field private final BT_LE_DISCOVERY_TIMEOUT_ON_10S:I

.field private final MSG_BT_DISCOVERY_CANCEL_TIMEOUT:B

.field private final MSG_GPS_READ:B

.field private final MSG_GPS_START:B

.field private final MSG_GPS_START_DELAY:B

.field private final MSG_GPS_STOP:B

.field private final NFC_ENABLE_DELAY:B

.field private mBtReceiver:Landroid/content/BroadcastReceiver;

.field private mData:Ljava/lang/String;

.field private mDiscoverableTime:I

.field private mGpsRetryCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIsBleSearch:Z

.field private mIsBleSearchCount:I

.field private mIsBtReceiverRegistered:Z

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 584
    const/4 v0, 0x0

    sput v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNFCTurnningOnCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    iput v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mTimeout:I

    .line 36
    iput v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mDiscoverableTime:I

    .line 38
    new-instance v0, Lcom/sec/factory/modules/ModuleCommunicationService$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleCommunicationService$1;-><init>(Lcom/sec/factory/modules/ModuleCommunicationService;)V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mBtReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v0, Lcom/sec/factory/modules/ModuleCommunicationService$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleCommunicationService$2;-><init>(Lcom/sec/factory/modules/ModuleCommunicationService;)V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    .line 355
    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBleSearch:Z

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBleSearchCount:I

    .line 358
    iput v2, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->BT_DISCOVERY_TIMEOUT:I

    .line 359
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->BT_LE_DISCOVERY_TIMEOUT:I

    .line 361
    iput v2, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->BT_LE_DISCOVERY_TIMEOUT_ON_10S:I

    .line 363
    iput-byte v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->MSG_BT_DISCOVERY_CANCEL_TIMEOUT:B

    .line 364
    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBtReceiverRegistered:Z

    .line 583
    const/16 v0, 0xe

    iput-byte v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->NFC_ENABLE_DELAY:B

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mLocationManager:Landroid/location/LocationManager;

    .line 649
    new-instance v0, Lcom/sec/factory/modules/ModuleCommunicationService$5;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleCommunicationService$5;-><init>(Lcom/sec/factory/modules/ModuleCommunicationService;)V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mLocationListener:Landroid/location/LocationListener;

    .line 671
    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->MSG_GPS_START:B

    .line 672
    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->MSG_GPS_STOP:B

    .line 673
    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->MSG_GPS_READ:B

    .line 674
    const/16 v0, 0xd

    iput-byte v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->MSG_GPS_START_DELAY:B

    .line 677
    iput v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mGpsRetryCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/factory/modules/ModuleCommunicationService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothDiscoveryStop()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/factory/modules/ModuleCommunicationService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/factory/modules/ModuleCommunicationService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->nfcEnable()V

    return-void
.end method

.method static synthetic access$1200()Landroid/nfc/NfcAdapter;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/factory/modules/ModuleCommunicationService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mDiscoverableTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/factory/modules/ModuleCommunicationService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBleSearchCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/sec/factory/modules/ModuleCommunicationService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBleSearchCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBleSearchCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/factory/modules/ModuleCommunicationService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mTimeout:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/factory/modules/ModuleCommunicationService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mTimeout:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/location/LocationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/location/LocationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/factory/modules/ModuleCommunicationService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mGpsRetryCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/factory/modules/ModuleCommunicationService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mGpsRetryCount:I

    return p1
.end method

.method static synthetic access$808(Lcom/sec/factory/modules/ModuleCommunicationService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mGpsRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mGpsRetryCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/ModuleCommunicationService;->gpsResponse(Ljava/lang/String;)V

    return-void
.end method

.method private bluetoothAudioTestStart()V
    .registers 4

    .prologue
    .line 427
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 428
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.bluetoothtest"

    const-string v2, "com.android.bluetoothtest.BluetoothAudioTest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->startActivity(Landroid/content/Intent;)V

    .line 431
    return-void
.end method

.method private bluetoothAudioTestStop()V
    .registers 3

    .prologue
    .line 434
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetoothtest.bluetoothAudioTestStop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 436
    return-void
.end method

.method private bluetoothBleDiscoveryStart(Z)V
    .registers 7
    .parameter "ack"

    .prologue
    const/4 v2, 0x1

    .line 394
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 395
    .local v0, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startLeDiscovery()Z

    .line 396
    iput-boolean v2, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBleSearch:Z

    .line 397
    iput v2, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBleSearchCount:I

    .line 398
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mTimeout:I

    .line 400
    if-ne p1, v2, :cond_1b

    .line 401
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 403
    :cond_1b
    return-void
.end method

.method private bluetoothBleDiscoveryStartOn10s(Z)V
    .registers 7
    .parameter "ack"

    .prologue
    .line 407
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 408
    .local v0, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startLeDiscovery()Z

    .line 409
    const/16 v1, 0x2710

    iput v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mTimeout:I

    .line 410
    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 411
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 413
    :cond_17
    return-void
.end method

.method private bluetoothDiscoveryStart(Z)V
    .registers 7
    .parameter "ack"

    .prologue
    .line 386
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 387
    .local v0, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 388
    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    .line 389
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 391
    :cond_12
    return-void
.end method

.method private bluetoothDiscoveryStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 418
    .local v0, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBleSearchCount:I

    .line 420
    iput-boolean v2, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBleSearch:Z

    .line 421
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 422
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 424
    :cond_18
    return-void
.end method

.method private bluetoothLeDirectTestEnd()V
    .registers 5

    .prologue
    .line 545
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 546
    .local v0, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 547
    const-string v1, "ModuleCommunicationService"

    const-string v2, "bluetoothLeDirectTestEnd"

    const-string v3, "bluetoothLeDirectTestEnd()"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->leTestEnd()Z

    .line 553
    :goto_18
    return-void

    .line 550
    :cond_19
    const-string v1, "ModuleCommunicationService"

    const-string v2, "bluetoothLeDirectTestEnd"

    const-string v3, "BtAdapter is null or not enabled."

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method private bluetoothLeRxTest(I)V
    .registers 6
    .parameter "ch"

    .prologue
    .line 523
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 524
    .local v0, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 525
    const-string v1, "ModuleCommunicationService"

    const-string v2, "bluetoothLeRxTest"

    const-string v3, "bluetoothLeRxTest()"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    packed-switch p1, :pswitch_data_3c

    .line 542
    :goto_18
    return-void

    .line 528
    :pswitch_19
    const-string v1, "ctl.start"

    const-string v2, "LE_rx_ready_low"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 531
    :pswitch_21
    const-string v1, "ctl.start"

    const-string v2, "LE_rx_ready_mid"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 534
    :pswitch_29
    const-string v1, "ctl.start"

    const-string v2, "LE_rx_ready_max"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 540
    :cond_31
    const-string v1, "ModuleCommunicationService"

    const-string v2, "bluetoothLeRxTest"

    const-string v3, "BtAdapter is null or not enabled."

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 526
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_21
        :pswitch_29
    .end packed-switch
.end method

.method private bluetoothLeTxTest(II)V
    .registers 7
    .parameter "payload_type"
    .parameter "ch"

    .prologue
    .line 458
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 459
    .local v0, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 460
    const-string v1, "ModuleCommunicationService"

    const-string v2, "bluetoothLeTxTest"

    const-string v3, "bluetoothLeTxTest()"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    packed-switch p2, :pswitch_data_88

    .line 520
    :goto_18
    return-void

    .line 464
    :pswitch_19
    packed-switch p1, :pswitch_data_96

    goto :goto_18

    .line 466
    :pswitch_1d
    const-string v1, "ctl.start"

    const-string v2, "LE_tx_low"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 469
    :pswitch_25
    const-string v1, "ctl.start"

    const-string v2, "LE_tx_M_low"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 472
    :pswitch_2d
    const-string v1, "ctl.start"

    const-string v2, "LE_tx_M_1_low"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 479
    :pswitch_35
    packed-switch p1, :pswitch_data_a0

    goto :goto_18

    .line 481
    :pswitch_39
    const-string v1, "ctl.start"

    const-string v2, "LE_tx_mid"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 484
    :pswitch_41
    const-string v1, "ctl.start"

    const-string v2, "LE_tx_M_mid"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 487
    :pswitch_49
    const-string v1, "ctl.start"

    const-string v2, "LE_tx_M_1_mid"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 494
    :pswitch_51
    packed-switch p1, :pswitch_data_aa

    goto :goto_18

    .line 496
    :pswitch_55
    const-string v1, "ctl.start"

    const-string v2, "LE_tx_max"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 499
    :pswitch_5d
    const-string v1, "ctl.start"

    const-string v2, "LE_tx_M_max"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 502
    :pswitch_65
    const-string v1, "ctl.start"

    const-string v2, "LE_tx_M_1_max"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 509
    :pswitch_6d
    const-string v1, "ctl.start"

    const-string v2, "LE_tx_I_low"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 512
    :pswitch_75
    const-string v1, "ctl.start"

    const-string v2, "LE_tx_I_max"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 518
    :cond_7d
    const-string v1, "ModuleCommunicationService"

    const-string v2, "bluetoothLeTxTest"

    const-string v3, "BtAdapter is null or not enabled."

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 462
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_19
        :pswitch_35
        :pswitch_51
        :pswitch_6d
        :pswitch_75
    .end packed-switch

    .line 464
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_25
        :pswitch_2d
    .end packed-switch

    .line 479
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_39
        :pswitch_41
        :pswitch_49
    .end packed-switch

    .line 494
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_55
        :pswitch_5d
        :pswitch_65
    .end packed-switch
.end method

.method private bluetoothOff()V
    .registers 4

    .prologue
    .line 376
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 377
    .local v0, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 378
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 383
    :goto_13
    return-void

    .line 381
    :cond_14
    const-string v1, "OFF"

    invoke-direct {p0, v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothResponse(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private bluetoothOn()V
    .registers 3

    .prologue
    .line 367
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 368
    .local v0, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    .line 369
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 373
    :goto_d
    return-void

    .line 371
    :cond_e
    const-string v1, "ON"

    invoke-direct {p0, v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothResponse(Ljava/lang/String;)V

    goto :goto_d
.end method

.method private bluetoothResponse(Ljava/lang/String;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.factory.intent.ACTION_BT_SERVICE_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 442
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->stopBtReceiver()V

    .line 443
    return-void
.end method

.method private bluetoothSetDiscoverable()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 446
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 447
    .local v0, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 448
    const-string v1, "ModuleCommunicationService"

    const-string v2, "bluetoothSetDiscoverable"

    const-string v3, "setDiscoverableTimeout(0)"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 450
    const/16 v1, 0x17

    invoke-virtual {v0, v1, v4}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    .line 455
    :goto_1e
    return-void

    .line 452
    :cond_1f
    const-string v1, "ModuleCommunicationService"

    const-string v2, "bluetoothSetDiscoverable"

    const-string v3, "BtAdapter is null or not enabled."

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method private gpsResponse(Ljava/lang/String;)V
    .registers 7
    .parameter "result"

    .prologue
    .line 681
    const-string v1, "ModuleCommunicationService"

    const-string v2, "gpsResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.factory.intent.ACTION_GPS_SERVICE_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 683
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 685
    return-void
.end method

.method public static isEnabledBtDevice()Z
    .registers 2

    .prologue
    .line 574
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 575
    .local v0, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    return v1
.end method

.method private nfcDisable()V
    .registers 5

    .prologue
    .line 621
    const-string v0, "ModuleCommunicationService"

    const-string v1, "nfcDisable"

    const-string v2, "..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    sget v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNFCTurnningOnCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNFCTurnningOnCount:I

    .line 623
    sget v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNFCTurnningOnCount:I

    if-lez v0, :cond_30

    .line 624
    const-string v0, "ModuleCommunicationService"

    const-string v1, "nfcDisable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNFCTurnningOnCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/ModuleCommunicationService;->mNFCTurnningOnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :goto_2f
    return-void

    .line 627
    :cond_30
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    sput-object v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 628
    sget-object v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 629
    new-instance v0, Lcom/sec/factory/modules/ModuleCommunicationService$4;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleCommunicationService$4;-><init>(Lcom/sec/factory/modules/ModuleCommunicationService;)V

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunicationService$4;->start()V

    goto :goto_2f

    .line 640
    :cond_4f
    const-string v0, "ModuleCommunicationService"

    const-string v1, "nfcDisable"

    const-string v2, "NFC state is already off."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method private nfcEnable()V
    .registers 5

    .prologue
    .line 587
    const-string v0, "ModuleCommunicationService"

    const-string v1, "nfcEnable"

    const-string v2, "..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    sget v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNFCTurnningOnCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNFCTurnningOnCount:I

    .line 589
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    sput-object v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 590
    sget-object v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_46

    sget-object v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_46

    .line 591
    const-string v0, "ModuleCommunicationService"

    const-string v1, "nfcEnable"

    const-string v2, "NFC is not enabled."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.nfctest.NFC_ON_NO_DISCOVERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 597
    const-wide/16 v0, 0x64

    :try_start_3a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_56

    .line 600
    :goto_3d
    new-instance v0, Lcom/sec/factory/modules/ModuleCommunicationService$3;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleCommunicationService$3;-><init>(Lcom/sec/factory/modules/ModuleCommunicationService;)V

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunicationService$3;->start()V

    .line 618
    :goto_45
    return-void

    .line 613
    :cond_46
    sget v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNFCTurnningOnCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNFCTurnningOnCount:I

    .line 614
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_45

    .line 598
    :catch_56
    move-exception v0

    goto :goto_3d
.end method

.method private startBtReceiver()V
    .registers 3

    .prologue
    .line 556
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 557
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    const-string v1, "android.bluetooth.adapter.action.LE_TESE_END_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mBtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 562
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBtReceiverRegistered:Z

    .line 563
    return-void
.end method

.method private stopBtReceiver()V
    .registers 2

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBtReceiverRegistered:Z

    if-eqz v0, :cond_c

    .line 567
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mBtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBtReceiverRegistered:Z

    .line 571
    :cond_c
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    sput-object v0, Lcom/sec/factory/modules/ModuleCommunicationService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 194
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mLocationManager:Landroid/location/LocationManager;

    .line 195
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->stopBtReceiver()V

    .line 312
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 313
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 14
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 199
    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_39

    .line 201
    const-string v1, "ModuleCommunicationService"

    const-string v2, "onStartCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "ACTION_BLUETOOTH_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 204
    iput v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mDiscoverableTime:I

    .line 205
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->startBtReceiver()V

    .line 206
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothOn()V

    .line 306
    :cond_39
    :goto_39
    return v6

    .line 207
    :cond_3a
    const-string v1, "ACTION_BLUETOOTH_ON_WHERE_ATCMD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 208
    const/16 v1, 0x78

    iput v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mDiscoverableTime:I

    .line 209
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->startBtReceiver()V

    .line 210
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothOn()V

    goto :goto_39

    .line 211
    :cond_4d
    const-string v1, "ACTION_BLUETOOTH_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 212
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->startBtReceiver()V

    .line 213
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothOff()V

    goto :goto_39

    .line 214
    :cond_5c
    const-string v1, "ACTION_BLUETOOTH_DISCOVERY_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 215
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->startBtReceiver()V

    .line 216
    invoke-direct {p0, v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothDiscoveryStart(Z)V

    goto :goto_39

    .line 217
    :cond_6b
    const-string v1, "ACTION_BLUETOOTH_DISCOVERY_START_WITH_ACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 219
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->startBtReceiver()V

    .line 220
    invoke-direct {p0, v7}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothDiscoveryStart(Z)V

    goto :goto_39

    .line 223
    :cond_7a
    const-string v1, "ACTION_BLUETOOTH_BLE_DISCOVERY_START_WITH_ACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 225
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->startBtReceiver()V

    .line 226
    invoke-direct {p0, v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothBleDiscoveryStart(Z)V

    goto :goto_39

    .line 229
    :cond_89
    const-string v1, "ACTION_BLUETOOTH_BLE_DISCOVERY_START_WITH_ACK_ON_10S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 231
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->startBtReceiver()V

    .line 232
    invoke-direct {p0, v7}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothBleDiscoveryStartOn10s(Z)V

    goto :goto_39

    .line 235
    :cond_98
    const-string v1, "ACTION_BLUETOOTH_DISCOVERY_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 236
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->startBtReceiver()V

    .line 237
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothDiscoveryStop()V

    goto :goto_39

    .line 238
    :cond_a7
    const-string v1, "ACTION_BLUETOOTH_AUDIO_TEST_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 239
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->startBtReceiver()V

    .line 240
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothAudioTestStart()V

    goto :goto_39

    .line 241
    :cond_b6
    const-string v1, "ACTION_BLUETOOTH_AUDIO_TEST_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 242
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->startBtReceiver()V

    .line 243
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothAudioTestStop()V

    goto/16 :goto_39

    .line 244
    :cond_c6
    const-string v1, "ACTION_BLUETOOTH_SET_DISCOVERABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 245
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothSetDiscoverable()V

    goto/16 :goto_39

    .line 249
    :cond_d3
    const-string v1, "ACTION_BLUETOOTH_LE_OUTPUT_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 250
    invoke-direct {p0, v5, v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 251
    :cond_e0
    const-string v1, "ACTION_BLUETOOTH_LE_OUTPUT_MID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 252
    invoke-direct {p0, v5, v7}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 253
    :cond_ed
    const-string v1, "ACTION_BLUETOOTH_LE_OUTPUT_HIGH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 254
    invoke-direct {p0, v5, v6}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 255
    :cond_fa
    const-string v1, "ACTION_BLUETOOTH_LE_MOD_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 256
    invoke-direct {p0, v7, v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 257
    :cond_107
    const-string v1, "ACTION_BLUETOOTH_LE_MOD_MID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 258
    invoke-direct {p0, v7, v7}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 259
    :cond_114
    const-string v1, "ACTION_BLUETOOTH_LE_MOD_HIGH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 260
    invoke-direct {p0, v7, v6}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 261
    :cond_121
    const-string v1, "ACTION_BLUETOOTH_LE_MOD_LOW_AA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 262
    invoke-direct {p0, v6, v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 263
    :cond_12e
    const-string v1, "ACTION_BLUETOOTH_LE_MOD_MID_AA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 264
    invoke-direct {p0, v6, v7}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 265
    :cond_13b
    const-string v1, "ACTION_BLUETOOTH_LE_MOD_HIGH_AA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_148

    .line 266
    invoke-direct {p0, v6, v6}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 267
    :cond_148
    const-string v1, "ACTION_BLUETOOTH_LE_CARRIER_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 268
    invoke-direct {p0, v6, v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 269
    :cond_155
    const-string v1, "ACTION_BLUETOOTH_LE_CARRIER_MID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_162

    .line 270
    invoke-direct {p0, v6, v7}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 271
    :cond_162
    const-string v1, "ACTION_BLUETOOTH_LE_CARRIER_HIGH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 272
    invoke-direct {p0, v6, v6}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 273
    :cond_16f
    const-string v1, "ACTION_BLUETOOTH_LE_INBAND_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 274
    const/4 v1, 0x3

    invoke-direct {p0, v5, v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 275
    :cond_17d
    const-string v1, "ACTION_BLUETOOTH_LE_INBAND_MID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 276
    invoke-direct {p0, v5, v7}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 277
    :cond_18a
    const-string v1, "ACTION_BLUETOOTH_LE_INBAND_HIGH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_198

    .line 278
    const/4 v1, 0x4

    invoke-direct {p0, v5, v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeTxTest(II)V

    goto/16 :goto_39

    .line 279
    :cond_198
    const-string v1, "ACTION_BLUETOOTH_LE_RX_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a5

    .line 280
    invoke-direct {p0, v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeRxTest(I)V

    goto/16 :goto_39

    .line 281
    :cond_1a5
    const-string v1, "ACTION_BLUETOOTH_LE_RX_MID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 282
    invoke-direct {p0, v7}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeRxTest(I)V

    goto/16 :goto_39

    .line 283
    :cond_1b2
    const-string v1, "ACTION_BLUETOOTH_LE_RX_HIGH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bf

    .line 284
    invoke-direct {p0, v6}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeRxTest(I)V

    goto/16 :goto_39

    .line 285
    :cond_1bf
    const-string v1, "ACTION_BLUETOOTH_LE_TEST_END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cf

    .line 286
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->startBtReceiver()V

    .line 287
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothLeDirectTestEnd()V

    goto/16 :goto_39

    .line 290
    :cond_1cf
    const-string v1, "ACTION_NFC_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dc

    .line 291
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->nfcEnable()V

    goto/16 :goto_39

    .line 292
    :cond_1dc
    const-string v1, "ACTION_NFC_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e9

    .line 293
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommunicationService;->nfcDisable()V

    goto/16 :goto_39

    .line 296
    :cond_1e9
    const-string v1, "ACTION_GPS_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_203

    .line 297
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_39

    .line 299
    :cond_203
    const-string v1, "ACTION_GPS_START_DELAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 300
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_39
.end method
