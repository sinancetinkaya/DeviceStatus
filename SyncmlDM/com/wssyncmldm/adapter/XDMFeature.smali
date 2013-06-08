.class public Lcom/wssyncmldm/adapter/XDMFeature;
.super Ljava/lang/Object;
.source "XDMFeature.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMExternalInterface;


# static fields
.field public static XDM_FEATURE_BEARER_SETTING_STATUS:Z

.field public static XDM_FEATURE_DATA_ONLY_MODEL:Z

.field public static XDM_FEATURE_OTA_PREFER_MODEL:Z

.field public static XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

.field public static XDM_FEATURE_WIFI_ONLY_MODEL:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_OTA_PREFER_MODEL:Z

    .line 14
    sput-boolean v0, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    .line 15
    sput-boolean v0, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_DATA_ONLY_MODEL:Z

    .line 16
    sput-boolean v0, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    .line 17
    sput-boolean v0, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_BEARER_SETTING_STATUS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmFeatureGetBearerSettingFromCSCFotaDataBase()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 39
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFotaBearerStatus()I

    move-result v0

    .line 42
    .local v0, nBearer:I
    if-ne v0, v2, :cond_84

    .line 44
    const-string v1, "Wifi only block 3G feature enabled"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 45
    sput-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    .line 52
    :cond_13
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XDM_FEATURE_DATA_ONLY_MODEL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_DATA_ONLY_MODEL:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XDM_FEATURE_WIFI_ONLY_MODEL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XDM_FEATURE_OTA_PREFER_MODEL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_OTA_PREFER_MODEL:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 56
    return-void

    .line 47
    :cond_84
    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 49
    const-string v1, "OTA Prefer model"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 50
    sput-boolean v2, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_OTA_PREFER_MODEL:Z

    goto :goto_13
.end method

.method public static xdmGetRootingFeature()Z
    .registers 4

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, bRet:Z
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetRootingPrefValue()I

    move-result v1

    .line 83
    .local v1, nPrefRootingValue:I
    if-nez v1, :cond_1f

    .line 85
    const/4 v0, 0x0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 99
    :goto_1e
    return v0

    .line 88
    :cond_1f
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    .line 90
    const/4 v0, 0x0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rooting On : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_1e

    .line 95
    :cond_3a
    const/4 v0, 0x1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rooting Off : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static xdmInitialize()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 21
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetCheckWifiOnlyModel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    sput-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    .line 26
    :cond_9
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetCheckDataOnly()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 28
    sput-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_DATA_ONLY_MODEL:Z

    .line 31
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XDM_FEATURE_DATA_ONLY_MODEL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_DATA_ONLY_MODEL:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XDM_FEATURE_WIFI_ONLY_MODEL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XDM_FEATURE_OTA_PREFER_MODEL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_OTA_PREFER_MODEL:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static xdmSecProductFeatureGetLog()V
    .registers 1

    .prologue
    .line 60
    const-string v0, "XDM_FEATURE_GOTA : true"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 61
    const-string v0, "XDM_FEATURE_CACHE_MEMORY_STORAGE : true"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 62
    const-string v0, "XDM_FEATURE_INTERIOR_MEMORY_STORAGE : true"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 63
    const-string v0, "XDM_FEATURE_EXTERNAL_MEMORY_STORAGE : true"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 64
    const-string v0, "XDM_FEATURE_EXTERNAL_SD_MEMORY_STORAGE : false"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 65
    const-string v0, "XDM_FEATURE_COMMON_DSDS_SUPPORT : false"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 66
    const-string v0, "XDM_FEATURE_RIL_SIM_DUOS_CDMAGSM : false"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 67
    const-string v0, "XDM_FEATURE_RIL_SIM_DUOS_GSMGSM : false"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 68
    const-string v0, "XDM_FEATURE_NO_USE_KIES : false"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 69
    const-string v0, "XDM_FEATURE_OPERATOR : OPEN"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 70
    const-string v0, "XDM_FEATURE_REBOOT_COMMAND : recovery"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 71
    const-string v0, "XDM_FEATURE_ROAMING_WIFI_ONLY : false"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 72
    const-string v0, "XDM_FEATURE_ROAMING_UNABLENETWORK_MSG : false"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 73
    const-string v0, "XDM_FEATURE_ROOTING_CHECK : false"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 74
    const-string v0, "XDM_FEATURE_USIM_CHECK : false"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 75
    const-string v0, "XDM_FEATURE_DL_WIFI : false"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 76
    return-void
.end method
