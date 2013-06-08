.class public Lcom/wssyncmldm/adapter/XDMTargetAdapter;
.super Ljava/lang/Object;
.source "XDMTargetAdapter.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# static fields
.field public static CACHE_DIR_PATH:Ljava/lang/String; = null

.field public static DATA_DIR_PATH:Ljava/lang/String; = null

.field public static EXTERNAL_SD_DIR_PATH:Ljava/lang/String; = null

.field private static final FILE_PATH_CSC_VERSION:Ljava/lang/String; = "system/CSCVersion.txt"

.field public static FOTA_DIR_PATH:Ljava/lang/String; = null

.field public static FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String; = null

.field private static final PROPERTY_SIM_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.sim.operator.alpha"

.field private static final PROP_BUILD_CSC_VERSION:Ljava/lang/String; = "ril.official_cscver"

.field private static final PROP_BUILD_HW_VERSION:Ljava/lang/String; = "ro.build.HW"

.field private static final PROP_BUILD_PDA_VERSION:Ljava/lang/String; = "ro.build.PDA"

.field private static final PROP_BUILD_PHONE_VERSION:Ljava/lang/String; = "ril.sw_ver"

.field private static final PROP_CSC_SALES_CODE:Ljava/lang/String; = "ro.csc.sales_code"

.field private static final PROP_CSC_SALES_CODE2:Ljava/lang/String; = "ril.sales_code"

.field private static final PROP_DEVICE_DECRYPTION_SUPPORT:Ljava/lang/String; = "ro.crypto.support"

.field private static final PROP_DEVICE_ENCRYPTION_STATE:Ljava/lang/String; = "ro.crypto.state"

.field private static final PROP_PRODUCT_MANUFACTURER:Ljava/lang/String; = "ro.product.manufacturer"

.field private static final PROP_PRODUCT_MODEL:Ljava/lang/String; = "ro.product.model"

.field private static final PROP_PRODUCT_OEM:Ljava/lang/String; = "ro.product.OEM"

.field private static final PROP_TWID:Ljava/lang/String; = "ro.serialno"

.field public static g_bExternalSDStorageAvailable:Z

.field public static g_bExternalStorageAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    const-string v0, "cache"

    sput-object v0, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->CACHE_DIR_PATH:Ljava/lang/String;

    .line 52
    const-string v0, "fota"

    sput-object v0, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    .line 53
    const-string v0, "data"

    sput-object v0, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->DATA_DIR_PATH:Ljava/lang/String;

    .line 54
    sput-object v2, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    .line 55
    sput-object v2, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    .line 57
    sput-boolean v1, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalStorageAvailable:Z

    .line 58
    sput-boolean v1, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalSDStorageAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmCheckAvailableCacheMemory(I)Z
    .registers 6
    .parameter "nPkgSize"

    .prologue
    .line 564
    const-wide/16 v1, 0x0

    .line 565
    .local v1, nFreeSpace:J
    const/4 v0, 0x0

    .line 567
    .local v0, bRtn:Z
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetAvailableMemorySize(I)J

    move-result-wide v1

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freeSpace = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nPkgSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 570
    int-to-long v3, p0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2e

    .line 571
    const/4 v0, 0x1

    .line 573
    :cond_2e
    return v0
.end method

.method public static xdmCheckTotalCacheMemory(I)Z
    .registers 6
    .parameter "nPkgSize"

    .prologue
    .line 578
    const-wide/16 v1, 0x0

    .line 579
    .local v1, nTotalSpace:J
    const/4 v0, 0x0

    .line 581
    .local v0, bRtn:Z
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTotalMemorySize(I)J

    move-result-wide v1

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TotalSpace = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nPkgSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 584
    int-to-long v3, p0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2e

    .line 585
    const/4 v0, 0x1

    .line 587
    :cond_2e
    return v0
.end method

.method public static xdmGetAvailableMemorySize(I)J
    .registers 9
    .parameter "nMemoryArea"

    .prologue
    .line 536
    const-string v5, ""

    .line 538
    .local v5, szPath:Ljava/lang/String;
    invoke-static {p0}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetStoragePath(I)Ljava/lang/String;

    move-result-object v5

    .line 539
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 540
    const-wide/16 v6, 0x0

    .line 545
    :goto_e
    return-wide v6

    .line 542
    :cond_f
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 543
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 544
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 545
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    goto :goto_e
.end method

