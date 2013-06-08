.class public interface abstract Lcom/wssyncmldm/interfaces/XFOTAInterface;
.super Ljava/lang/Object;
.source "XFOTAInterface.java"


# static fields
.field public static final XDL_3G_DOWNLOAD_SIZE_NO_LIMITATION:I = -0x1

.field public static final XDL_DEFAULT_PKGNAME:Ljava/lang/String; = "fota_delta_dp"

.field public static final XDL_DEFAULT_PKGVERSION:Ljava/lang/String; = "1.0"

.field public static final XDL_DELTA_WAIT_POPUP_SIZE:I = 0x1e00000

.field public static final XDL_FOTA_SUCCESS:I = 0x0

.field public static final XDL_MEMORY_ENCRYPTED:I = 0x3

.field public static final XDL_MEMORY_INSUFFICIENT:I = 0x2

.field public static final XDL_OVER_OBJECT_SIZE:I = 0x1

.field public static final XDL_PLUS_DELTA_CACHE_SIZE_2M:I = 0x200000

.field public static final XDL_PLUS_DELTA_FREE_SIZE_20M:I = 0x1400000

.field public static final XDL_PLUS_DELTA_FREE_SIZE_30M:I = 0x1e00000

.field public static final XDL_PLUS_DELTA_FREE_SIZE_350M:I = 0x15e00000

.field public static final XDL_RET_CONTINUE:I = 0x1

.field public static final XDL_RET_FAILED:I = -0x2

.field public static final XDL_RET_OK:I = 0x0

.field public static final XDL_RET_UNKNOWN_DD:I = -0x1

.field public static final XDL_STATE_DOWNLOAD_COMPLETE:I = 0x28

.field public static final XDL_STATE_DOWNLOAD_DESCRIPTOR:I = 0xc8

.field public static final XDL_STATE_DOWNLOAD_FAILED:I = 0x14

.field public static final XDL_STATE_DOWNLOAD_FAILED_REPORTING:I = 0xf1

.field public static final XDL_STATE_DOWNLOAD_IN_CANCEL:I = 0xe6

.field public static final XDL_STATE_DOWNLOAD_IN_PROGRESS:I = 0x1e

.field public static final XDL_STATE_IDLE_START:I = 0xa

.field public static final XDL_STATE_NONE:I = 0x0

.field public static final XDL_STATE_POSTPONE_TO_DOWNLOAD:I = 0xdd

.field public static final XDL_STATE_POSTPONE_TO_UPDATE:I = 0xdc

.field public static final XDL_STATE_READY_TO_UPDATE:I = 0x32

.field public static final XDL_STATE_START_TO_UPDATE:I = 0xd2

.field public static final XDL_STATE_UPDATE_FAILED_HAVEDATA:I = 0x46

.field public static final XDL_STATE_UPDATE_FAILED_NODATA:I = 0x50

.field public static final XDL_STATE_UPDATE_IN_PROGRESS:I = 0x3c

.field public static final XDL_STATE_UPDATE_SUCCESSFUL_HAVEDATA:I = 0x5a

.field public static final XDL_STATE_UPDATE_SUCCESSFUL_NODATA:I = 0x64

.field public static final XDL_STATE_UPDATE_TO_REPORTING:I = 0x41

.field public static final XDL_STATE_USER_CANCEL_REPORTING:I = 0xf0

.field public static final XDL_STATUS_ATTRIBUTE_MISMATCH:I = 0x4

.field public static final XDL_STATUS_DEVICE_ABORTED:I = 0x7

.field public static final XDL_STATUS_INVALID_DDVERSIONV:I = 0x6

.field public static final XDL_STATUS_INVALID_DESCRIPTOR:I = 0x5

.field public static final XDL_STATUS_LOADER_ERROR:I = 0x9

.field public static final XDL_STATUS_LOSS_SERVICE:I = 0x3

.field public static final XDL_STATUS_MEMORY_ERROR:I = 0x1

.field public static final XDL_STATUS_NONE:I = 0xa

.field public static final XDL_STATUS_NON_ACCEPTABLE_CONTENT:I = 0x8

