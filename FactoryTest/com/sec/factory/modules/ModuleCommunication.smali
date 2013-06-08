.class public Lcom/sec/factory/modules/ModuleCommunication;
.super Lcom/sec/factory/modules/ModuleObject;
.source "ModuleCommunication.java"


# static fields
.field private static final FM_RADIO_TARGET:[Ljava/lang/String;

.field private static mInstance:Lcom/sec/factory/modules/ModuleCommunication;


# instance fields
.field private mBtReceiver:Landroid/content/BroadcastReceiver;

.field public mGpsEnabledByFactory:Z

.field private mGpsReceiver:Landroid/content/BroadcastReceiver;

.field private mIsRunningBtDevice:Z

.field private mWifiReceiver:Landroid/content/BroadcastReceiver;

.field private mWlanTest:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 631
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "earphone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "speaker"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/factory/modules/ModuleCommunication;->FM_RADIO_TARGET:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v0, "ModuleCommunication"

    invoke-direct {p0, p1, v0}, Lcom/sec/factory/modules/ModuleObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleCommunication;->mGpsEnabledByFactory:Z

    .line 69
    new-instance v0, Lcom/sec/factory/modules/ModuleCommunication$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleCommunication$1;-><init>(Lcom/sec/factory/modules/ModuleCommunication;)V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mGpsReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleCommunication;->mIsRunningBtDevice:Z

    .line 219
    new-instance v0, Lcom/sec/factory/modules/ModuleCommunication$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleCommunication$2;-><init>(Lcom/sec/factory/modules/ModuleCommunication;)V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mBtReceiver:Landroid/content/BroadcastReceiver;

    .line 477
    new-instance v0, Lcom/sec/factory/modules/ModuleCommunication$3;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleCommunication$3;-><init>(Lcom/sec/factory/modules/ModuleCommunication;)V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleCommunication"

    const-string v2, "Create ModuleCommunication"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mBtReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.factory.intent.ACTION_BT_SERVICE_RESPONSE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/modules/ModuleCommunication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 32
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.WIFI_DRIVER_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/modules/ModuleCommunication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 34
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mGpsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.factory.intent.ACTION_GPS_SERVICE_RESPONSE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/modules/ModuleCommunication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 36
    return-void
.end method

.method static synthetic access$002(Lcom/sec/factory/modules/ModuleCommunication;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/sec/factory/modules/ModuleCommunication;->mIsRunningBtDevice:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sec/factory/modules/ModuleCommunication;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/sec/factory/modules/ModuleCommunication;->mWlanTest:I

    return p1
.end method

.method private btAction(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 416
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommunication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->startService(Landroid/content/Intent;)V

    .line 419
    return-void
.end method

.method public static deleteGpsFiles()V
    .registers 4

    .prologue
    .line 192
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/sv_cno.info"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 193
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/gps_started"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 194
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/glonass_started"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 195
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/glonass_fcn"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 199
    .local v0, ex:Ljava/lang/Exception;
    :goto_28
    return-void

    .line 196
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_29
    move-exception v0

    .line 197
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "ModuleCommunication"

    const-string v2, "deleteGpsFiles"

    const-string v3, "Exception"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method private gpsAction(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommunication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->startService(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommunication;
    .registers 2
    .parameter "context"

    .prologue
    .line 39
    sget-object v0, Lcom/sec/factory/modules/ModuleCommunication;->mInstance:Lcom/sec/factory/modules/ModuleCommunication;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lcom/sec/factory/modules/ModuleCommunication;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleCommunication;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/factory/modules/ModuleCommunication;->mInstance:Lcom/sec/factory/modules/ModuleCommunication;

    .line 42
    :cond_b
    sget-object v0, Lcom/sec/factory/modules/ModuleCommunication;->mInstance:Lcom/sec/factory/modules/ModuleCommunication;

    return-object v0
.end method


# virtual methods
.method public bleSearchStartWithAck()V
    .registers 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "bleSearchStartWithAck"

    const-string v2, "Start Bluetooth BLE Search timeout=20sec"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "ACTION_BLUETOOTH_BLE_DISCOVERY_START_WITH_ACK"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public bleSearchStartWithAckOn10s()V
    .registers 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "bleSearchStartWithAck"

    const-string v2, "Start Bluetooth BLE Search timeout=10sec"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "ACTION_BLUETOOTH_BLE_DISCOVERY_START_WITH_ACK_ON_10S"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public btActivation()V
    .registers 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btActivation"

    const-string v2, "Bluetooth Activation"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mIsRunningBtDevice:Z

    .line 242
    const-string v0, "ACTION_BLUETOOTH_ON"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public btActivationWhereAtcmd()V
    .registers 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btActivationWhereAtcmd"

    const-string v2, "Bluetooth Activation where Atcmd"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mIsRunningBtDevice:Z

    .line 249
    const-string v0, "ACTION_BLUETOOTH_ON_WHERE_ATCMD"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public btAudioTestStart()V
    .registers 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btAudioTestStart"

    const-string v2, "Start Bluetooth Audio Test"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "ACTION_BLUETOOTH_AUDIO_TEST_START"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public btAudioTestStop()V
    .registers 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btAudioTestStop"

    const-string v2, "Stop Bluetooth Audio Test"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "ACTION_BLUETOOTH_AUDIO_TEST_STOP"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public btDeactivation()V
    .registers 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btDeactivation"

    const-string v2, "Bluetooth Deactivation"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mIsRunningBtDevice:Z

    .line 256
    const-string v0, "ACTION_BLUETOOTH_OFF"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public btLeRxHigh()V
    .registers 4

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeRxHigh"

    const-string v2, "btLeRxHigh()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "ACTION_BLUETOOTH_LE_RX_HIGH"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public btLeRxLow()V
    .registers 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeRxLow"

    const-string v2, "btLeRxLow()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v0, "ACTION_BLUETOOTH_LE_RX_LOW"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public btLeRxMid()V
    .registers 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeRxMid"

    const-string v2, "btLeRxMid()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "ACTION_BLUETOOTH_LE_RX_MID"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public btLeTestEnd()V
    .registers 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTestEnd"

    const-string v2, "btLeTestEnd()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "ACTION_BLUETOOTH_LE_TEST_END"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public btLeTxCarrierChHigh()V
    .registers 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxCarrierChHigh"

    const-string v2, "btLeTxCarrierChHigh()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "ACTION_BLUETOOTH_LE_CARRIER_HIGH"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public btLeTxCarrierChLow()V
    .registers 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxCarrierChLow"

    const-string v2, "btLeTxCarrierChLow()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "ACTION_BLUETOOTH_LE_CARRIER_LOW"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public btLeTxCarrierChMid()V
    .registers 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxCarrierChLow"

    const-string v2, "btLeTxCarrierChLow()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v0, "ACTION_BLUETOOTH_LE_CARRIER_MID"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public btLeTxInBandChHigh()V
    .registers 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxInBandChHigh"

    const-string v2, "btLeTxInBandChHigh()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "ACTION_BLUETOOTH_LE_INBAND_HIGH"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public btLeTxInBandChLow()V
    .registers 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxInBandChLow"

    const-string v2, "btLeTxInBandChLow()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "ACTION_BLUETOOTH_LE_INBAND_LOW"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public btLeTxInBandChMid()V
    .registers 4

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxInBandChMid"

    const-string v2, "btLeTxInBandChMid()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v0, "ACTION_BLUETOOTH_LE_INBAND_MID"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public btLeTxModChHigh()V
    .registers 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxModChMid"

    const-string v2, "btLeTxModChMid()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v0, "ACTION_BLUETOOTH_LE_MOD_HIGH"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public btLeTxModChHighAA()V
    .registers 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxModChLowAA"

    const-string v2, "btLeTxModChLowAA()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v0, "ACTION_BLUETOOTH_LE_MOD_HIGH_AA"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public btLeTxModChLow()V
    .registers 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxModChLow"

    const-string v2, "btLeTxModChLow()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "ACTION_BLUETOOTH_LE_MOD_LOW"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public btLeTxModChLowAA()V
    .registers 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxModChLowAA"

    const-string v2, "btLeTxModChLowAA()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "ACTION_BLUETOOTH_LE_MOD_LOW_AA"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public btLeTxModChMid()V
    .registers 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxModChMid"

    const-string v2, "btLeTxModChMid()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v0, "ACTION_BLUETOOTH_LE_MOD_MID"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public btLeTxModChMidAA()V
    .registers 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxModChLowAA"

    const-string v2, "btLeTxModChLowAA()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "ACTION_BLUETOOTH_LE_MOD_MID_AA"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public btLeTxOutputChHigh()V
    .registers 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxOutputChHigh"

    const-string v2, "btLeTxOutputChHigh()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "ACTION_BLUETOOTH_LE_OUTPUT_HIGH"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public btLeTxOutputChLow()V
    .registers 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxOutputChLow"

    const-string v2, "btLeTxOutputChLow()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v0, "ACTION_BLUETOOTH_LE_OUTPUT_LOW"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public btLeTxOutputChMid()V
    .registers 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btLeTxOutputChMid"

    const-string v2, "btLeTxOutputChMid()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "ACTION_BLUETOOTH_LE_OUTPUT_MID"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public btRfTestStart()V
    .registers 5

    .prologue
    .line 299
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "btAudioTestStart"

    const-string v3, "Start Bluetooth RF Test"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.bluetoothtest"

    const-string v2, "com.sec.android.app.bluetoothtest.BluetoothRfTest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method public btRfTestStop()V
    .registers 5

    .prologue
    .line 309
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "btAudioTestStart"

    const-string v3, "Stop Bluetooth RF Test"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.BluetoothRfTestOff"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->sendBroadcast(Landroid/content/Intent;)V

    .line 313
    return-void
.end method

.method public btSearchStart()V
    .registers 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btSearchStart"

    const-string v2, "Start Bluetooth Search"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "ACTION_BLUETOOTH_DISCOVERY_START"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public btSearchStartWithAck()V
    .registers 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btSearchStartWithAck"

    const-string v2, "Start Bluetooth Search timeout=10sec"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "ACTION_BLUETOOTH_DISCOVERY_START_WITH_ACK"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public btSearchStop()V
    .registers 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btSearchStop"

    const-string v2, "Stop Bluetooth Search"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "ACTION_BLUETOOTH_DISCOVERY_STOP"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public btSetDiscoverable()V
    .registers 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "btSetDiscoverable"

    const-string v2, "btSetDiscoverable()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "ACTION_BLUETOOTH_SET_DISCOVERABLE"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->btAction(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mBtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mGpsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/modules/ModuleCommunication;->mInstance:Lcom/sec/factory/modules/ModuleCommunication;

    .line 51
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 52
    return-void
.end method

.method public fmRadioOff()V
    .registers 3

    .prologue
    .line 647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "test.mode.radio.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 649
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->startActivity(Landroid/content/Intent;)V

    .line 650
    return-void
.end method

.method public fmRadioOn(Ljava/lang/String;I)V
    .registers 8
    .parameter "frequency"
    .parameter "target"

    .prologue
    .line 636
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "fmRadioOn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    new-instance v0, Landroid/content/Intent;

    const-string v1, "test.mode.radio.on.freq"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "frequency"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string v1, "output"

    sget-object v2, Lcom/sec/factory/modules/ModuleCommunication;->FM_RADIO_TARGET:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->startActivity(Landroid/content/Intent;)V

    .line 643
    return-void
.end method

.method public fmRadioReadFrequencyIntensity(Ljava/lang/String;)V
    .registers 4
    .parameter "frequency"

    .prologue
    .line 653
    new-instance v0, Landroid/content/Intent;

    const-string v1, "test.mode.radio.freq"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "frequency"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 656
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->startActivity(Landroid/content/Intent;)V

    .line 657
    return-void
.end method

.method public gpsActivation(Landroid/content/Context;I)V
    .registers 11
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v7, 0x1

    .line 105
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "[GPS debug #1]gpsActivation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GPS Activation - mode(GPS : 1, GLONASS : 0) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/sv_cno.info"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 109
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/gps_started"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 110
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/glonass_started"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, filePath:Ljava/io/File;
    if-ne p2, v7, :cond_6e

    .line 114
    new-instance v1, Ljava/io/File;

    .end local v1           #filePath:Ljava/io/File;
    const-string v3, "/data/gps_started"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v1       #filePath:Ljava/io/File;
    :cond_43
    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1ff

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_51} :catch_78

    .line 126
    :goto_51
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommunication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 129
    .local v2, gpsEnabled:Z
    if-nez v2, :cond_7d

    .line 131
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommunication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 133
    iput-boolean v7, p0, Lcom/sec/factory/modules/ModuleCommunication;->mGpsEnabledByFactory:Z

    .line 134
    const-string v3, "ACTION_GPS_START_DELAY"

    invoke-direct {p0, v3}, Lcom/sec/factory/modules/ModuleCommunication;->gpsAction(Ljava/lang/String;)V

    .line 139
    :goto_6d
    return-void

    .line 115
    .end local v2           #gpsEnabled:Z
    :cond_6e
    if-nez p2, :cond_43

    .line 116
    new-instance v1, Ljava/io/File;

    .end local v1           #filePath:Ljava/io/File;
    const-string v3, "/data/glonass_started"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1       #filePath:Ljava/io/File;
    goto :goto_43

    .line 122
    :catch_78
    move-exception v0

    .line 123
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #gpsEnabled:Z
    :cond_7d
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/factory/modules/ModuleCommunication;->mGpsEnabledByFactory:Z

    .line 137
    const-string v3, "ACTION_GPS_START"

    invoke-direct {p0, v3}, Lcom/sec/factory/modules/ModuleCommunication;->gpsAction(Ljava/lang/String;)V

    goto :goto_6d
.end method

.method public gpsDeactivation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "gpsDeactivation"

    const-string v2, "GPS Deactivation"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/sec/factory/modules/ModuleCommunication;->deleteGpsFiles()V

    .line 97
    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommunication;->mGpsEnabledByFactory:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 98
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommunication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 100
    iput-boolean v3, p0, Lcom/sec/factory/modules/ModuleCommunication;->mGpsEnabledByFactory:Z

    .line 102
    :cond_1d
    return-void
.end method

.method public gpsReadCN()Ljava/lang/String;
    .registers 6

    .prologue
    .line 142
    const-string v1, "/data/sv_cno.info"

    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModuleCommunication;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, cno:Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 145
    :cond_10
    const-string v0, "NG"

    .line 146
    :cond_12
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "gpsReadCN_SingleChannle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CNO="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-object v0
.end method

.method public isEnabledBtDevice()Z
    .registers 2

    .prologue
    .line 426
    invoke-static {}, Lcom/sec/factory/modules/ModuleCommunicationService;->isEnabledBtDevice()Z

    move-result v0

    return v0
.end method

.method public nfcOff()V
    .registers 4

    .prologue
    .line 460
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommunication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    const-string v1, "action"

    const-string v2, "ACTION_NFC_OFF"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->startService(Landroid/content/Intent;)V

    .line 463
    return-void
.end method

.method public nfcOn()V
    .registers 4

    .prologue
    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommunication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    const-string v1, "action"

    const-string v2, "ACTION_NFC_ON"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->startService(Landroid/content/Intent;)V

    .line 457
    return-void
.end method

.method public readBtId()V
    .registers 3

    .prologue
    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.bluetoothtest.BT_ID_READ"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->sendBroadcast(Landroid/content/Intent;)V

    .line 432
    return-void
.end method

.method protected readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "filepath"

    .prologue
    .line 164
    const-string v4, ""

    .line 165
    .local v4, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 167
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1fa0

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_66
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_30
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_4b

    .line 168
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    if-eqz v1, :cond_19

    .line 169
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_78
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_18} :catch_7e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_7b

    move-result-object v4

    .line 176
    :cond_19
    if-eqz v1, :cond_81

    .line 178
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_24

    move-object v0, v1

    .line 184
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_1f
    :goto_1f
    if-nez v4, :cond_23

    .line 185
    const-string v4, ""

    .line 187
    .end local v4           #result:Ljava/lang/String;
    :cond_23
    return-object v4

    .line 179
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v4       #result:Ljava/lang/String;
    :catch_24
    move-exception v2

    .line 180
    .local v2, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "readOneLine"

    const-string v7, "IOException"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 181
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f

    .line 171
    .end local v2           #e:Ljava/io/IOException;
    :catch_30
    move-exception v3

    .line 172
    .local v3, ex:Ljava/io/FileNotFoundException;
    :goto_31
    :try_start_31
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "readOneLine"

    const-string v7, "FileNotFoundException"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_66

    .line 176
    if-eqz v0, :cond_1f

    .line 178
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_1f

    .line 179
    :catch_40
    move-exception v2

    .line 180
    .restart local v2       #e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "readOneLine"

    const-string v7, "IOException"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 173
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_4b
    move-exception v2

    .line 174
    .restart local v2       #e:Ljava/io/IOException;
    :goto_4c
    :try_start_4c
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "readOneLine"

    const-string v7, "IOException"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_66

    .line 176
    if-eqz v0, :cond_1f

    .line 178
    :try_start_57
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_1f

    .line 179
    :catch_5b
    move-exception v2

    .line 180
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "readOneLine"

    const-string v7, "IOException"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 176
    .end local v2           #e:Ljava/io/IOException;
    :catchall_66
    move-exception v5

    :goto_67
    if-eqz v0, :cond_6c

    .line 178
    :try_start_69
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 181
    :cond_6c
    :goto_6c
    throw v5

    .line 179
    :catch_6d
    move-exception v2

    .line 180
    .restart local v2       #e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "readOneLine"

    const-string v8, "IOException"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 176
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_78
    move-exception v5

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_67

    .line 173
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_7b
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_4c

    .line 171
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_7e
    move-exception v3

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_31

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_81
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f
.end method

.method public readWifiId()V
    .registers 3

    .prologue
    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.wlantest.WIFI_ID_READ"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->sendBroadcast(Landroid/content/Intent;)V

    .line 605
    return-void
.end method

.method protected sendResponse(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.GPS_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method protected sendStartOK()V
    .registers 3

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.GPS_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommunication;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method public writeBtId(Ljava/lang/String;)V
    .registers 9
    .parameter "id"

    .prologue
    .line 435
    const-string v0, ""

    .line 436
    .local v0, colonadded:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_47

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_29

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_26
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 440
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 443
    :cond_47
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleCommunication;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "writeBtId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colonadded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.bluetoothtest.BT_ID_WRITE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "MAC_DATA"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v2}, Lcom/sec/factory/modules/ModuleCommunication;->sendBroadcast(Landroid/content/Intent;)V

    .line 447
    return-void
.end method

.method public writeWifiId(Ljava/lang/String;)V
    .registers 7
    .parameter "id"

    .prologue
    .line 608
    const-string v0, ""

    .line 609
    .local v0, colonadded:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_47

    .line 610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_29

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    :goto_26
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 613
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 615
    :cond_47
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.wlantest.WIFI_ID_WRITE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "MAC_DATA"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    invoke-virtual {p0, v2}, Lcom/sec/factory/modules/ModuleCommunication;->sendBroadcast(Landroid/content/Intent;)V

    .line 618
    return-void
.end method