.method private static xdmGetCharToHex(C)C
    .registers 2
    .parameter "ch"

    .prologue
    .line 368
    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-gt p0, v0, :cond_c

    .line 369
    add-int/lit8 v0, p0, -0x30

    int-to-char v0, v0

    .line 375
    :goto_b
    return v0

    .line 370
    :cond_c
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    .line 371
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-char v0, v0

    goto :goto_b

    .line 372
    :cond_1a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_28

    const/16 v0, 0x66

    if-gt p0, v0, :cond_28

    .line 373
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-char v0, v0

    goto :goto_b

    .line 375
    :cond_28
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static xdmGetCheckDataOnly()Z
    .registers 5

    .prologue
    .line 706
    const/4 v0, 0x0

    .line 709
    .local v0, bRet:Z
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Voice : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 711
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 714
    const/4 v0, 0x1

    .line 717
    :cond_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDataOnly : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_84} :catch_85

    .line 723
    .end local v0           #bRet:Z
    :goto_84
    return v0

    .line 720
    .restart local v0       #bRet:Z
    :catch_85
    move-exception v1

    .line 722
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 723
    const/4 v0, 0x0

    goto :goto_84
.end method

.method public static xdmGetCheckWifiOnlyModel()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 665
    const/4 v0, 0x0

    .line 668
    .local v0, bRet:Z
    :try_start_2
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_55

    .line 669
    .local v1, cm:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_2d

    .line 671
    const/4 v3, 0x0

    .local v3, i:I
    :goto_11
    const/16 v5, 0xa

    if-ge v3, v5, :cond_2d

    .line 675
    const-wide/16 v5, 0x3e8

    :try_start_17
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_55

    .line 682
    :goto_1a
    :try_start_1a
    const-string v5, "connectivity is null, retry..."

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 683
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cm:Landroid/net/ConnectivityManager;
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 684
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_5f

    .line 689
    .end local v3           #i:I
    :cond_2d
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-nez v5, :cond_62

    .line 690
    const/4 v0, 0x1

    .line 694
    :goto_35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiOnly : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 700
    .end local v0           #bRet:Z
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :goto_4b
    return v0

    .line 677
    .restart local v0       #bRet:Z
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #i:I
    :catch_4c
    move-exception v2

    .line 679
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_54} :catch_55

    goto :goto_1a

    .line 697
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v3           #i:I
    :catch_55
    move-exception v2

    .line 699
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v0, v4

    .line 700
    goto :goto_4b

    .line 671
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #i:I
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 692
    .end local v3           #i:I
    :cond_62
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public static xdmGetDeviceDecryptionSupport()Z
    .registers 4

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 801
    .local v0, bRet:Z
    const-string v2, ""

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 802
    const-string v2, "ro.crypto.support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, cryptoSupport:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 805
    const-string v2, "CryptoSupport is Empty"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 806
    const/4 v0, 0x0

    .line 814
    .end local v0           #bRet:Z
    :goto_18
    return v0

    .line 809
    .restart local v0       #bRet:Z
    :cond_19
    const-string v2, "recovery_mount"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 811
    const/4 v0, 0x1

    .line 813
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecryptionSupport Ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public static xdmGetDeviceEncryptState()Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 729
    const-string v4, ""

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 731
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;-><init>()V

    .line 733
    .local v0, DevEncrypt:Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;
    const-string v4, "ro.crypto.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 734
    .local v3, szCryptoState:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_79

    .line 736
    const-string v4, "encrypted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 737
    iput-boolean v7, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bInternalEncrypted:Z

    .line 747
    :goto_22
    new-instance v1, Landroid/dirEncryption/DirEncryptionManager;

    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 748
    .local v1, dm:Landroid/dirEncryption/DirEncryptionManager;
    if-eqz v1, :cond_84

    .line 750
    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    .line 751
    .local v2, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v2, :cond_38

    .line 752
    new-instance v2, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v2           #policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 754
    .restart local v2       #policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_38
    iget v4, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_81

    .line 755
    iput-boolean v7, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bSDEncrypted:Z

    .line 765
    .end local v2           #policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :goto_3f
    iget-boolean v4, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bInternalEncrypted:Z

    if-eqz v4, :cond_91

    .line 767
    iget-boolean v4, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bSDEncrypted:Z

    if-eqz v4, :cond_8c

    .line 769
    iput-boolean v7, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaEncrypted:Z

    .line 770
    iput-boolean v6, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaDecrypted:Z

    .line 792
    :goto_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InternalEncrypted : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bInternalEncrypted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], SDEncrypted : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bSDEncrypted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 794
    return-object v0

    .line 739
    .end local v1           #dm:Landroid/dirEncryption/DirEncryptionManager;
    :cond_76
    iput-boolean v6, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bInternalEncrypted:Z

    goto :goto_22

    .line 743
    :cond_79
    const-string v4, "cryptoState is Empty"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 744
    iput-boolean v6, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bInternalEncrypted:Z

    goto :goto_22

    .line 757
    .restart local v1       #dm:Landroid/dirEncryption/DirEncryptionManager;
    .restart local v2       #policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_81
    iput-boolean v6, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bSDEncrypted:Z

    goto :goto_3f

    .line 761
    .end local v2           #policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_84
    const-string v4, "DirEncryptionManager is null"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 762
    iput-boolean v6, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bSDEncrypted:Z

    goto :goto_3f

    .line 774
    :cond_8c
    iput-boolean v6, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaEncrypted:Z

    .line 775
    iput-boolean v6, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaDecrypted:Z

    goto :goto_4b

    .line 780
    :cond_91
    iget-boolean v4, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bSDEncrypted:Z

    if-eqz v4, :cond_9a

    .line 782
    iput-boolean v6, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaEncrypted:Z

    .line 783
    iput-boolean v6, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaDecrypted:Z

    goto :goto_4b

    .line 787
    :cond_9a
    iput-boolean v6, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaEncrypted:Z

    .line 788
    iput-boolean v7, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaDecrypted:Z

    goto :goto_4b