.field public static final XDL_STATUS_USER_CANCEL:I = 0x2

.field public static final XDL_STAUS_SUCCESS:I = 0x0

.field public static final XFOTA_GENERIC_AUTHENTICATION_FAILURE:Ljava/lang/String; = "406"

.field public static final XFOTA_GENERIC_BAD_URL:Ljava/lang/String; = "411"

.field public static final XFOTA_GENERIC_CLIENT_ERROR:Ljava/lang/String; = "400"

.field public static final XFOTA_GENERIC_CORRUPTED_FW_UP:Ljava/lang/String; = "402"

.field public static final XFOTA_GENERIC_DOWNLOAD_FAILED_NETWORK:Ljava/lang/String; = "503"

.field public static final XFOTA_GENERIC_DOWNLOAD_FAILED_OUT_MEMORY:Ljava/lang/String; = "501"

.field public static final XFOTA_GENERIC_FAILED_FW_UP_VALIDATION:Ljava/lang/String; = "404"

.field public static final XFOTA_GENERIC_NOT_ACCEPTABLE:Ljava/lang/String; = "405"

.field public static final XFOTA_GENERIC_NOT_IMPLEMENTED:Ljava/lang/String; = "408"

.field public static final XFOTA_GENERIC_PACKAGE_MISMATCH:Ljava/lang/String; = "403"

.field public static final XFOTA_GENERIC_REQUEST_TIME_OUT:Ljava/lang/String; = "407"

.field public static final XFOTA_GENERIC_ROOTING_UPDATE_FAILED:Ljava/lang/String; = "450"

.field public static final XFOTA_GENERIC_SERVER_ERROR:Ljava/lang/String; = "500"

.field public static final XFOTA_GENERIC_SERVER_UNAVAILABLE:Ljava/lang/String; = "412"

.field public static final XFOTA_GENERIC_SUCCESSFUL:Ljava/lang/String; = "200"

.field public static final XFOTA_GENERIC_SUCCESSFUL_DOWNLOAD:Ljava/lang/String; = "200"

.field public static final XFOTA_GENERIC_SUCCESSFUL_UPDATE:Ljava/lang/String; = "200"

.field public static final XFOTA_GENERIC_SUCCESSFUL_VENDOR_SPECIFIED:Ljava/lang/String; = "250"

.field public static final XFOTA_GENERIC_UNDEFINED_ERROR:Ljava/lang/String; = "409"

.field public static final XFOTA_GENERIC_UPDATE_FAILED:Ljava/lang/String; = "410"

.field public static final XFOTA_GENERIC_UPDATE_FAILED_OUT_MEMORY:Ljava/lang/String; = "502"

.field public static final XFOTA_GENERIC_USER_CANCELED_DOWNLOAD:Ljava/lang/String; = "401"

.field public static final XFUMO_DOWNLOADANDUPDATE_PATH:Ljava/lang/String; = "/DownloadAndUpdate"

.field public static final XFUMO_DOWNLOAD_PATH:Ljava/lang/String; = "/Download"

.field public static final XFUMO_EXT:Ljava/lang/String; = "/Ext"

.field public static final XFUMO_PATH:Ljava/lang/String; = "./FUMO"

.field public static final XFUMO_PKGDATA_PATH:Ljava/lang/String; = "/PkgData"

.field public static final XFUMO_PKGNAME_PATH:Ljava/lang/String; = "/PkgName"

.field public static final XFUMO_PKGURL_PATH:Ljava/lang/String; = "/PkgURL"

.field public static final XFUMO_PKGVERSION_PATH:Ljava/lang/String; = "/PkgVersion"

.field public static final XFUMO_STATE_PATH:Ljava/lang/String; = "/State"

.field public static final XFUMO_SVCSTATE:Ljava/lang/String; = "/SvcState"

.field public static final XFUMO_SVCSTATE_FULLY_OPEN:Ljava/lang/String; = "260"

.field public static final XFUMO_SVCSTATE_PARTIALLY_OPEN:Ljava/lang/String; = "261"

.field public static final XFUMO_UPDATE_PATH:Ljava/lang/String; = "/Update"
