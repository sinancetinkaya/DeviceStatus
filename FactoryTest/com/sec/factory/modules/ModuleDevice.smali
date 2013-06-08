.class public Lcom/sec/factory/modules/ModuleDevice;
.super Lcom/sec/factory/modules/ModuleObject;
.source "ModuleDevice.java"


# static fields
.field private static final OTG_MUIC_OFF:[B

.field private static final OTG_MUIC_ON:[B

.field private static final OTG_TEST_OFF:[B

.field private static final OTG_TEST_ON:[B

.field private static final STORAGE_PATH:[Ljava/lang/String;

.field public static final TSP_NODE_X:I

.field public static final TSP_NODE_Y:I

.field private static mInstance:Lcom/sec/factory/modules/ModuleDevice;


# instance fields
.field private MAGNITUDE_MAX:I

.field private final USB_MODE:[Ljava/lang/String;

.field private isMSM8260A:Z

.field private isMSM8960:Z

.field private isPegaPrime:Z

.field private isPegasus:Z

.field private isPegasusPrime:Z

.field private mIsMountedExternalStorage:Z

.field private mIsMountedUsbStorage:Z

.field private mIsMountedUsbStorageB:Z

.field private mIsVibrating:Z

.field private mMediaStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/modules/ModuleDevice;->mInstance:Lcom/sec/factory/modules/ModuleDevice;

    .line 172
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/mnt/sdcard"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/mnt/extSdCard"

    aput-object v2, v0, v1

    const-string v1, "/system"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/factory/modules/ModuleDevice;->STORAGE_PATH:[Ljava/lang/String;

    .line 705
    new-array v0, v4, [B

    fill-array-data v0, :array_46

    sput-object v0, Lcom/sec/factory/modules/ModuleDevice;->OTG_TEST_ON:[B

    .line 708
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/sec/factory/modules/ModuleDevice;->OTG_TEST_OFF:[B

    .line 711
    new-array v0, v3, [B

    fill-array-data v0, :array_52

    sput-object v0, Lcom/sec/factory/modules/ModuleDevice;->OTG_MUIC_ON:[B

    .line 714
    new-array v0, v3, [B

    fill-array-data v0, :array_58

    sput-object v0, Lcom/sec/factory/modules/ModuleDevice;->OTG_MUIC_OFF:[B

    .line 927
    const-string v0, "TSP_X_AXIS_CHANNEL"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_X:I

    .line 928
    const-string v0, "TSP_Y_AXIS_CHANNEL"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_Y:I

    return-void

    .line 705
    nop

    :array_46
    .array-data 0x1
        0x4ft
        0x4et
        0x0t
    .end array-data

    .line 708
    :array_4c
    .array-data 0x1
        0x4ft
        0x46t
        0x46t
        0x0t
    .end array-data

    .line 711
    :array_52
    .array-data 0x1
        0x30t
        0x0t
    .end array-data

    .line 714
    nop

    :array_58
    .array-data 0x1
        0x31t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 51
    const-string v1, "ModuleDevice"

    invoke-direct {p0, p1, v1}, Lcom/sec/factory/modules/ModuleObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    const-string v1, "MSM8960"

    const-string v2, "CHIPSET_NAME"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleDevice;->isMSM8960:Z

    .line 42
    const-string v1, "MSM8260A"

    const-string v2, "CHIPSET_NAME"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleDevice;->isMSM8260A:Z

    .line 43
    const-string v1, "PegasusPrime"

    const-string v2, "CHIPSET_NAME"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleDevice;->isPegasusPrime:Z

    .line 44
    const-string v1, "PegaPrime"

    const-string v2, "CHIPSET_NAME"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleDevice;->isPegaPrime:Z

    .line 45
    const-string v1, "Pegasus"

    const-string v2, "CHIPSET_NAME"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleDevice;->isPegasus:Z

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 136
    iput-boolean v3, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsVibrating:Z

    .line 137
    const/16 v1, 0x2710

    iput v1, p0, Lcom/sec/factory/modules/ModuleDevice;->MAGNITUDE_MAX:I

    .line 290
    iput-boolean v3, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsMountedExternalStorage:Z

    .line 291
    iput-boolean v3, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorage:Z

    .line 292
    iput-boolean v3, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorageB:Z

    .line 294
    new-instance v1, Lcom/sec/factory/modules/ModuleDevice$1;

    invoke-direct {v1, p0}, Lcom/sec/factory/modules/ModuleDevice$1;-><init>(Lcom/sec/factory/modules/ModuleDevice;)V

    iput-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->mMediaStateReceiver:Landroid/content/BroadcastReceiver;

    .line 684
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SUSB"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "MTP"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "MSTR"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "AOC"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->USB_MODE:[Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "ModuleDevice"

    const-string v3, "Create ModuleDevice"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModuleDevice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->mVibrator:Landroid/os/SystemVibrator;

    .line 54
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModuleDevice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->mMediaStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/factory/modules/ModuleDevice;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 61
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "ModuleDevice"

    const-string v3, "registerReceiver OK"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleDevice;->updateStorageMountState()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/modules/ModuleDevice;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsMountedExternalStorage:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/factory/modules/ModuleDevice;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorage:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/factory/modules/ModuleDevice;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorageB:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/factory/modules/ModuleDevice;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleDevice;->updateStorageMountState()V

    return-void
.end method

.method static synthetic access$400()[B
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/sec/factory/modules/ModuleDevice;->OTG_TEST_OFF:[B

    return-object v0
.end method

.method static synthetic access$500()[B
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/sec/factory/modules/ModuleDevice;->OTG_MUIC_OFF:[B

    return-object v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .registers 5

    .prologue
    .line 418
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_13

    .line 419
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 420
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_17

    .line 421
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->mMountService:Landroid/os/storage/IMountService;

    .line 426
    .end local v0           #service:Landroid/os/IBinder;
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->mMountService:Landroid/os/storage/IMountService;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_21

    monitor-exit p0

    return-object v1

    .line 423
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getMountService"

    const-string v3, "Can\'t get mount service"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_21

    goto :goto_13

    .line 418
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;
    .registers 2
    .parameter "context"

    .prologue
    .line 66
    sget-object v0, Lcom/sec/factory/modules/ModuleDevice;->mInstance:Lcom/sec/factory/modules/ModuleDevice;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lcom/sec/factory/modules/ModuleDevice;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleDevice;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/factory/modules/ModuleDevice;->mInstance:Lcom/sec/factory/modules/ModuleDevice;

    .line 69
    :cond_b
    sget-object v0, Lcom/sec/factory/modules/ModuleDevice;->mInstance:Lcom/sec/factory/modules/ModuleDevice;

    return-object v0
.end method

.method private isEpenChecksumPass()Z
    .registers 8

    .prologue
    .line 663
    const/4 v1, 0x0

    .line 664
    .local v1, isfwDownloaded:Z
    const-string v3, "EPEN_CHECKSUM_CHECK"

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 667
    const-wide/16 v3, 0x2bc

    :try_start_a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_37

    .line 673
    :goto_d
    const-string v3, "EPEN_CHECKSUM_RESULT"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "isEpenChecksumPass"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v3, "PASS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v1, 0x1

    .line 676
    :goto_36
    return v1

    .line 668
    .end local v2           #result:Ljava/lang/String;
    :catch_37
    move-exception v0

    .line 670
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_d

    .line 675
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v2       #result:Ljava/lang/String;
    :cond_3c
    const/4 v1, 0x0

    goto :goto_36
.end method

.method private startTSPTest([BI)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 814
    const-string v0, ""

    .line 815
    const-string v0, ""

    .line 817
    const-string v0, "TSP_COMMAND_CMD"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 818
    const-string v0, "TSP_COMMAND_STATUS"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    const-string v1, "TSP_COMMAND_RESULT"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 820
    if-nez v0, :cond_26

    .line 821
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTSPTest"

    const-string v2, "Fail - Status Read => status == null"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v0, "NG"

    .line 848
    :goto_25
    return-object v0

    .line 823
    :cond_26
    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 824
    if-nez v1, :cond_3c

    .line 825
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTSPTest"

    const-string v2, "Fail - Result Read =>1 result == null"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v0, "NG"

    goto :goto_25

    .line 829
    :cond_3c
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "startTSPTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 832
    :cond_61
    const-string v2, "NOT_APPLICABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 833
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "startTSPTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "N/A- Status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "startTSPTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "N/A - result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    if-nez v1, :cond_ac

    .line 836
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTSPTest"

    const-string v2, "Fail - Result Read =>2 result == null"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v0, "NG"

    goto/16 :goto_25

    .line 840
    :cond_ac
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    .line 842
    :cond_b8
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "startTSPTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail - Status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "startTSPTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail - result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v0, "NG"

    goto/16 :goto_25

    .line 847
    :cond_f0
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTSPTest"

    const-string v2, "Fail - Command Write"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v0, "NG"

    goto/16 :goto_25
.end method

.method private updateStorageMountState()V
    .registers 2

    .prologue
    .line 430
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsMountedExternalStorage:Z

    .line 431
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorage:Z

    .line 432
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsMountedUsbStorageB:Z

    .line 433
    return-void
.end method


# virtual methods
.method public controlIRLED(Ljava/lang/String;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1143
    .line 1144
    const-string v0, "IS_IRLED_TEST_SPLIT_COMMAND"

    invoke-static {v0}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1146
    const-string v2, "IR_LED_SEND_TEST"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Kernel;->isExistFileID(Ljava/lang/String;)Z

    move-result v2

    .line 1147
    const-string v3, "IR_LED_SEND"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Kernel;->isExistFileID(Ljava/lang/String;)Z

    move-result v3

    .line 1148
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "controlIRLED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isExistONOFF : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , isExistCTRL : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , isSplitCmd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "controlIRLED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "control : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    if-eqz v2, :cond_64

    .line 1153
    const-string v4, "IR_LED_SEND_TEST"

    const-string v5, "38400,10"

    invoke-static {v4, v5}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1156
    :cond_64
    const/4 v4, 0x1

    if-ne v3, v4, :cond_cf

    .line 1157
    if-eqz v0, :cond_c4

    .line 1158
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v0, "IR_LED_SEND"

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1160
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 1162
    :goto_77
    :try_start_77
    array-length v5, v4

    if-ge v0, v5, :cond_86

    .line 1163
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 1162
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 1165
    :cond_86
    const-string v0, "0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8f
    .catchall {:try_start_77 .. :try_end_8f} :catchall_bf
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_8f} :catch_b7

    .line 1169
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :goto_92
    move v0, v1

    .line 1178
    :goto_93
    if-eqz v2, :cond_9c

    .line 1179
    const-string v1, "IR_LED_SEND_TEST"

    const-string v2, "38400,5"

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1182
    :cond_9c
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "controlIRLED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    return v0

    .line 1166
    :catch_b7
    move-exception v0

    .line 1167
    :try_start_b8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_bf

    .line 1169
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_92

    :catchall_bf
    move-exception v0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 1173
    :cond_c4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1174
    const-string v1, "IR_LED_SEND"

    invoke-static {v1, v0}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;[B)Z

    move-result v0

    goto :goto_93

    :cond_cf
    move v0, v1

    goto :goto_93
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleDevice"

    const-string v2, "finalize ModuleDevice"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mMediaStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleDevice;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 77
    return-void
.end method

.method public firmwareDownload(I)Z
    .registers 7
    .parameter "module"

    .prologue
    .line 536
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "firmwareDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "module="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, sysfsid:Ljava/lang/String;
    packed-switch p1, :pswitch_data_2c

    .line 548
    :goto_1e
    :pswitch_1e
    const-string v1, "S"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 542
    :pswitch_25
    const-string v0, "TSP_FIRMWARE_UPDATE"

    .line 543
    goto :goto_1e

    .line 545
    :pswitch_28
    const-string v0, "TSK_FIRMWARE_UPDATE"

    goto :goto_1e

    .line 538
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method public getAvailableSize(II)J
    .registers 8
    .parameter "storage"
    .parameter "unit"

    .prologue
    .line 194
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/sec/factory/modules/ModuleDevice;->STORAGE_PATH:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    int-to-long v3, p2

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public getInnerMemorySize()J
    .registers 6

    .prologue
    .line 208
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public getSize(II)J
    .registers 8
    .parameter "storage"
    .parameter "unit"

    .prologue
    .line 189
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lcom/sec/factory/modules/ModuleDevice;->STORAGE_PATH:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    int-to-long v3, p2

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public getSpeakerCount()I
    .registers 2

    .prologue
    .line 1133
    const-string v0, "SPEAKER_COUNT"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStoragePath(I)Ljava/lang/String;
    .registers 8
    .parameter "type"

    .prologue
    .line 387
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 388
    .local v1, storageVolumes:[Landroid/os/storage/StorageVolume;
    invoke-virtual {p0, p1}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    .line 389
    aget-object v2, v1, p1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getStorageParh"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storage path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .end local v0           #path:Ljava/lang/String;
    :goto_2d
    return-object v0

    .line 393
    :cond_2e
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getStorageParh"

    const-string v4, "Storage path : null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public getUSBMode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 691
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->USB_MODE:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleDevice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_setting_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public int_extMEMOSize(I)Ljava/lang/String;
    .registers 16
    .parameter "type"

    .prologue
    .line 235
    const/4 v3, 0x0

    .line 236
    .local v3, resData:Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/factory/modules/ModuleDevice;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 237
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    aget-object v10, v5, p1

    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, path:Ljava/lang/String;
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 240
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v12, v12

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x400

    div-long v6, v10, v12

    .line 241
    .local v6, totalMass:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v12, v12

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x400

    div-long v0, v10, v12

    .line 242
    .local v0, freeMass:J
    sub-long v8, v6, v0

    .line 243
    .local v8, usedMass:J
    iget-object v10, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "externalMEMOSize"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[Main]TotalMass : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Bytes, FreeMass : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Bytes, UsedMass : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    iget-object v10, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "externalMEMOSize"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resData="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v3
.end method

.method public int_extMEMOSize(IZ)Ljava/lang/String;
    .registers 17
    .parameter "type"
    .parameter "isByte"

    .prologue
    .line 252
    const/4 v3, 0x0

    .line 253
    .local v3, resData:Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/factory/modules/ModuleDevice;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 254
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    aget-object v10, v5, p1

    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, path:Ljava/lang/String;
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 257
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v12, v12

    mul-long v6, v10, v12

    .line 258
    .local v6, totalMass:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v12, v12

    mul-long v0, v10, v12

    .line 259
    .local v0, freeMass:J
    sub-long v8, v6, v0

    .line 260
    .local v8, usedMass:J
    iget-object v10, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "externalMEMOSize"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[Main]TotalMass : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Bytes, FreeMass : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Bytes, UsedMass : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    iget-object v10, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "externalMEMOSize"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resData="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-object v3
.end method

.method public isCompleteFileSystemBuildingNAND()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 505
    const-string v0, ""

    .line 506
    .local v0, checksum:Ljava/lang/String;
    const/4 v4, 0x0

    .line 507
    .local v4, result:Z
    const-string v6, "EMMC_CHECKSUM"

    invoke-static {v6}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    if-nez v0, :cond_e

    move v5, v4

    .line 522
    .end local v4           #result:Z
    .local v5, result:I
    :goto_d
    return v5

    .line 512
    .end local v5           #result:I
    .restart local v4       #result:Z
    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 513
    .local v1, checksumInt:I
    const/4 v3, 0x0

    .line 514
    .local v3, pass:I
    div-int/lit8 v2, v1, 0x2

    .line 515
    .local v2, done:I
    rem-int/lit8 v3, v1, 0x2

    .line 516
    iget-object v6, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "isCompleteFileSystemBuildingNAND"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "done="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pass="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    if-ne v2, v10, :cond_46

    if-ne v3, v10, :cond_46

    .line 519
    const/4 v4, 0x1

    :goto_44
    move v5, v4

    .line 522
    .restart local v5       #result:I
    goto :goto_d

    .line 521
    .end local v5           #result:I
    :cond_46
    const/4 v4, 0x0

    goto :goto_44
.end method

.method public isDetectExternalMemory()Z
    .registers 3

    .prologue
    .line 269
    const-string v1, "EXTERNAL_MEMORY_INSERTED"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 271
    const-string v1, "INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 273
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isEarSwitchPress()Z
    .registers 9

    .prologue
    .line 109
    const/16 v1, 0x64

    .line 110
    .local v1, interval:I
    const/4 v3, 0x5

    .line 111
    .local v3, retryCounter:I
    const-string v4, ""

    .line 112
    .local v4, state:Ljava/lang/String;
    const/4 v2, 0x0

    .line 114
    .local v2, result:Z
    :goto_6
    if-lez v3, :cond_22

    .line 115
    add-int/lit8 v3, v3, -0x1

    .line 116
    const-string v5, "EARJACK_SWITCH_STATE"

    invoke-static {v5}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 118
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "isEarSwitchPress"

    const-string v7, "EARJACK_SWITCH_STATE is pressed"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x1

    .line 129
    :cond_22
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "isEarSwitchPress"

    const-string v7, "EARJACK_SWITCH_STATE is released"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return v2

    .line 123
    :cond_2c
    const-wide/16 v5, 0x64

    :try_start_2e
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_6

    .line 124
    :catch_32
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6
.end method

.method public isInnerMemoryExist()Z
    .registers 3

    .prologue
    .line 203
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public isKeyPress()Z
    .registers 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 83
    const/16 v7, 0x9

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "press"

    aput-object v7, v0, v6

    const-string v7, "pressed"

    aput-object v7, v0, v5

    const/4 v7, 0x2

    const-string v8, "PRESS"

    aput-object v8, v0, v7

    const/4 v7, 0x3

    const-string v8, "PRESSED"

    aput-object v8, v0, v7

    const/4 v7, 0x4

    const-string v8, "1"

    aput-object v8, v0, v7

    const/4 v7, 0x5

    const-string v8, "2"

    aput-object v8, v0, v7

    const/4 v7, 0x6

    const-string v8, "4"

    aput-object v8, v0, v7

    const/4 v7, 0x7

    const-string v8, "7"

    aput-object v8, v0, v7

    const/16 v7, 0x8

    const-string v8, "8"

    aput-object v8, v0, v7

    .line 88
    .local v0, PRESSED_STRING:[Ljava/lang/String;
    const-string v7, "KEY_PRESSED"

    invoke-static {v7}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, state:Ljava/lang/String;
    const-string v7, "KEY_PRESSED_POWER"

    invoke-static {v7}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, state_power:Ljava/lang/String;
    const-string v7, "EARJACK_SWITCH_STATE"

    invoke-static {v7}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, state_ear:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "isKeyPress"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state_power:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state_ear:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x0

    .local v1, i:I
    :goto_73
    array-length v7, v0

    if-ge v1, v7, :cond_c6

    .line 96
    if-eqz v2, :cond_80

    aget-object v7, v0, v1

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_94

    :cond_80
    if-eqz v4, :cond_8a

    aget-object v7, v0, v1

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_94

    :cond_8a
    if-eqz v3, :cond_c3

    aget-object v7, v0, v1

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 99
    :cond_94
    iget-object v6, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "isKeyPress"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", state_power:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", state_ear:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_c2
    return v5

    .line 95
    :cond_c3
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    :cond_c6
    move v5, v6

    .line 105
    goto :goto_c2
.end method

.method public isMountedStorage(I)Z
    .registers 10
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 368
    .local v2, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v4, v2

    if-ge p1, v4, :cond_e

    aget-object v4, v2, p1

    if-nez v4, :cond_18

    .line 369
    :cond_e
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "isMountedStorage"

    const-string v6, "StorageVolumes[type] is null"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_17
    return v3

    .line 372
    :cond_18
    aget-object v4, v2, p1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "isMountedStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    if-eqz v0, :cond_6a

    .line 375
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDevice;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, state:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "isMountedStorage"

    const-string v5, "Environment.MEDIA_MOUNTED : mounted"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "isMountedStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_17

    .line 381
    .end local v1           #state:Ljava/lang/String;
    :cond_6a
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "isMountedStorage"

    const-string v6, "another error"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public isSimCardExist()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 439
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/sec/factory/modules/ModuleDevice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 440
    .local v2, tm:Landroid/telephony/TelephonyManager;
    const-string v6, "SUPPORT_2ND_RIL"

    invoke-static {v6}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    const-string v6, "SUPPORT_DUAL_STANBY"

    invoke-static {v6}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 442
    const/4 v0, 0x1

    .line 443
    .local v0, bRes:Z
    const-string v5, "phone2"

    invoke-virtual {p0, v5}, Lcom/sec/factory/modules/ModuleDevice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 445
    .local v3, tm2:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v4, :cond_3c

    :cond_2f
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v4, :cond_3c

    .line 449
    :cond_3b
    const/4 v0, 0x0

    .line 452
    :cond_3c
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "isSimCardExist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2ND RIL, Res = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .end local v0           #bRes:Z
    .end local v3           #tm2:Landroid/telephony/TelephonyManager;
    :cond_56
    :goto_56
    return v0

    .line 455
    :cond_57
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, multiSimState:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-eqz v6, :cond_69

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-ne v6, v4, :cond_7c

    :cond_69
    move v0, v5

    .line 459
    .restart local v0       #bRes:Z
    :goto_6a
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 460
    if-eqz v0, :cond_7e

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    :goto_7a
    move v0, v4

    goto :goto_56

    .end local v0           #bRes:Z
    :cond_7c
    move v0, v4

    .line 456
    goto :goto_6a

    .restart local v0       #bRes:Z
    :cond_7e
    move v4, v5

    .line 460
    goto :goto_7a
.end method

.method public isSimCardExist2()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 467
    const-string v5, "SUPPORT_DUAL_STANBY"

    invoke-static {v5}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 468
    const-string v5, "phone2"

    invoke-virtual {p0, v5}, Lcom/sec/factory/modules/ModuleDevice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 470
    .local v2, tm2:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v3, :cond_1f

    :cond_1e
    move v3, v4

    .line 481
    .end local v2           #tm2:Landroid/telephony/TelephonyManager;
    :cond_1f
    :goto_1f
    return v3

    .line 473
    :cond_20
    const-string v5, "ril.MSIMM"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, multiSimState:Ljava/lang/String;
    const-string v5, "DSDS"

    invoke-static {v5}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    .line 477
    .local v0, dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 478
    invoke-virtual {v0, v4}, Landroid/plugin/dsds/PlugInDsdsService;->getSimState(I)I

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v0, v4}, Landroid/plugin/dsds/PlugInDsdsService;->getSimState(I)I

    move-result v5

    if-ne v5, v3, :cond_1f

    :cond_42
    move v3, v4

    goto :goto_1f

    .line 481
    :cond_44
    invoke-virtual {v0, v3}, Landroid/plugin/dsds/PlugInDsdsService;->getSimState(I)I

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {v0, v3}, Landroid/plugin/dsds/PlugInDsdsService;->getSimState(I)I

    move-result v5

    if-ne v5, v3, :cond_1f

    :cond_50
    move v3, v4

    goto :goto_1f
.end method

.method public isVibrating()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsVibrating:Z

    return v0
.end method

.method public mainMEMOSize()Ljava/lang/String;
    .registers 15

    .prologue
    const-wide/16 v12, 0x400

    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, resData:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 223
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    div-long v4, v8, v12

    .line 224
    .local v4, totalMass:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    div-long v0, v8, v12

    .line 225
    .local v0, freeMass:J
    sub-long v6, v4, v0

    .line 226
    .local v6, usedMass:J
    iget-object v8, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "mainMEMOSize"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Main]TotalMass : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "KB, FreeMass : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "KB, UsedMass : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    iget-object v8, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v9, "mainMEMOSize"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resData="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-object v2
.end method

.method public readModuleBinVersion(I)Ljava/lang/String;
    .registers 10
    .parameter "module"

    .prologue
    const/4 v7, 0x1

    .line 622
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "readModuleBinVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "module="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, sysfsid:Ljava/lang/String;
    const/4 v1, 0x0

    .line 625
    .local v1, version:Ljava/lang/String;
    packed-switch p1, :pswitch_data_ca

    .line 638
    :goto_20
    :pswitch_20
    if-ne p1, v7, :cond_30

    const-string v2, "TSP_MANUFACTURE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATMEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_30
    if-ne p1, v7, :cond_64

    const-string v2, "IS_TSP_STANDARD"

    invoke-static {v2}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 642
    :cond_3a
    const-string v2, "get_fw_ver_bin"

    invoke-virtual {p0, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 657
    :goto_40
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "readModuleBinVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-object v1

    .line 629
    :pswitch_5b
    const-string v0, "TSP_FIRMWARE_VERSION_PHONE"

    .line 630
    goto :goto_20

    .line 632
    :pswitch_5e
    const-string v0, "TSK_FIRMWARE_VERSION_PHONE"

    .line 633
    goto :goto_20

    .line 635
    :pswitch_61
    const-string v0, "EPEN_FIRMWARE_VERSION"

    goto :goto_20

    .line 643
    :cond_64
    const/4 v2, 0x3

    if-ne p1, v2, :cond_c3

    .line 644
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleDevice;->isEpenChecksumPass()Z

    move-result v2

    if-ne v2, v7, :cond_bf

    .line 645
    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 646
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "readModuleFirmwareVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version.split \'\t\' [0]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "readModuleFirmwareVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version.split \'\t\' [1]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v7

    goto :goto_40

    .line 652
    :cond_bf
    const-string v1, "NG_CS"

    goto/16 :goto_40

    .line 655
    :cond_c3
    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_40

    .line 625
    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_20
        :pswitch_5b
        :pswitch_5e
        :pswitch_61
    .end packed-switch
.end method

.method public readModuleFirmwareVersion(I)Ljava/lang/String;
    .registers 10
    .parameter "module"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 570
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "readModuleFirmwareVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "module="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, sysfsid:Ljava/lang/String;
    const/4 v1, 0x0

    .line 573
    .local v1, version:Ljava/lang/String;
    packed-switch p1, :pswitch_data_d0

    .line 594
    :goto_21
    :pswitch_21
    if-ne p1, v6, :cond_31

    const-string v2, "TSP_MANUFACTURE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATMEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_31
    if-ne p1, v6, :cond_6b

    const-string v2, "IS_TSP_STANDARD"

    invoke-static {v2}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 598
    :cond_3b
    const-string v2, "get_fw_ver_ic"

    invoke-virtual {p0, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    :goto_41
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "readModuleFirmwareVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-object v1

    .line 577
    :pswitch_5c
    const-string v0, "TSP_FIRMWARE_VERSION_PANEL"

    .line 578
    goto :goto_21

    .line 580
    :pswitch_5f
    const-string v0, "TSK_FIRMWARE_VERSION_PANEL"

    .line 581
    goto :goto_21

    .line 584
    :pswitch_62
    const-string v0, "EPEN_FIRMWARE_VERSION"

    .line 585
    goto :goto_21

    .line 588
    :pswitch_65
    const-string v0, "SENSORHUB_FIRMWARE_VERSION"

    .line 589
    goto :goto_21

    .line 591
    :pswitch_68
    const-string v0, "BARCODE_EMUL_FIRMWARE_VERSION"

    goto :goto_21

    .line 601
    :cond_6b
    const/4 v2, 0x3

    if-ne p1, v2, :cond_ca

    .line 602
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleDevice;->isEpenChecksumPass()Z

    move-result v2

    if-ne v2, v6, :cond_c6

    .line 603
    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 604
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "readModuleFirmwareVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version.split \'\t\' [0]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "readModuleFirmwareVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version.split \'\t\' [1]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v7

    goto/16 :goto_41

    .line 610
    :cond_c6
    const-string v1, "NG_CS"

    goto/16 :goto_41

    .line 615
    :cond_ca
    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_41

    .line 573
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_68
    .end packed-switch
.end method

.method public readModuleUpdateStatus(I)Ljava/lang/String;
    .registers 8
    .parameter "module"

    .prologue
    .line 552
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "readModuleStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "module="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const/4 v1, 0x0

    .line 554
    .local v1, sysfsid:Ljava/lang/String;
    packed-switch p1, :pswitch_data_44

    .line 564
    :goto_1e
    :pswitch_1e
    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, status:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "readModuleStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-object v0

    .line 558
    .end local v0           #status:Ljava/lang/String;
    :pswitch_3d
    const-string v1, "TSP_FIRMWARE_UPDATE_STATUS"

    .line 559
    goto :goto_1e

    .line 561
    :pswitch_40
    const-string v1, "TSK_FIRMWARE_UPDATE_STATUS"

    goto :goto_1e

    .line 554
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_3d
        :pswitch_40
    .end packed-switch
.end method

.method public readSensorHubResult()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1210
    const-string v0, "SENSORHUB_MCU"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1211
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readSensorHubResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    return-object v0
.end method

.method public readSerialNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 490
    const-string v0, "SERIAL_NO"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readTSKSensitivity(I)I
    .registers 6
    .parameter

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "readTSKSensitivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    sparse-switch p1, :sswitch_data_6a

    .line 1081
    const/4 v0, 0x0

    :goto_1e
    return v0

    .line 1067
    :sswitch_1f
    const-string v0, "TOUCH_KEY_SENSITIVITY_MENU"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    .line 1069
    :sswitch_2a
    const-string v0, "SUPPORT_DUAL_LCD_FOLDER"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1070
    const-string v0, "TOUCH_KEY_SENSITIVITY_HOME"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    .line 1072
    :cond_3d
    const-string v0, "TOUCH_KEY_SENSITIVITY_OK"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    .line 1074
    :sswitch_48
    const-string v0, "TOUCH_KEY_SENSITIVITY_BACK"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    .line 1076
    :sswitch_53
    const-string v0, "TOUCH_KEY_SENSITIVITY_SEARCH"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    .line 1079
    :sswitch_5e
    const-string v0, "TOUCH_KEY_SENSITIVITY_RECENT"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    .line 1065
    nop

    :sswitch_data_6a
    .sparse-switch
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_48
        0x52 -> :sswitch_1f
        0x54 -> :sswitch_53
        0xbb -> :sswitch_5e
        0xdf -> :sswitch_5e
    .end sparse-switch
.end method

.method public readTSKThreshold()I
    .registers 6

    .prologue
    .line 1057
    const-string v0, "TOUCH_KEY_THRESHOLD"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_27

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1059
    :goto_c
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readTSKThreshold"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "threshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    return v0

    .line 1058
    :cond_27
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public readiSerialNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 494
    const-string v0, "ISERIAL_NO"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runOTGTest()V
    .registers 5

    .prologue
    .line 719
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 720
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "runOTGTest"

    const-string v2, "Start OTG Test"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.factory.intent.ACTION_OTG_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    const-string v1, "OTG_MUIC_SET"

    sget-object v2, Lcom/sec/factory/modules/ModuleDevice;->OTG_MUIC_ON:[B

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 723
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "runOTGTest"

    const-string v3, "Set OTG MUIC success!"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :goto_2a
    const-string v1, "OTG_TEST_MODE"

    sget-object v2, Lcom/sec/factory/modules/ModuleDevice;->OTG_TEST_ON:[B

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 728
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "runOTGTest"

    const-string v3, "OTG TEST ON"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    new-instance v1, Lcom/sec/factory/modules/ModuleDevice$2;

    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleDevice;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/sec/factory/modules/ModuleDevice$2;-><init>(Lcom/sec/factory/modules/ModuleDevice;Landroid/os/Looper;Landroid/content/Intent;)V

    .line 752
    const/4 v0, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 753
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "runOTGTest"

    const-string v2, "Wait 2sec..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :goto_59
    return-void

    .line 725
    :cond_5a
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "runOTGTest"

    const-string v3, "Set OTG MUIC fail!"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 755
    :cond_64
    const-string v1, "result"

    const-string v2, "NG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleDevice;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_59
.end method

.method public setLEDlamp(I)Z
    .registers 6
    .parameter

    .prologue
    .line 1094
    const-string v1, "40"

    .line 1095
    const-string v2, "0"

    .line 1096
    const-string v3, "0xFFFFFF"

    .line 1097
    const/4 v0, 0x0

    .line 1098
    packed-switch p1, :pswitch_data_7c

    .line 1129
    :goto_a
    return v0

    .line 1100
    :pswitch_b
    const-string v0, "LED_RED"

    invoke-static {v0, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1101
    const-string v0, "LED_GREEN"

    invoke-static {v0, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1102
    const-string v0, "LED_BLUE"

    invoke-static {v0, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    .line 1105
    :pswitch_1c
    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->isMSM8960:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->isMSM8260A:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->isPegasus:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->isPegasusPrime:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->isPegaPrime:Z

    if-eqz v0, :cond_37

    .line 1106
    :cond_30
    const-string v0, "LED_BLINK"

    invoke-static {v0, v3}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    .line 1108
    :cond_37
    const-string v0, "LED_RED"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1109
    const-string v0, "LED_GREEN"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1110
    const-string v0, "LED_BLUE"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    .line 1114
    :pswitch_48
    const-string v0, "LED_RED"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1115
    const-string v0, "LED_GREEN"

    invoke-static {v0, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1116
    const-string v0, "LED_BLUE"

    invoke-static {v0, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    .line 1119
    :pswitch_59
    const-string v0, "LED_RED"

    invoke-static {v0, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1120
    const-string v0, "LED_GREEN"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1121
    const-string v0, "LED_BLUE"

    invoke-static {v0, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    .line 1124
    :pswitch_6a
    const-string v0, "LED_RED"

    invoke-static {v0, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1125
    const-string v0, "LED_GREEN"

    invoke-static {v0, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1126
    const-string v0, "LED_BLUE"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    .line 1098
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1c
        :pswitch_48
        :pswitch_59
        :pswitch_6a
    .end packed-switch
.end method

.method public setLPAmode(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 1196
    const-string v0, "LPA_MODE_SET"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1197
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setLpaMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lpaMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    return-void
.end method

.method public setUSBMode(I)Z
    .registers 4
    .parameter "mode"

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleDevice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_setting_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 696
    const-string v1, "USB_MENU_SEL"

    if-nez p1, :cond_14

    const-string v0, "0"

    :goto_f
    invoke-static {v1, v0}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_14
    const-string v0, "1"

    goto :goto_f
.end method

.method public startSensorHubTest()V
    .registers 4

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startSensorHbTest"

    const-string v2, "Start sensorhub test"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v0, "SENSORHUB_MCU"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1207
    return-void
.end method

.method public startTSPConnectionTest_atmel_temporary()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1025
    const-string v0, ""

    .line 1027
    const-string v0, "TSP_COMMAND_REFER_SET"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1028
    if-nez v0, :cond_16

    .line 1029
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "tspConnectionTest"

    const-string v2, "Fail status = null"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string v0, "NG"

    .line 1036
    :goto_15
    return-object v0

    .line 1031
    :cond_16
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1032
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "tspConnectionTest"

    const-string v2, "Success status = OK"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v0, "OK"

    goto :goto_15

    .line 1035
    :cond_2a
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "startTSPTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail - Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v0, "NG"

    goto :goto_15
.end method

.method public startTSPReadTest(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 861
    const-string v0, "get_x_num"

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 863
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTSPReadTest"

    const-string v2, "error - TSP_CMD_X_COUNT"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v0, "NG"

    .line 899
    :goto_1c
    return-object v0

    .line 866
    :cond_1d
    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 870
    const-string v0, "get_y_num"

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    const-string v3, "NG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 872
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTSPReadTest"

    const-string v2, "error - TSP_CMD_Y_COUNT"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v0, "NG"

    goto :goto_1c

    .line 875
    :cond_3b
    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 879
    const-string v0, ""

    .line 881
    const-string v4, "TSP_MANUFACTURE"

    invoke-static {v4}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SYNAPTICS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9a

    move-object v2, v0

    move v0, v1

    .line 882
    :goto_51
    if-ge v0, v3, :cond_100

    .line 883
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 884
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v5, v4}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 882
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 887
    :cond_9a
    if-ge p2, v2, :cond_f3

    move-object v2, v0

    move v0, v1

    .line 888
    :goto_9e
    if-ge v0, v3, :cond_e7

    .line 889
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 890
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {p0, v5, v4}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 888
    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    .line 892
    :cond_e7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    .line 894
    :cond_f3
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTSPReadTest"

    const-string v2, "error - X_AXIS >= X_AXIS_MAX"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v0, "NG"

    goto/16 :goto_1c

    .line 899
    :cond_100
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c
.end method

.method public startTSPTest(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 808
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startTSPTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd name => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 810
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startVibrate()V
    .registers 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startVibrate"

    const-string v2, "Start Vibrate pattern={0, 5000}"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v1}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->setMagnitude(I)V

    .line 142
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_24

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrate([JI)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsVibrating:Z

    .line 146
    return-void

    .line 142
    :array_24
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public startVibrate(J)V
    .registers 7
    .parameter "milliseconds"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "startVibrate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Vibrate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsVibrating:Z

    if-nez v0, :cond_37

    .line 151
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v1}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->setMagnitude(I)V

    .line 152
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsVibrating:Z

    .line 155
    :cond_37
    return-void
.end method

.method public stopVibrate()V
    .registers 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "stopVibrate"

    const-string v2, "Stop Vibrate"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsVibrating:Z

    if-eqz v0, :cond_15

    .line 160
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleDevice;->mIsVibrating:Z

    .line 163
    :cond_15
    return-void
.end method

.method public tsp_module_data_read(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 949
    const-string v0, ""

    .line 950
    const-string v1, ""

    .line 951
    invoke-static {p1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 952
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "tspConnectionTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tempResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 955
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "tspConnectionTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_55
    :goto_55
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    .line 960
    :cond_94
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "tspConnectionTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    return-object v0
.end method

.method public tsp_module_data_read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 965
    const-string v0, ""

    .line 968
    sget v2, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_X:I

    new-array v3, v2, [Ljava/lang/String;

    .line 969
    if-nez p1, :cond_c

    .line 970
    const-string v0, "NG"

    .line 990
    :goto_b
    return-object v0

    .line 974
    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 975
    if-ltz v4, :cond_16

    sget v2, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_Y:I

    if-le v4, v2, :cond_19

    .line 977
    :cond_16
    const-string v0, "NG"

    goto :goto_b

    .line 980
    :cond_19
    invoke-static {p2}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-object v2, v0

    move v0, v1

    .line 982
    :goto_1e
    sget v5, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_X:I

    if-ge v0, v5, :cond_5e

    .line 983
    const-string v5, ""

    .line 984
    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v4, -0x1

    sget v8, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_X:I

    mul-int/2addr v8, v0

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 985
    invoke-static {p3, v5}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 986
    invoke-static {p3}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 987
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 989
    :cond_5e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public tsp_module_mode(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 931
    const/4 v0, 0x0

    .line 932
    if-nez p1, :cond_b

    .line 933
    const-string v0, "TSP_COMMAND_ON"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    .line 934
    const-string v0, "OK"

    .line 945
    :cond_a
    :goto_a
    return-object v0

    .line 935
    :cond_b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    .line 936
    const-string v0, "TSP_COMMAND_OFF"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    .line 937
    const-string v0, "OK"

    goto :goto_a

    .line 938
    :cond_16
    const/4 v1, 0x2

    if-ne p1, v1, :cond_20

    .line 939
    const-string v0, "TSP_COMMAND_NAME"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 940
    :cond_20
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2a

    .line 941
    const-string v0, "TSP_FIRMWARE_VERSION_PHONE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 942
    :cond_2a
    const/4 v1, 0x4

    if-ne p1, v1, :cond_a

    .line 943
    const-string v0, "TSP_FIRMWARE_VERSION_PANEL"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public tsp_module_refer_diff(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 994
    const-string v2, ""

    .line 995
    sget v0, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_X:I

    new-array v3, v0, [Ljava/lang/String;

    .line 996
    sget v0, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_Y:I

    new-array v4, v0, [Ljava/lang/String;

    .line 997
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 998
    if-ltz v5, :cond_16

    sget v0, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_Y:I

    if-le v5, v0, :cond_19

    .line 999
    :cond_16
    const-string v0, "NG"

    .line 1020
    :goto_18
    return-object v0

    .line 1002
    :cond_19
    invoke-static {p2}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    .line 1003
    :goto_1d
    sget v6, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_X:I

    if-ge v0, v6, :cond_43

    .line 1004
    const-string v6, ""

    .line 1005
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    add-int/lit8 v8, v5, -0x1

    sget v9, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_X:I

    mul-int/2addr v9, v0

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1006
    invoke-static {p2, v6}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1007
    invoke-static {p3}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1009
    :cond_43
    invoke-static {p2}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    .line 1010
    :goto_47
    sget v6, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_X:I

    if-ge v0, v6, :cond_95

    .line 1011
    const-string v6, ""

    .line 1012
    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    add-int/lit8 v8, v5, -0x1

    sget v9, Lcom/sec/factory/modules/ModuleDevice;->TSP_NODE_X:I

    mul-int/2addr v9, v0

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1013
    invoke-static {p3, v6}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1014
    invoke-static {p3}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    .line 1015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, v3, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1010
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 1019
    :cond_95
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18
.end method

.method public turnOnTSKSensitivity()V
    .registers 4

    .prologue
    .line 1047
    new-instance v0, Ljava/io/File;

    const-string v1, "TOUCH_KEY_SENSITIVITY_POWER"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1049
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "turnOnTSKSensitivity"

    const-string v2, "Turn on TSK Sensitivity"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v0, "TOUCH_KEY_SENSITIVITY_POWER"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1054
    :goto_21
    return-void

    .line 1052
    :cond_22
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "turnOnTSKSensitivity"

    const-string v2, "File does not exist"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public unmount(I)V
    .registers 10
    .parameter "type"

    .prologue
    .line 398
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 399
    .local v3, storageVolumes:[Landroid/os/storage/StorageVolume;
    aget-object v4, v3, p1

    if-eqz v4, :cond_3d

    .line 400
    aget-object v4, v3, p1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_3d

    .line 402
    invoke-virtual {p0, p1}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 403
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleDevice;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 404
    .local v1, ms:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_3d

    .line 406
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_20
    invoke-interface {v1, v2, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 407
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleDevice;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "unmount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unmount Storage type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_3d} :catch_3e

    .line 415
    .end local v1           #ms:Landroid/os/storage/IMountService;
    .end local v2           #path:Ljava/lang/String;
    :cond_3d
    :goto_3d
    return-void

    .line 408
    .restart local v1       #ms:Landroid/os/storage/IMountService;
    .restart local v2       #path:Ljava/lang/String;
    :catch_3e
    move-exception v0

    .line 409
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_3d
.end method

.method public writeSerialNo(Ljava/lang/String;)V
    .registers 3
    .parameter "serial"

    .prologue
    .line 498
    const-string v0, "SERIAL_NO"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 499
    return-void
.end method