.end method

.method public static xdmGetExternalMemoryAvailable()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 474
    const-string v4, ""

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 476
    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalStorageAvailable:Z

    if-nez v4, :cond_4f

    .line 478
    const-string v4, "storage"

    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 479
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    if-nez v1, :cond_1a

    .line 481
    const-string v4, "mStorageManager is null!!"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 502
    :cond_19
    :goto_19
    return v3

    .line 485
    :cond_1a
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetStoragePath(I)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, szPath:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 491
    :try_start_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External memory State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalStorageAvailable:Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4f} :catch_70

    .line 501
    :cond_4f
    :goto_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bExternalStorageAvailable ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalStorageAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 502
    sget-boolean v3, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalStorageAvailable:Z

    goto :goto_19

    .line 494
    :catch_70
    move-exception v0

    .line 496
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_4f
.end method

.method public static xdmGetExternalSDMemoryAvailable()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 441
    const-string v4, ""

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 443
    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalSDStorageAvailable:Z

    if-nez v4, :cond_4f

    .line 445
    const-string v4, "storage"

    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 446
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    if-nez v1, :cond_1a

    .line 448
    const-string v4, "mStorageManager is null!!"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 469
    :cond_19
    :goto_19
    return v3

    .line 452
    :cond_1a
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetStoragePath(I)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, szPath:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 458
    :try_start_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External SD Card State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalSDStorageAvailable:Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4f} :catch_70

    .line 468
    :cond_4f
    :goto_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bExternalSDStorageAvailable ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalSDStorageAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 469
    sget-boolean v3, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalSDStorageAvailable:Z

    goto :goto_19

    .line 461
    :catch_70
    move-exception v0

    .line 463
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_4f
.end method

