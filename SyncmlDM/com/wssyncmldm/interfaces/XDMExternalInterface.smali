.class public interface abstract Lcom/wssyncmldm/interfaces/XDMExternalInterface;
.super Ljava/lang/Object;
.source "XDMExternalInterface.java"


# static fields
.field public static final SETTING_PROVIDER_AUTO_UPDATE_URL:Ljava/lang/String; = "SOFTWARE_UPDATE_AUTO_UPDATE"

.field public static final SETTING_PROVIDER_FOTA_BEARER_URL:Ljava/lang/String; = "SMLDM_BEARER"

.field public static final SETTING_PROVIDER_FOTA_CLIENT_REGISTRAION:Ljava/lang/String; = "FOTA_CLIENT_REGISTRATION"

.field public static final SETTING_PROVIDER_FOTA_START:Ljava/lang/String; = "SMLDM_FOTA_START"

.field public static final SETTING_PROVIDER_PUSH_MESSAGE_URL:Ljava/lang/String; = "SOFTWARE_UPDATE_PUSH_MESSAGE"

.field public static final SETTING_PROVIDER_WIFI_ONLY_URL:Ljava/lang/String; = "SOFTWARE_UPDATE_WIFI_ONLY"

.field public static final XDM_BEARER_DB_PATH:Ljava/lang/String; = "/data/data/com.android.providers.telephony/databases/fota.db"

.field public static final XDM_BEARER_DB_PROJECTION:[Ljava/lang/String; = null

.field public static final XDM_BEARER_DB_TABLE_NAME:Ljava/lang/String; = "nwkinfo"

.field public static final XDM_BEARER_OTA_PREFER:I = 0x2

.field public static final XDM_BEARER_VALUE:[Ljava/lang/String; = null

.field public static final XDM_BEARER_WIFI_ONLY:I = 0x1

.field public static final XDM_BEARER_WIFI_PREFER:I = 0x0

.field public static final XDM_FOTA_START_OFF:I = 0x0

.field public static final XDM_FOTA_START_ON:I = 0x1

.field public static final XDM_SIM_OPERATOR_ALPHA:I = 0x1

.field public static final XDM_SIM_OPERATOR_NUMERIC:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "plmn"

    aput-object v1, v0, v2

    const-string v1, "nwkname"

    aput-object v1, v0, v3

    const-string v1, "fotabearer"

    aput-object v1, v0, v4

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMExternalInterface;->XDM_BEARER_DB_PROJECTION:[Ljava/lang/String;

    .line 15
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "WIFI_DEDICATED"

    aput-object v1, v0, v2

    const-string v1, "WIFI_ONLY_ON"

    aput-object v1, v0, v3

    const-string v1, "WIFI_ONLY_OFF"

    aput-object v1, v0, v4

    sput-object v0, Lcom/wssyncmldm/interfaces/XDMExternalInterface;->XDM_BEARER_VALUE:[Ljava/lang/String;

    return-void
.end method