.method public static xdmGetNetPinFormIMSI()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v10, 0x0

    .line 314
    const-string v7, ""

    .line 315
    .local v7, szIMSI:Ljava/lang/String;
    const-string v9, ""

    .line 316
    .local v9, szPadIMSI:Ljava/lang/String;
    const/4 v3, 0x0

    .line 317
    .local v3, nPadIMSILen:I
    const/4 v2, 0x0

    .line 319
    .local v2, i:I
    const/4 v6, 0x0

    .line 320
    .local v6, pNetPin:[C
    const/4 v8, 0x0

    .line 322
    .local v8, szNetPin:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetIMSIFromSIM()Ljava/lang/String;

    move-result-object v7

    .line 323
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 363
    :cond_13
    :goto_13
    return-object v10

    .line 329
    :cond_14
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 330
    rem-int/lit8 v11, v3, 0x2

    if-eqz v11, :cond_5f

    .line 332
    add-int/lit8 v3, v3, 0x1

    .line 333
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "9"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 341
    :goto_31
    div-int/lit8 v11, v3, 0x2

    new-array v6, v11, [C

    .line 342
    if-eqz v6, :cond_13

    .line 348
    const/4 v2, 0x0

    :goto_38
    div-int/lit8 v10, v3, 0x2

    if-ge v2, v10, :cond_7b

    .line 350
    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 351
    .local v4, nTemp1:C
    mul-int/lit8 v10, v2, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 353
    .local v5, nTemp2:C
    invoke-static {v4}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetCharToHex(C)C

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    int-to-char v0, v10

    .line 354
    .local v0, a:C
    invoke-static {v5}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetCharToHex(C)C

    move-result v1

    .line 355
    .local v1, b:C
    or-int v10, v0, v1

    int-to-char v10, v10

    aput-char v10, v6, v2

    .line 358
    const/4 v4, 0x0

    .line 359
    const/4 v5, 0x0

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 337
    .end local v0           #a:C
    .end local v1           #b:C
    .end local v4           #nTemp1:C
    .end local v5           #nTemp2:C
    :cond_5f
    add-int/lit8 v3, v3, 0x2

    .line 338
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "F"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_31

    .line 362
    :cond_7b
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    .line 363
    goto :goto_13
.end method

.method public static xdmGetPhoneType()I
    .registers 3

    .prologue
    .line 80
    const-string v1, "phone"

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 81
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_11

    .line 83
    const-string v1, "tm == null"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x0

    .line 95
    :goto_10
    return v1

    .line 87
    :cond_11
    const-string v1, "OPEN"

    const-string v2, "KOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 89
    const-string v1, ""

    const-string v2, "LG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 90
    const/4 v1, 0x2

    goto :goto_10

    .line 91
    :cond_27
    const-string v1, ""

    const-string v2, "LTELG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 92
    const/4 v1, 0x1

    goto :goto_10

    .line 95
    :cond_33
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    goto :goto_10
.end method

.method private static xdmGetSDCardMemoryPath(I)Ljava/lang/String;
    .registers 8
    .parameter "nMemoryArea"

    .prologue
    .line 507
    const-string v3, ""

    .line 509
    .local v3, szPath:Ljava/lang/String;
    const-string v5, "storage"

    invoke-static {v5}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 510
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    if-nez v1, :cond_13

    .line 512
    const-string v5, "mStorageManager is null!!"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-object v4, v3

    .line 531
    .end local v3           #szPath:Ljava/lang/String;
    .local v4, szPath:Ljava/lang/String;
    :goto_12
    return-object v4

    .line 519
    .end local v4           #szPath:Ljava/lang/String;
    .restart local v3       #szPath:Ljava/lang/String;
    :cond_13
    :try_start_13
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 520
    .local v2, mStorageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v5, 0x2

    if-ne p0, v5, :cond_39

    .line 521
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_44

    move-result-object v3

    .line 530
    .end local v2           #mStorageVolumes:[Landroid/os/storage/StorageVolume;
    :cond_21
    :goto_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SD Card memory Path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move-object v4, v3

    .line 531
    .end local v3           #szPath:Ljava/lang/String;
    .restart local v4       #szPath:Ljava/lang/String;
    goto :goto_12

    .line 522
    .end local v4           #szPath:Ljava/lang/String;
    .restart local v2       #mStorageVolumes:[Landroid/os/storage/StorageVolume;
    .restart local v3       #szPath:Ljava/lang/String;
    :cond_39
    const/4 v5, 0x3

    if-ne p0, v5, :cond_21

    .line 523
    const/4 v5, 0x1

    :try_start_3d
    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_44

    move-result-object v3

    goto :goto_21

    .line 525
    .end local v2           #mStorageVolumes:[Landroid/os/storage/StorageVolume;
    :catch_44
    move-exception v0

    .line 527
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private static xdmGetStoragePath(I)Ljava/lang/String;
    .registers 5
    .parameter "nMemoryArea"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 592
    const-string v0, ""

    .line 594
    .local v0, szPath:Ljava/lang/String;
    if-nez p0, :cond_14

    .line 596
    sget-object v0, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->CACHE_DIR_PATH:Ljava/lang/String;

    .line 617
    :cond_8
    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 619
    const-string v1, "getStoragePath is empty"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 621
    :cond_13
    return-object v0

    .line 598
    :cond_14
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1a

    .line 600
    sget-object v0, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->DATA_DIR_PATH:Ljava/lang/String;

    goto :goto_8

    .line 602
    :cond_1a
    if-ne p0, v2, :cond_2e

    .line 604
    sget-object v1, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 605
    invoke-static {v2}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetSDCardMemoryPath(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #szPath:Ljava/lang/String;
    sput-object v0, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    .restart local v0       #szPath:Ljava/lang/String;
    goto :goto_8

    .line 607
    :cond_2b
    sget-object v0, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    goto :goto_8

    .line 609
    :cond_2e
    if-ne p0, v3, :cond_8

    .line 611
    sget-object v1, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 612
    invoke-static {v3}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetSDCardMemoryPath(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #szPath:Ljava/lang/String;
    sput-object v0, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    .restart local v0       #szPath:Ljava/lang/String;
    goto :goto_8

    .line 614
    :cond_3f
    sget-object v0, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    goto :goto_8
.end method

.method public static xdmGetSystemCscFile()Ljava/lang/String;
    .registers 11

    .prologue
    const-wide/16 v9, 0x0

    .line 626
    const/4 v2, 0x0

    .line 627
    .local v2, f:Ljava/io/RandomAccessFile;
    new-instance v4, Ljava/io/File;

    const-string v7, "system/CSCVersion.txt"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    .local v4, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 629
    .local v0, buffer:[B
    const-string v5, ""

    .line 633
    .local v5, szRet:Ljava/lang/String;
    :try_start_d
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v3, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_5b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_44

    .line 635
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .local v3, f:Ljava/io/RandomAccessFile;
    :try_start_14
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    cmp-long v7, v7, v9

    if-lez v7, :cond_33

    .line 637
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    add-int/lit8 v7, v7, -0x1

    new-array v0, v7, [B

    .line 638
    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 639
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 640
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_32} :catch_6e

    .end local v5           #szRet:Ljava/lang/String;
    .local v6, szRet:Ljava/lang/String;
    move-object v5, v6

    .line 651
    .end local v6           #szRet:Ljava/lang/String;
    .restart local v5       #szRet:Ljava/lang/String;
    :cond_33
    if-eqz v3, :cond_38

    .line 652
    :try_start_35
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3a

    :cond_38
    move-object v2, v3

    .line 660
    .end local v3           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    :cond_39
    :goto_39
    return-object v5

    .line 654
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v3       #f:Ljava/io/RandomAccessFile;
    :catch_3a
    move-exception v1

    .line 656
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-object v2, v3

    .line 658
    .end local v3           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    goto :goto_39

    .line 643
    .end local v1           #e:Ljava/io/IOException;
    :catch_44
    move-exception v1

    .line 645
    .local v1, e:Ljava/lang/Exception;
    :goto_45
    :try_start_45
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_5b

    .line 651
    if-eqz v2, :cond_39

    .line 652
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_39

    .line 654
    :catch_52
    move-exception v1

    .line 656
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_39

    .line 649
    .end local v1           #e:Ljava/io/IOException;
    :catchall_5b
    move-exception v7

    .line 651
    :goto_5c
    if-eqz v2, :cond_61

    .line 652
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 657
    :cond_61
    :goto_61
    throw v7

    .line 654
    :catch_62
    move-exception v1

    .line 656
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_61

    .line 649
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v3       #f:Ljava/io/RandomAccessFile;
    :catchall_6b
    move-exception v7

    move-object v2, v3

    .end local v3           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    goto :goto_5c

    .line 643
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v3       #f:Ljava/io/RandomAccessFile;
    :catch_6e
    move-exception v1

    move-object v2, v3

    .end local v3           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    goto :goto_45
.end method

.method public static xdmGetTargetCscV()Ljava/lang/String;
    .registers 3

    .prologue
    .line 164
    const-string v1, "ril.official_cscver"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, szCsc:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read csc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 168
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetSystemCscFile()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read file csc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 173
    const-string v0, ""

    .line 174
    const-string v1, "csc file is Unknown"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 177
    :cond_49
    return-object v0
.end method

.method public static xdmGetTargetDevID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    const-string v0, ""

    .line 63
    .local v0, szDeviceId:Ljava/lang/String;
    const-string v2, "phone"

    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 64
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1a

    .line 66
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1a

    .line 68
    :cond_18
    const-string v0, ""

    .line 70
    :cond_1a
    return-object v0
.end method

.method public static xdmGetTargetFwV()Ljava/lang/String;
    .registers 3

    .prologue
    .line 153
    const-string v1, "ro.build.PDA"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, szFwV:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read FwV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 157
    const-string v0, ""

    .line 159
    :cond_24
    return-object v0
.end method

.method public static xdmGetTargetHwV()Ljava/lang/String;
    .registers 3

    .prologue
    .line 142
    const-string v1, "ro.build.HW"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, szHwV:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read FwV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 146
    const-string v0, ""

    .line 148
    :cond_24
    return-object v0
.end method

.method public static xdmGetTargetIMSIFromSIM()Ljava/lang/String;
    .registers 3

    .prologue
    .line 266
    const-string v0, ""

    .line 268
    .local v0, szBuff:Ljava/lang/String;
    const-string v2, "phone"

    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 270
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_e

    .line 271
    const/4 v0, 0x0

    .line 280
    .end local v0           #szBuff:Ljava/lang/String;
    :cond_d
    :goto_d
    return-object v0

    .line 273
    .restart local v0       #szBuff:Ljava/lang/String;
    :cond_e
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 277
    const-string v0, ""

    goto :goto_d
.end method

.method public static xdmGetTargetIMSIFromSIM2()Ljava/lang/String;
    .registers 3

    .prologue
    .line 286
    const-string v0, ""

    .line 287
    .local v0, szBuff:Ljava/lang/String;
    const-string v2, "phone2"

    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 289
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_e

    .line 290
    const/4 v0, 0x0

    .line 299
    .end local v0           #szBuff:Ljava/lang/String;
    :cond_d
    :goto_d
    return-object v0

    .line 292
    .restart local v0       #szBuff:Ljava/lang/String;
    :cond_e
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 296
    const-string v0, ""

    goto :goto_d
.end method

.method public static xdmGetTargetLanguage()Ljava/lang/String;
    .registers 7

    .prologue
    .line 115
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 116
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, szLanguage:Ljava/lang/String;
    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, szCountry:Ljava/lang/String;
    const-string v4, "%s-%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, szRet:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "language : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 121
    return-object v3
.end method

.method public static xdmGetTargetMSISDN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 305
    const-string v1, "phone"

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 306
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_c

    .line 307
    const/4 v1, 0x0

    .line 309
    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public static xdmGetTargetManufacturer()Ljava/lang/String;
    .registers 1

    .prologue
    .line 100
    const-string v0, "ro.product.manufacturer"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xdmGetTargetModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, szModel:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 108
    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_19
    return-object v0
.end method

.method public static xdmGetTargetOEM()Ljava/lang/String;
    .registers 1

    .prologue
    .line 126
    const-string v0, "ro.product.OEM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xdmGetTargetOperatorAlphaFromSIM()Ljava/lang/String;
    .registers 3

    .prologue
    .line 251
    const-string v0, ""

    .line 253
    .local v0, szBuff:Ljava/lang/String;
    const-string v1, "gsm.sim.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pszBuff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 258
    const/4 v0, 0x0

    .line 261
    :cond_25
    return-object v0
.end method

.method public static xdmGetTargetPhoneV()Ljava/lang/String;
    .registers 1

    .prologue
    .line 182
    const-string v0, "ril.sw_ver"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xdmGetTargetSIMOperator()Ljava/lang/String;
    .registers 4

    .prologue
    .line 231
    const-string v0, ""

    .line 232
    .local v0, szBuff:Ljava/lang/String;
    const-string v2, "phone"

    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 233
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_13

    .line 235
    const-string v2, "TelephonyManager is null!!"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    .line 246
    .end local v0           #szBuff:Ljava/lang/String;
    :goto_12
    return-object v0

    .line 239
    .restart local v0       #szBuff:Ljava/lang/String;
    :cond_13
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 242
    const-string v0, ""

    .line 245
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static xdmGetTargetSIMState()I
    .registers 2

    .prologue
    .line 187
    const-string v1, "phone"

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 188
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_c

    .line 189
    const/4 v1, 0x0

    .line 191
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    goto :goto_b
.end method

.method public static xdmGetTargetSIMState2()I
    .registers 2

    .prologue
    .line 197
    const-string v1, "phone2"

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 198
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_c

    .line 199
    const/4 v1, 0x0

    .line 201
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    goto :goto_b
.end method

.method public static xdmGetTargetSalesCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 207
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, szSalesCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 209
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_12
    const-string v1, "OPEN"

    const-string v2, "KOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 213
    const-string v1, "MSK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 215
    const-string v0, "SKT"

    .line 226
    :cond_26
    :goto_26
    return-object v0

    .line 217
    :cond_27
    const-string v1, "MKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 219
    :cond_37
    const-string v0, "KT"

    goto :goto_26

    .line 221
    :cond_3a
    const-string v1, "MLG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 223
    :cond_4a
    const-string v0, "LG"

    goto :goto_26
.end method

.method public static xdmGetTargetSwV()Ljava/lang/String;
    .registers 3

    .prologue
    .line 131
    const-string v1, "ro.build.PDA"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, szSwV:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read SwV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 135
    const-string v0, ""

    .line 137
    :cond_24
    return-object v0
.end method

.method public static xdmGetTargetTWID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    const-string v0, "ro.serialno"

    const-string v1, "Default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xdmGetTotalMemorySize(I)J
    .registers 9
    .parameter "nMemoryArea"

    .prologue
    .line 550
    const-string v3, ""

    .line 552
    .local v3, szPath:Ljava/lang/String;
    invoke-static {p0}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetStoragePath(I)Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 554
    const-wide/16 v6, 0x0

    .line 559
    :goto_e
    return-wide v6

    .line 556
    :cond_f
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 557
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 558
    .local v0, blockSize:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 559
    .local v4, totalBlocks:J
    mul-long v6, v4, v0

    goto :goto_e
.end method

.method public static xdmInitExternalStorageState()V
    .registers 7

    .prologue
    .line 380
    const-string v5, ""

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 382
    const-string v5, "storage"

    invoke-static {v5}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 383
    .local v1, mStorageManager:Landroid/os/storage/StorageManager;
    if-nez v1, :cond_15

    .line 385
    const-string v5, "mStorageManager is null!!"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 437
    :goto_14
    return-void

    .line 390
    :cond_15
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, szCacheDir:Ljava/lang/String;
    sget-object v5, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->CACHE_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_27

    .line 393
    sput-object v3, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->CACHE_DIR_PATH:Ljava/lang/String;

    .line 396
    :cond_27
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, szDataDir:Ljava/lang/String;
    sget-object v5, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->DATA_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_39

    .line 399
    sput-object v4, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->DATA_DIR_PATH:Ljava/lang/String;

    .line 405
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 408
    .local v2, mStorageVolumes:[Landroid/os/storage/StorageVolume;
    sget-object v5, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 409
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    .line 411
    :cond_4e
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_141

    .line 412
    const/4 v5, 0x1

    sput-boolean v5, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalStorageAvailable:Z

    .line 417
    :goto_64
    sget-object v5, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 418
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    .line 420
    :cond_75
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_150

    .line 421
    const/4 v5, 0x1

    sput-boolean v5, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalSDStorageAvailable:Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_8b} :catch_146

    .line 430
    .end local v2           #mStorageVolumes:[Landroid/os/storage/StorageVolume;
    :goto_8b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACHE_DIR_PATH ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->CACHE_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DATA_DIR_PATH ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->DATA_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA_EXTERNAL_DIR_PATH ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTERNAL_SD_DIR_PATH ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bExternalStorageAvailable ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalStorageAvailable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bExternalSDStorageAvailable ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalSDStorageAvailable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 414
    .restart local v2       #mStorageVolumes:[Landroid/os/storage/StorageVolume;
    :cond_141
    const/4 v5, 0x0

    :try_start_142
    sput-boolean v5, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalStorageAvailable:Z
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_144} :catch_146

    goto/16 :goto_64

    .line 425
    .end local v2           #mStorageVolumes:[Landroid/os/storage/StorageVolume;
    :catch_146
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_8b

    .line 423
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #mStorageVolumes:[Landroid/os/storage/StorageVolume;
    :cond_150
    const/4 v5, 0x0

    :try_start_151
    sput-boolean v5, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalSDStorageAvailable:Z
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_153} :catch_146

    goto/16 :goto_8b
.end method
