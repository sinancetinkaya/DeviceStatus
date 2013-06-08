.class public Lcom/sec/factory/modules/ModuleTouchScreen;
.super Lcom/sec/factory/modules/ModuleObject;
.source "ModuleTouchScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/modules/ModuleTouchScreen$1;,
        Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;
    }
.end annotation


# static fields
.field private static TSP_ID_DUMMY:I

.field public static final TSP_ID_SCOPE_MAX:I

.field public static final TSP_ID_SCOPE_MIN:I

.field public static final TSP_ID__CHIP_NAME:I

.field public static final TSP_ID__CM_ABS__ALL_NODE__RETURN_MIN_MAX:I

.field public static final TSP_ID__CM_ABS__NODE:I

.field public static final TSP_ID__CONFIG_VERSION:I

.field public static final TSP_ID__DELTA__ALL_NODE__RETURN_MIN_MAX:I

.field public static final TSP_ID__DELTA__ALL_NODE__RETURN_NONE:I

.field public static final TSP_ID__DELTA__NODE:I

.field public static final TSP_ID__DIFFERENCE__ALL_NODE__RETURN_NONE:I

.field public static final TSP_ID__DIFFERENCE__NODE:I

.field public static final TSP_ID__FW_UPDATE:I

.field public static final TSP_ID__FW_VERSION_BINARY:I

.field public static final TSP_ID__FW_VERSION_IC:I

.field public static final TSP_ID__GLOBAL_IDAC__ALL_NODE__RETURN_NONE:I

.field public static final TSP_ID__GLOBAL_IDAC__NODE:I

.field public static final TSP_ID__INSPECTION__ALL_NODE__RETURN_MIN_MAX:I

.field public static final TSP_ID__INSPECTION__NODE:I

.field public static final TSP_ID__INTENSITY__ALL_NODE__RETURN_MIN_MAX:I

.field public static final TSP_ID__INTENSITY__NODE:I

.field public static final TSP_ID__LOCAL_IDAC__ALL_NODE__RETURN_NONE:I

.field public static final TSP_ID__LOCAL_IDAC__NODE:I

.field public static final TSP_ID__NUMBER_X_CHANNEL:I

.field public static final TSP_ID__NUMBER_Y_CHANNEL:I

.field public static final TSP_ID__POWER_OFF:I

.field public static final TSP_ID__POWER_OFF_SECOND_CHIP:I

.field public static final TSP_ID__POWER_ON:I

.field public static final TSP_ID__POWER_ON_SECOND_CHIP:I

.field public static final TSP_ID__RAWCAP__ALL_NODE__RETURN_MIN_MAX:I

.field public static final TSP_ID__RAWCAP__NODE:I

.field public static final TSP_ID__RAW_COUNT__ALL_NODE__RETURN_MIN_MAX:I

.field public static final TSP_ID__RAW_COUNT__NODE:I

.field public static final TSP_ID__REFERENCE__ALL_NODE__RETURN_MIN_MAX:I

.field public static final TSP_ID__REFERENCE__ALL_NODE__RETURN_NONE:I

.field public static final TSP_ID__REFERENCE__NODE:I

.field public static final TSP_ID__RESULT_CONNECTION:I

.field public static final TSP_ID__RX_TO_RX__ALL_NODE__RETURN_NONE:I

.field public static final TSP_ID__RX_TO_RX__NODE:I

.field public static final TSP_ID__SCANTIME__ALL_NODE__RETURN_NONE:I

.field public static final TSP_ID__SCANTIME__NODE:I

.field public static final TSP_ID__THRESHOLD:I

.field public static final TSP_ID__TX_TO_GND__ALL_NODE__RETURN_NONE:I

.field public static final TSP_ID__TX_TO_GND__NODE:I

.field public static final TSP_ID__TX_TO_TX__ALL_NODE__RETURN_NONE:I

.field public static final TSP_ID__TX_TO_TX__NODE:I

.field public static final TSP_ID__VENDOR_NAME:I

.field private static TSP_WHAT_DUMMY:I

.field public static final TSP_WHAT_SCOPE_MAX:I

.field public static final TSP_WHAT_SCOPE_MIN:I

.field public static final TSP_WHAT_STATUS_NA:I

.field public static final TSP_WHAT_STATUS_NG:I

.field public static final TSP_WHAT_STATUS_OK:I

.field private static mInstance:Lcom/sec/factory/modules/ModuleTouchScreen;


# instance fields
.field private final TSP_CMD__ATMEL__READ_DELTA_NODE:Ljava/lang/String;

.field private final TSP_CMD__ATMEL__READ_DELTA_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__ATMEL__READ_REFERENCE_NODE:Ljava/lang/String;

.field private final TSP_CMD__ATMEL__READ_REFERENCE_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__COMMON__FW_UPDATE:Ljava/lang/String;

.field private final TSP_CMD__COMMON__FW_UPDATE__SUB_CMD__BUILT_IN:Ljava/lang/String;

.field private final TSP_CMD__COMMON__FW_UPDATE__SUB_CMD__UMS_OR_SDCARD:Ljava/lang/String;

.field private final TSP_CMD__COMMON__POWER_OFF:Ljava/lang/String;

.field private final TSP_CMD__COMMON__POWER_OFF_SECOND_CHIP:Ljava/lang/String;

.field private final TSP_CMD__COMMON__POWER_ON:Ljava/lang/String;

.field private final TSP_CMD__COMMON__POWER_ON_SECOND_CHIP:Ljava/lang/String;

.field private final TSP_CMD__COMMON__READ_CHIP_NAME:Ljava/lang/String;

.field private final TSP_CMD__COMMON__READ_CONFIG_VERSION:Ljava/lang/String;

.field private final TSP_CMD__COMMON__READ_FW_VERSION_BINARY:Ljava/lang/String;

.field private final TSP_CMD__COMMON__READ_FW_VERSION_IC:Ljava/lang/String;

.field private final TSP_CMD__COMMON__READ_NUMBER_X_CHANNEL:Ljava/lang/String;

.field private final TSP_CMD__COMMON__READ_NUMBER_Y_CHANNEL:Ljava/lang/String;

.field private final TSP_CMD__COMMON__READ_THRESHOLD:Ljava/lang/String;

.field private final TSP_CMD__COMMON__READ_VENDOR_NAME:Ljava/lang/String;

.field private final TSP_CMD__CYPRESS__READ_DIFFERENCE_NODE:Ljava/lang/String;

.field private final TSP_CMD__CYPRESS__READ_DIFFERENCE_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__CYPRESS__READ_GLOBAL_IDAC_NODE:Ljava/lang/String;

.field private final TSP_CMD__CYPRESS__READ_GLOBAL_IDAC_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__CYPRESS__READ_LOCAL_IDAC_NODE:Ljava/lang/String;

.field private final TSP_CMD__CYPRESS__READ_LOCAL_IDAC_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__CYPRESS__READ_RAW_COUNT_NODE:Ljava/lang/String;

.field private final TSP_CMD__CYPRESS__READ_RAW_COUNT_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__MELFAS__READ_CM_ABS_NODE:Ljava/lang/String;

.field private final TSP_CMD__MELFAS__READ_CM_ABS_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__MELFAS__READ_DELTA_NODE:Ljava/lang/String;

.field private final TSP_CMD__MELFAS__READ_DELTA_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__MELFAS__READ_INSPECTION_NODE:Ljava/lang/String;

.field private final TSP_CMD__MELFAS__READ_INSPECTION_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__MELFAS__READ_INTENSITY_NODE:Ljava/lang/String;

.field private final TSP_CMD__MELFAS__READ_INTENSITY_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__MELFAS__READ_REFERENCE_NODE:Ljava/lang/String;

.field private final TSP_CMD__MELFAS__READ_REFERENCE_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__SYNAPTICS__READ_RAWCAP_NODE:Ljava/lang/String;

.field private final TSP_CMD__SYNAPTICS__READ_RAWCAP_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__SYNAPTICS__READ_REFERENCE_NODE:Ljava/lang/String;

.field private final TSP_CMD__SYNAPTICS__READ_REFERENCE_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__SYNAPTICS__READ_RX_TO_RX_NODE:Ljava/lang/String;

.field private final TSP_CMD__SYNAPTICS__READ_RX_TO_RX_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__SYNAPTICS__READ_TX_TO_GND_NODE:Ljava/lang/String;

.field private final TSP_CMD__SYNAPTICS__READ_TX_TO_GND_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__SYNAPTICS__READ_TX_TO_TX_NODE:Ljava/lang/String;

.field private final TSP_CMD__SYNAPTICS__READ_TX_TO_TX_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__ZINITIX__READ_DELTA_NODE:Ljava/lang/String;

.field private final TSP_CMD__ZINITIX__READ_DELTA_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__ZINITIX__READ_REFERENCE_NODE:Ljava/lang/String;

.field private final TSP_CMD__ZINITIX__READ_REFERENCE_NODE_ALL:Ljava/lang/String;

.field private final TSP_CMD__ZINITIX__READ_SCANTIME_NODE:Ljava/lang/String;

.field private final TSP_CMD__ZINITIX__READ_SCANTIME_NODE_ALL:Ljava/lang/String;

.field private TSP_STATUS_WATING_TIME_OUT:J

.field private final TSP_STATUS__COMMON__FAIL:Ljava/lang/String;

.field private final TSP_STATUS__COMMON__NOT_APPLICABLE:Ljava/lang/String;

.field private final TSP_STATUS__COMMON__OK:Ljava/lang/String;

.field private final TSP_STATUS__COMMON__RUNNING:Ljava/lang/String;

.field private final TSP_STATUS__COMMON__WAITING:Ljava/lang/String;

.field private mTSPChannelCountX:Ljava/lang/String;

.field private mTSPChannelCountY:Ljava/lang/String;

.field private mTSPConnectionSpec_Max:I

.field private mTSPConnectionSpec_Min:I

.field private mTSPCurrentCommand:Ljava/lang/String;

.field private mTSPDeviceType:Ljava/lang/String;

.field private mTSPPanelType:Ljava/lang/String;

.field private mTSPVendorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/modules/ModuleTouchScreen;->mInstance:Lcom/sec/factory/modules/ModuleTouchScreen;

    .line 242
    sput v2, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    .line 243
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_SCOPE_MIN:I

    .line 246
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_UPDATE:I

    .line 247
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_VERSION_BINARY:I

    .line 248
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_VERSION_IC:I

    .line 249
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CONFIG_VERSION:I

    .line 250
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__THRESHOLD:I

    .line 251
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_OFF:I

    .line 252
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_ON:I

    .line 253
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_OFF_SECOND_CHIP:I

    .line 254
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_ON_SECOND_CHIP:I

    .line 255
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__VENDOR_NAME:I

    .line 256
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CHIP_NAME:I

    .line 257
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__NUMBER_X_CHANNEL:I

    .line 258
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__NUMBER_Y_CHANNEL:I

    .line 259
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RESULT_CONNECTION:I

    .line 262
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__REFERENCE__ALL_NODE__RETURN_MIN_MAX:I

    .line 263
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__REFERENCE__ALL_NODE__RETURN_NONE:I

    .line 264
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__REFERENCE__NODE:I

    .line 265
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__ALL_NODE__RETURN_MIN_MAX:I

    .line 266
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__ALL_NODE__RETURN_NONE:I

    .line 267
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__NODE:I

    .line 268
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CM_ABS__ALL_NODE__RETURN_MIN_MAX:I

    .line 269
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CM_ABS__NODE:I

    .line 270
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INSPECTION__ALL_NODE__RETURN_MIN_MAX:I

    .line 271
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INSPECTION__NODE:I

    .line 272
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INTENSITY__ALL_NODE__RETURN_MIN_MAX:I

    .line 273
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INTENSITY__NODE:I

    .line 274
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__SCANTIME__ALL_NODE__RETURN_NONE:I

    .line 275
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__SCANTIME__NODE:I

    .line 276
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAWCAP__ALL_NODE__RETURN_MIN_MAX:I

    .line 277
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAWCAP__NODE:I

    .line 278
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RX_TO_RX__ALL_NODE__RETURN_NONE:I

    .line 279
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RX_TO_RX__NODE:I

    .line 280
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__TX_TO_TX__ALL_NODE__RETURN_NONE:I

    .line 281
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__TX_TO_TX__NODE:I

    .line 282
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__TX_TO_GND__ALL_NODE__RETURN_NONE:I

    .line 283
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__TX_TO_GND__NODE:I

    .line 284
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAW_COUNT__ALL_NODE__RETURN_MIN_MAX:I

    .line 285
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAW_COUNT__NODE:I

    .line 286
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DIFFERENCE__ALL_NODE__RETURN_NONE:I

    .line 287
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DIFFERENCE__NODE:I

    .line 288
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__LOCAL_IDAC__ALL_NODE__RETURN_NONE:I

    .line 289
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__LOCAL_IDAC__NODE:I

    .line 290
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__GLOBAL_IDAC__ALL_NODE__RETURN_NONE:I

    .line 291
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__GLOBAL_IDAC__NODE:I

    .line 292
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_DUMMY:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID_SCOPE_MAX:I

    .line 295
    sput v2, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_DUMMY:I

    .line 296
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_SCOPE_MIN:I

    .line 297
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_STATUS_OK:I

    .line 298
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_STATUS_NG:I

    .line 299
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_STATUS_NA:I

    .line 300
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_DUMMY:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_WHAT_SCOPE_MAX:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 35
    const-string v0, "ModuleTouchScreen"

    invoke-direct {p0, p1, v0}, Lcom/sec/factory/modules/ModuleObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    iput-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPChannelCountX:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPChannelCountY:Ljava/lang/String;

    .line 81
    const-string v0, "fw_update"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__FW_UPDATE:Ljava/lang/String;

    .line 82
    const-string v0, "get_fw_ver_bin"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__READ_FW_VERSION_BINARY:Ljava/lang/String;

    .line 83
    const-string v0, "get_fw_ver_ic"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__READ_FW_VERSION_IC:Ljava/lang/String;

    .line 84
    const-string v0, "get_config_ver"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__READ_CONFIG_VERSION:Ljava/lang/String;

    .line 85
    const-string v0, "get_threshold"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__READ_THRESHOLD:Ljava/lang/String;

    .line 86
    const-string v0, "module_off_master"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__POWER_OFF:Ljava/lang/String;

    .line 87
    const-string v0, "module_on_master"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__POWER_ON:Ljava/lang/String;

    .line 88
    const-string v0, "module_off_slave"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__POWER_OFF_SECOND_CHIP:Ljava/lang/String;

    .line 89
    const-string v0, "module_on_slave"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__POWER_ON_SECOND_CHIP:Ljava/lang/String;

    .line 90
    const-string v0, "get_chip_vendor"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__READ_VENDOR_NAME:Ljava/lang/String;

    .line 91
    const-string v0, "get_chip_name"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__READ_CHIP_NAME:Ljava/lang/String;

    .line 92
    const-string v0, "get_x_num"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__READ_NUMBER_X_CHANNEL:Ljava/lang/String;

    .line 93
    const-string v0, "get_y_num"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__READ_NUMBER_Y_CHANNEL:Ljava/lang/String;

    .line 106
    const-string v0, "run_reference_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__ATMEL__READ_REFERENCE_NODE_ALL:Ljava/lang/String;

    .line 107
    const-string v0, "get_reference"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__ATMEL__READ_REFERENCE_NODE:Ljava/lang/String;

    .line 108
    const-string v0, "run_delta_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__ATMEL__READ_DELTA_NODE_ALL:Ljava/lang/String;

    .line 109
    const-string v0, "get_delta"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__ATMEL__READ_DELTA_NODE:Ljava/lang/String;

    .line 134
    const-string v0, "run_reference_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__MELFAS__READ_REFERENCE_NODE_ALL:Ljava/lang/String;

    .line 135
    const-string v0, "get_reference"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__MELFAS__READ_REFERENCE_NODE:Ljava/lang/String;

    .line 136
    const-string v0, "run_cm_abs_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__MELFAS__READ_CM_ABS_NODE_ALL:Ljava/lang/String;

    .line 137
    const-string v0, "get_cm_abs"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__MELFAS__READ_CM_ABS_NODE:Ljava/lang/String;

    .line 138
    const-string v0, "run_inspection_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__MELFAS__READ_INSPECTION_NODE_ALL:Ljava/lang/String;

    .line 139
    const-string v0, "get_inspection"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__MELFAS__READ_INSPECTION_NODE:Ljava/lang/String;

    .line 140
    const-string v0, "run_cm_delta_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__MELFAS__READ_DELTA_NODE_ALL:Ljava/lang/String;

    .line 141
    const-string v0, "get_cm_delta"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__MELFAS__READ_DELTA_NODE:Ljava/lang/String;

    .line 142
    const-string v0, "run_intensity_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__MELFAS__READ_INTENSITY_NODE_ALL:Ljava/lang/String;

    .line 143
    const-string v0, "get_intensity"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__MELFAS__READ_INTENSITY_NODE:Ljava/lang/String;

    .line 161
    const-string v0, "run_reference_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__ZINITIX__READ_REFERENCE_NODE_ALL:Ljava/lang/String;

    .line 162
    const-string v0, "get_reference"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__ZINITIX__READ_REFERENCE_NODE:Ljava/lang/String;

    .line 163
    const-string v0, "run_scantime_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__ZINITIX__READ_SCANTIME_NODE_ALL:Ljava/lang/String;

    .line 164
    const-string v0, "get_scantime"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__ZINITIX__READ_SCANTIME_NODE:Ljava/lang/String;

    .line 165
    const-string v0, "run_delta_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__ZINITIX__READ_DELTA_NODE_ALL:Ljava/lang/String;

    .line 166
    const-string v0, "get_delta"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__ZINITIX__READ_DELTA_NODE:Ljava/lang/String;

    .line 191
    const-string v0, "run_reference_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__SYNAPTICS__READ_REFERENCE_NODE_ALL:Ljava/lang/String;

    .line 192
    const-string v0, "get_reference"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__SYNAPTICS__READ_REFERENCE_NODE:Ljava/lang/String;

    .line 193
    const-string v0, "run_rawcap_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__SYNAPTICS__READ_RAWCAP_NODE_ALL:Ljava/lang/String;

    .line 194
    const-string v0, "get_rawcap"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__SYNAPTICS__READ_RAWCAP_NODE:Ljava/lang/String;

    .line 195
    const-string v0, "run_rx_to_rx_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__SYNAPTICS__READ_RX_TO_RX_NODE_ALL:Ljava/lang/String;

    .line 196
    const-string v0, "get_rx_to_rx"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__SYNAPTICS__READ_RX_TO_RX_NODE:Ljava/lang/String;

    .line 197
    const-string v0, "run_tx_to_tx_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__SYNAPTICS__READ_TX_TO_TX_NODE_ALL:Ljava/lang/String;

    .line 198
    const-string v0, "get_tx_to_tx"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__SYNAPTICS__READ_TX_TO_TX_NODE:Ljava/lang/String;

    .line 199
    const-string v0, "run_tx_to_gnd_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__SYNAPTICS__READ_TX_TO_GND_NODE_ALL:Ljava/lang/String;

    .line 200
    const-string v0, "get_tx_to_gnd"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__SYNAPTICS__READ_TX_TO_GND_NODE:Ljava/lang/String;

    .line 211
    const-string v0, "run_raw_count_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__CYPRESS__READ_RAW_COUNT_NODE_ALL:Ljava/lang/String;

    .line 212
    const-string v0, "get_raw_count"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__CYPRESS__READ_RAW_COUNT_NODE:Ljava/lang/String;

    .line 213
    const-string v0, "run_difference_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__CYPRESS__READ_DIFFERENCE_NODE_ALL:Ljava/lang/String;

    .line 214
    const-string v0, "get_difference"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__CYPRESS__READ_DIFFERENCE_NODE:Ljava/lang/String;

    .line 215
    const-string v0, "run_local_idac_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__CYPRESS__READ_LOCAL_IDAC_NODE_ALL:Ljava/lang/String;

    .line 216
    const-string v0, "get_local_idac"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__CYPRESS__READ_LOCAL_IDAC_NODE:Ljava/lang/String;

    .line 217
    const-string v0, "run_global_idac_read"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__CYPRESS__READ_GLOBAL_IDAC_NODE_ALL:Ljava/lang/String;

    .line 218
    const-string v0, "get_global_idac"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__CYPRESS__READ_GLOBAL_IDAC_NODE:Ljava/lang/String;

    .line 226
    const-string v0, "WAITING"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_STATUS__COMMON__WAITING:Ljava/lang/String;

    .line 227
    const-string v0, "RUNNING"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_STATUS__COMMON__RUNNING:Ljava/lang/String;

    .line 228
    const-string v0, "OK"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_STATUS__COMMON__OK:Ljava/lang/String;

    .line 229
    const-string v0, "FAIL"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_STATUS__COMMON__FAIL:Ljava/lang/String;

    .line 230
    const-string v0, "NOT_APPLICABLE"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_STATUS__COMMON__NOT_APPLICABLE:Ljava/lang/String;

    .line 238
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__FW_UPDATE__SUB_CMD__BUILT_IN:Ljava/lang/String;

    .line 239
    const-string v0, "1"

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_CMD__COMMON__FW_UPDATE__SUB_CMD__UMS_OR_SDCARD:Ljava/lang/String;

    .line 303
    iput-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPCurrentCommand:Ljava/lang/String;

    .line 304
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_STATUS_WATING_TIME_OUT:J

    .line 36
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleTouchScreen"

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->setTSPInfo()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/modules/ModuleTouchScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult_Connection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/factory/modules/ModuleTouchScreen;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/ModuleTouchScreen;->mapping_IdNCommand(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/factory/modules/ModuleTouchScreen;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/sec/factory/modules/ModuleTouchScreen;->setTSPCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/factory/modules/ModuleTouchScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPCommandResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkChannelX(I)Ljava/lang/String;
    .registers 5
    .parameter "x"

    .prologue
    .line 1050
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountX()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, countXaxis:Ljava/lang/String;
    const-string v2, "NG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1052
    const-string v2, "NG"

    .line 1061
    :goto_e
    return-object v2

    .line 1053
    :cond_f
    const-string v2, "NA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1054
    const-string v2, "NA"

    goto :goto_e

    .line 1057
    :cond_1a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1058
    .local v0, Xaxis:I
    if-ltz p1, :cond_29

    if-ge p1, v0, :cond_29

    .line 1059
    const-string v2, "OK"

    goto :goto_e

    .line 1061
    :cond_29
    const-string v2, "NA"

    goto :goto_e
.end method

.method private checkChannelY(I)Ljava/lang/String;
    .registers 5
    .parameter "y"

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountY()Ljava/lang/String;

    move-result-object v1

    .line 1066
    .local v1, countYaxis:Ljava/lang/String;
    const-string v2, "NG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1067
    const-string v2, "NG"

    .line 1076
    :goto_e
    return-object v2

    .line 1068
    :cond_f
    const-string v2, "NA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1069
    const-string v2, "NA"

    goto :goto_e

    .line 1072
    :cond_1a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1073
    .local v0, Yaxis:I
    if-ltz p1, :cond_29

    if-ge p1, v0, :cond_29

    .line 1074
    const-string v2, "OK"

    goto :goto_e

    .line 1076
    :cond_29
    const-string v2, "NA"

    goto :goto_e
.end method

.method private checkTSPConnectionSpec(II)Z
    .registers 8
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v0, 0x0

    .line 576
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "checkTSPConnectionSpec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , max : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPConnectionSpec_Min:I

    if-ge v1, p1, :cond_41

    iget v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPConnectionSpec_Max:I

    if-ge p1, v1, :cond_41

    .line 578
    iget v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPConnectionSpec_Min:I

    if-ge v1, p2, :cond_37

    iget v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPConnectionSpec_Max:I

    if-ge p2, v1, :cond_37

    .line 579
    const/4 v0, 0x1

    .line 586
    :goto_36
    return v0

    .line 581
    :cond_37
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "checkTSPConnectionSpec"

    const-string v3, "Spec Out => MAX"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 585
    :cond_41
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "checkTSPConnectionSpec"

    const-string v3, "Spec Out => MIN"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method private getTSPCommandResult()Ljava/lang/String;
    .registers 6

    .prologue
    .line 393
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getTSPCommandResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. get Result => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPCurrentCommand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "TSP_COMMAND_RESULT"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_30

    .line 397
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getTSPCommandResult"

    const-string v3, "Fail - Result Read =>1 result == null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, "NG"

    .line 401
    :goto_2f
    return-object v1

    .line 400
    :cond_30
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getTSPCommandResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPCurrentCommand:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f
.end method

.method private getTSPResult_Connection()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 741
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getTSPResult_Connection"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ATMEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 748
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__REFERENCE__ALL_NODE__RETURN_MIN_MAX:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 797
    :goto_1a
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getTSPResult_Connection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v1, "NA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "NG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 810
    :cond_4a
    :goto_4a
    return-object v0

    .line 753
    :cond_4b
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "CYPRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 754
    const-string v0, "NG"

    goto :goto_4a

    .line 759
    :cond_58
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "MELFAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 760
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPPanelType:Ljava/lang/String;

    const-string v1, "TFT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 761
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 762
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CM_ABS__ALL_NODE__RETURN_MIN_MAX:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 764
    :cond_7d
    const-string v0, "NG"

    goto :goto_4a

    .line 766
    :cond_80
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPPanelType:Ljava/lang/String;

    const-string v1, "OCTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 767
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__ALL_NODE__RETURN_MIN_MAX:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 769
    :cond_91
    const-string v0, "NG"

    goto :goto_4a

    .line 775
    :cond_94
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "SILAB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 776
    const-string v0, "NG"

    goto :goto_4a

    .line 781
    :cond_a1
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "SYNAPTICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 782
    const-string v0, "NG"

    goto :goto_4a

    .line 787
    :cond_ae
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ZINITX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 788
    const-string v0, "NG"

    goto :goto_4a

    .line 793
    :cond_bb
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getTSPResult_Connection"

    const-string v2, "Vendor Name : Unknown"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v0, "NG"

    goto :goto_4a

    .line 801
    :cond_c7
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 802
    array-length v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_117

    .line 803
    aget-object v0, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/factory/modules/ModuleTouchScreen;->checkTSPConnectionSpec(II)Z

    move-result v0

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_114

    const-string v0, "OK"

    :goto_f2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v1, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4a

    :cond_114
    const-string v0, "NG"

    goto :goto_f2

    .line 808
    :cond_117
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getTSPResult_Connection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data.length!=2 => length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v0, "NG"

    goto/16 :goto_4a
.end method

.method private getTSPXaxisNodeAll(II)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 816
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getTSPXaxisNodeAll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSP ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/factory/modules/ModuleTouchScreen;->convertorTSPID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v1, ""

    .line 818
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountX()Ljava/lang/String;

    move-result-object v0

    .line 819
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 820
    const-string v0, "NG"

    .line 837
    :goto_2e
    return-object v0

    .line 821
    :cond_2f
    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 822
    const-string v0, "NA"

    goto :goto_2e

    .line 824
    :cond_3a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 826
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_46
    if-ge v1, v2, :cond_aa

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 828
    const-string v4, "NG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 829
    const-string v0, "NG"

    goto :goto_2e

    .line 830
    :cond_74
    const-string v4, "NA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 831
    const-string v0, "NA"

    goto :goto_2e

    .line 832
    :cond_7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_a7

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 826
    :cond_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 836
    :cond_aa
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getTSPXaxisNodeAll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e
.end method

.method private getTSPYaxisNodeAll(II)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getTSPYaxisNodeAll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSP ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/factory/modules/ModuleTouchScreen;->convertorTSPID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v1, ""

    .line 843
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPChannelCountY()Ljava/lang/String;

    move-result-object v0

    .line 844
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 845
    const-string v0, "NG"

    .line 862
    :goto_2e
    return-object v0

    .line 846
    :cond_2f
    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 847
    const-string v0, "NA"

    goto :goto_2e

    .line 849
    :cond_3a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 851
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_46
    if-ge v1, v2, :cond_aa

    .line 852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 853
    const-string v4, "NG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 854
    const-string v0, "NG"

    goto :goto_2e

    .line 855
    :cond_74
    const-string v4, "NA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 856
    const-string v0, "NA"

    goto :goto_2e

    .line 857
    :cond_7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_a7

    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 851
    :cond_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 861
    :cond_aa
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getTSPYaxisNodeAll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e
.end method

.method public static instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleTouchScreen;
    .registers 2
    .parameter "context"

    .prologue
    .line 41
    sget-object v0, Lcom/sec/factory/modules/ModuleTouchScreen;->mInstance:Lcom/sec/factory/modules/ModuleTouchScreen;

    if-nez v0, :cond_b

    .line 42
    new-instance v0, Lcom/sec/factory/modules/ModuleTouchScreen;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleTouchScreen;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/factory/modules/ModuleTouchScreen;->mInstance:Lcom/sec/factory/modules/ModuleTouchScreen;

    .line 44
    :cond_b
    sget-object v0, Lcom/sec/factory/modules/ModuleTouchScreen;->mInstance:Lcom/sec/factory/modules/ModuleTouchScreen;

    return-object v0
.end method

.method private mapping_IdNCommand(I)Ljava/lang/String;
    .registers 6
    .parameter "tspID"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mapping_IdNCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSP ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/factory/modules/ModuleTouchScreen;->convertorTSPID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_UPDATE:I

    if-ne p1, v0, :cond_25

    .line 410
    const-string v0, "fw_update"

    .line 572
    :goto_24
    return-object v0

    .line 411
    :cond_25
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_VERSION_BINARY:I

    if-ne p1, v0, :cond_2c

    .line 412
    const-string v0, "get_fw_ver_bin"

    goto :goto_24

    .line 413
    :cond_2c
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_VERSION_IC:I

    if-ne p1, v0, :cond_33

    .line 414
    const-string v0, "get_fw_ver_ic"

    goto :goto_24

    .line 415
    :cond_33
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CONFIG_VERSION:I

    if-ne p1, v0, :cond_3a

    .line 416
    const-string v0, "get_config_ver"

    goto :goto_24

    .line 417
    :cond_3a
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__THRESHOLD:I

    if-ne p1, v0, :cond_41

    .line 418
    const-string v0, "get_threshold"

    goto :goto_24

    .line 419
    :cond_41
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_OFF:I

    if-ne p1, v0, :cond_48

    .line 420
    const-string v0, "module_off_master"

    goto :goto_24

    .line 421
    :cond_48
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_ON:I

    if-ne p1, v0, :cond_4f

    .line 422
    const-string v0, "module_on_master"

    goto :goto_24

    .line 423
    :cond_4f
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_OFF_SECOND_CHIP:I

    if-ne p1, v0, :cond_56

    .line 424
    const-string v0, "module_off_slave"

    goto :goto_24

    .line 425
    :cond_56
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_ON_SECOND_CHIP:I

    if-ne p1, v0, :cond_5d

    .line 426
    const-string v0, "module_on_slave"

    goto :goto_24

    .line 427
    :cond_5d
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__VENDOR_NAME:I

    if-ne p1, v0, :cond_64

    .line 428
    const-string v0, "get_chip_vendor"

    goto :goto_24

    .line 429
    :cond_64
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CHIP_NAME:I

    if-ne p1, v0, :cond_6b

    .line 430
    const-string v0, "get_chip_name"

    goto :goto_24

    .line 431
    :cond_6b
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__NUMBER_X_CHANNEL:I

    if-ne p1, v0, :cond_72

    .line 432
    const-string v0, "get_x_num"

    goto :goto_24

    .line 433
    :cond_72
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__NUMBER_Y_CHANNEL:I

    if-ne p1, v0, :cond_79

    .line 434
    const-string v0, "get_y_num"

    goto :goto_24

    .line 438
    :cond_79
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__REFERENCE__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_a4

    .line 439
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ATMEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 440
    const-string v0, "run_reference_read"

    goto :goto_24

    .line 441
    :cond_8a
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "MELFAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 442
    const-string v0, "run_reference_read"

    goto :goto_24

    .line 443
    :cond_97
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "SYNAPTICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 444
    const-string v0, "run_reference_read"

    goto :goto_24

    .line 445
    :cond_a4
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__REFERENCE__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_b6

    .line 446
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ZINITX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 447
    const-string v0, "run_reference_read"

    goto/16 :goto_24

    .line 448
    :cond_b6
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__REFERENCE__NODE:I

    if-ne p1, v0, :cond_f2

    .line 449
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ATMEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 450
    const-string v0, "get_reference"

    goto/16 :goto_24

    .line 451
    :cond_c8
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "MELFAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 452
    const-string v0, "get_reference"

    goto/16 :goto_24

    .line 453
    :cond_d6
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ZINITX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 454
    const-string v0, "get_reference"

    goto/16 :goto_24

    .line 455
    :cond_e4
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "SYNAPTICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 456
    const-string v0, "get_reference"

    goto/16 :goto_24

    .line 459
    :cond_f2
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_104

    .line 460
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "MELFAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 461
    const-string v0, "run_cm_delta_read"

    goto/16 :goto_24

    .line 462
    :cond_104
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_124

    .line 463
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ATMEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 464
    const-string v0, "run_delta_read"

    goto/16 :goto_24

    .line 465
    :cond_116
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ZINITX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 466
    const-string v0, "run_delta_read"

    goto/16 :goto_24

    .line 467
    :cond_124
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__NODE:I

    if-ne p1, v0, :cond_152

    .line 468
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ATMEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_136

    .line 469
    const-string v0, "get_delta"

    goto/16 :goto_24

    .line 470
    :cond_136
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "MELFAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 471
    const-string v0, "get_cm_delta"

    goto/16 :goto_24

    .line 472
    :cond_144
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ZINITX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 473
    const-string v0, "get_delta"

    goto/16 :goto_24

    .line 476
    :cond_152
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CM_ABS__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_164

    .line 477
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "MELFAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 478
    const-string v0, "run_cm_abs_read"

    goto/16 :goto_24

    .line 479
    :cond_164
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CM_ABS__NODE:I

    if-ne p1, v0, :cond_176

    .line 480
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "MELFAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 481
    const-string v0, "get_cm_abs"

    goto/16 :goto_24

    .line 484
    :cond_176
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INSPECTION__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_188

    .line 485
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "MELFAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 486
    const-string v0, "run_inspection_read"

    goto/16 :goto_24

    .line 487
    :cond_188
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INSPECTION__NODE:I

    if-ne p1, v0, :cond_19a

    .line 488
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "MELFAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 489
    const-string v0, "get_inspection"

    goto/16 :goto_24

    .line 492
    :cond_19a
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INTENSITY__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_1ac

    .line 493
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "MELFAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 494
    const-string v0, "run_intensity_read"

    goto/16 :goto_24

    .line 495
    :cond_1ac
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INTENSITY__NODE:I

    if-ne p1, v0, :cond_1be

    .line 496
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "MELFAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 497
    const-string v0, "get_intensity"

    goto/16 :goto_24

    .line 500
    :cond_1be
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__SCANTIME__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_1d0

    .line 501
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ZINITX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 502
    const-string v0, "run_scantime_read"

    goto/16 :goto_24

    .line 503
    :cond_1d0
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__SCANTIME__NODE:I

    if-ne p1, v0, :cond_1e2

    .line 504
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ZINITX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 505
    const-string v0, "get_scantime"

    goto/16 :goto_24

    .line 508
    :cond_1e2
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAWCAP__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_1f4

    .line 509
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "SYNAPTICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 510
    const-string v0, "run_rawcap_read"

    goto/16 :goto_24

    .line 511
    :cond_1f4
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAWCAP__NODE:I

    if-ne p1, v0, :cond_206

    .line 512
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "SYNAPTICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 513
    const-string v0, "get_rawcap"

    goto/16 :goto_24

    .line 516
    :cond_206
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RX_TO_RX__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_218

    .line 517
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "SYNAPTICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 518
    const-string v0, "run_rx_to_rx_read"

    goto/16 :goto_24

    .line 519
    :cond_218
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RX_TO_RX__NODE:I

    if-ne p1, v0, :cond_22a

    .line 520
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "SYNAPTICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 521
    const-string v0, "get_rx_to_rx"

    goto/16 :goto_24

    .line 524
    :cond_22a
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__TX_TO_TX__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_23c

    .line 525
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "SYNAPTICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 526
    const-string v0, "run_tx_to_tx_read"

    goto/16 :goto_24

    .line 527
    :cond_23c
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__TX_TO_TX__NODE:I

    if-ne p1, v0, :cond_24e

    .line 528
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "SYNAPTICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 529
    const-string v0, "get_tx_to_tx"

    goto/16 :goto_24

    .line 532
    :cond_24e
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__TX_TO_GND__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_260

    .line 533
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "SYNAPTICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 534
    const-string v0, "run_tx_to_gnd_read"

    goto/16 :goto_24

    .line 535
    :cond_260
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__TX_TO_GND__NODE:I

    if-ne p1, v0, :cond_272

    .line 536
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "SYNAPTICS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 537
    const-string v0, "get_tx_to_gnd"

    goto/16 :goto_24

    .line 540
    :cond_272
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAW_COUNT__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_284

    .line 541
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "CYPRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 542
    const-string v0, "run_raw_count_read"

    goto/16 :goto_24

    .line 543
    :cond_284
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAW_COUNT__NODE:I

    if-ne p1, v0, :cond_296

    .line 544
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "CYPRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 545
    const-string v0, "get_raw_count"

    goto/16 :goto_24

    .line 548
    :cond_296
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DIFFERENCE__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_2a8

    .line 549
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "CYPRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 550
    const-string v0, "run_difference_read"

    goto/16 :goto_24

    .line 551
    :cond_2a8
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DIFFERENCE__NODE:I

    if-ne p1, v0, :cond_2ba

    .line 552
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "CYPRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 553
    const-string v0, "get_difference"

    goto/16 :goto_24

    .line 556
    :cond_2ba
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__LOCAL_IDAC__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_2cc

    .line 557
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "CYPRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 558
    const-string v0, "run_local_idac_read"

    goto/16 :goto_24

    .line 559
    :cond_2cc
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__LOCAL_IDAC__NODE:I

    if-ne p1, v0, :cond_2de

    .line 560
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "CYPRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 561
    const-string v0, "get_local_idac"

    goto/16 :goto_24

    .line 564
    :cond_2de
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__GLOBAL_IDAC__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_2f0

    .line 565
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "CYPRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 566
    const-string v0, "run_global_idac_read"

    goto/16 :goto_24

    .line 567
    :cond_2f0
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__GLOBAL_IDAC__NODE:I

    if-ne p1, v0, :cond_302

    .line 568
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "CYPRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 569
    const-string v0, "get_global_idac"

    goto/16 :goto_24

    .line 572
    :cond_302
    const-string v0, "NA"

    goto/16 :goto_24
.end method

.method private setTSPCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "command"
    .parameter "subCommand"

    .prologue
    .line 330
    const-string v0, "setTSPCommand"

    .line 331
    .local v0, METHOD_NAME:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "setTSPCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "command => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "setTSPCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subCommand => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    if-eqz p2, :cond_4f

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 337
    :cond_4f
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPCurrentCommand:Ljava/lang/String;

    .line 338
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "setTSPCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "1. set Command => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPCurrentCommand:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 341
    .local v1, cmd:[B
    const-string v2, ""

    .line 344
    .local v2, status:Ljava/lang/String;
    const-string v5, "TSP_COMMAND_CMD"

    invoke-static {v5, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;[B)Z

    move-result v5

    if-eqz v5, :cond_17a

    .line 346
    const-string v5, "TSP_COMMAND_STATUS"

    invoke-static {v5}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    if-nez v2, :cond_8f

    .line 348
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "setTSPCommand"

    const-string v7, "status == null"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v5, "FAIL"

    .line 387
    :goto_8e
    return-object v5

    .line 350
    :cond_8f
    const-string v5, "FAIL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 351
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "setTSPCommand"

    const-string v7, "status == fail"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v5, "FAIL"

    goto :goto_8e

    .line 353
    :cond_a3
    const-string v5, "NOT_APPLICABLE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 354
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "setTSPCommand"

    const-string v7, "status == not applicable"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v5, "NOT_APPLICABLE"

    goto :goto_8e

    .line 356
    :cond_b7
    const-string v5, "OK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 357
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "setTSPCommand"

    const-string v7, "status == ok"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v5, "OK"

    goto :goto_8e

    .line 359
    :cond_cb
    const-string v5, "WAITING"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 360
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "setTSPCommand"

    const-string v7, "status == waiting"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "checkTSPStatus"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 364
    .local v3, timeStart:J
    :cond_e8
    const-string v5, "TSP_COMMAND_STATUS"

    invoke-static {v5}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    const-string v5, "OK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 366
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "checkTSPStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finish => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_114
    move-object v5, v2

    .line 377
    goto/16 :goto_8e

    .line 370
    :cond_117
    iget-wide v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_STATUS_WATING_TIME_OUT:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    cmp-long v5, v5, v7

    if-gez v5, :cond_e8

    .line 371
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "checkTSPStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finish => Time Out("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_STATUS_WATING_TIME_OUT:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v2, "FAIL"

    .line 374
    goto :goto_114

    .line 378
    .end local v3           #timeStart:J
    :cond_147
    const-string v5, "RUNNING"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15c

    .line 379
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "setTSPCommand"

    const-string v7, "status == other command is running"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v5, "FAIL"

    goto/16 :goto_8e

    .line 382
    :cond_15c
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "setTSPCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status == Unknown : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v5, "FAIL"

    goto/16 :goto_8e

    .line 386
    :cond_17a
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "setTSPCommand"

    const-string v7, "Fail - Command Write"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v5, "FAIL"

    goto/16 :goto_8e
.end method

.method private setTSPConnectionSpec()V
    .registers 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSPConnectionSpec"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "TSP_SELFTEST_MIN"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPConnectionSpec_Min:I

    .line 325
    const-string v0, "TSP_SELFTEST_MAX"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPConnectionSpec_Max:I

    .line 326
    return-void
.end method

.method private setTSPInfo()V
    .registers 5

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSPInfo"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "TSP_MANUFACTURE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    .line 310
    const-string v0, "PANEL_TYPE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPPanelType:Ljava/lang/String;

    .line 311
    const-string v0, "DEVICE_TYPE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPDeviceType:Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSPInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTSPVendorName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSPInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTSPPanelType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPPanelType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTSPInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTSPDeviceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPDeviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->setTSPConnectionSpec()V

    .line 317
    return-void
.end method


# virtual methods
.method public convertorTSPID(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1099
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_UPDATE:I

    if-ne p1, v0, :cond_7

    .line 1100
    const-string v0, "TSP_ID__FW_UPDATE"

    .line 1191
    :goto_6
    return-object v0

    .line 1101
    :cond_7
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_VERSION_BINARY:I

    if-ne p1, v0, :cond_e

    .line 1102
    const-string v0, "TSP_ID__FW_VERSION_BINARY"

    goto :goto_6

    .line 1103
    :cond_e
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_VERSION_IC:I

    if-ne p1, v0, :cond_15

    .line 1104
    const-string v0, "TSP_ID__FW_VERSION_IC"

    goto :goto_6

    .line 1105
    :cond_15
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CONFIG_VERSION:I

    if-ne p1, v0, :cond_1c

    .line 1106
    const-string v0, "TSP_ID__CONFIG_VERSION"

    goto :goto_6

    .line 1107
    :cond_1c
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__THRESHOLD:I

    if-ne p1, v0, :cond_23

    .line 1108
    const-string v0, "TSP_ID__THRESHOLD"

    goto :goto_6

    .line 1109
    :cond_23
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_OFF:I

    if-ne p1, v0, :cond_2a

    .line 1110
    const-string v0, "TSP_ID__POWER_OFF"

    goto :goto_6

    .line 1111
    :cond_2a
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_ON:I

    if-ne p1, v0, :cond_31

    .line 1112
    const-string v0, "TSP_ID__POWER_ON"

    goto :goto_6

    .line 1113
    :cond_31
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_OFF_SECOND_CHIP:I

    if-ne p1, v0, :cond_38

    .line 1114
    const-string v0, "TSP_ID__POWER_OFF_SECOND_CHIP"

    goto :goto_6

    .line 1115
    :cond_38
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__POWER_ON_SECOND_CHIP:I

    if-ne p1, v0, :cond_3f

    .line 1116
    const-string v0, "TSP_ID__POWER_ON_SECOND_CHIP"

    goto :goto_6

    .line 1117
    :cond_3f
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__VENDOR_NAME:I

    if-ne p1, v0, :cond_46

    .line 1118
    const-string v0, "TSP_ID__VENDOR_NAME"

    goto :goto_6

    .line 1119
    :cond_46
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CHIP_NAME:I

    if-ne p1, v0, :cond_4d

    .line 1120
    const-string v0, "TSP_ID__CHIP_NAME"

    goto :goto_6

    .line 1121
    :cond_4d
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__NUMBER_X_CHANNEL:I

    if-ne p1, v0, :cond_54

    .line 1122
    const-string v0, "TSP_ID__NUMBER_X_CHANNEL"

    goto :goto_6

    .line 1123
    :cond_54
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__NUMBER_Y_CHANNEL:I

    if-ne p1, v0, :cond_5b

    .line 1124
    const-string v0, "TSP_ID__NUMBER_Y_CHANNEL"

    goto :goto_6

    .line 1125
    :cond_5b
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RESULT_CONNECTION:I

    if-ne p1, v0, :cond_62

    .line 1126
    const-string v0, "TSP_ID__RESULT_CONNECTION"

    goto :goto_6

    .line 1129
    :cond_62
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__REFERENCE__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_69

    .line 1130
    const-string v0, "TSP_ID__REFERENCE__ALL_NODE__RETURN_MIN_MAX"

    goto :goto_6

    .line 1131
    :cond_69
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__REFERENCE__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_70

    .line 1132
    const-string v0, "TSP_ID__REFERENCE__ALL_NODE__RETURN_NONE"

    goto :goto_6

    .line 1133
    :cond_70
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__REFERENCE__NODE:I

    if-ne p1, v0, :cond_77

    .line 1134
    const-string v0, "TSP_ID__REFERENCE__NODE"

    goto :goto_6

    .line 1135
    :cond_77
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_7e

    .line 1136
    const-string v0, "TSP_ID__DELTA__ALL_NODE__RETURN_MIN_MAX"

    goto :goto_6

    .line 1137
    :cond_7e
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_85

    .line 1138
    const-string v0, "TSP_ID__DELTA__ALL_NODE__RETURN_NONE"

    goto :goto_6

    .line 1139
    :cond_85
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__NODE:I

    if-ne p1, v0, :cond_8d

    .line 1140
    const-string v0, "TSP_ID__DELTA__NODE"

    goto/16 :goto_6

    .line 1141
    :cond_8d
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CM_ABS__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_95

    .line 1142
    const-string v0, "TSP_ID__CM_ABS__ALL_NODE__RETURN_MIN_MAX"

    goto/16 :goto_6

    .line 1143
    :cond_95
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CM_ABS__NODE:I

    if-ne p1, v0, :cond_9d

    .line 1144
    const-string v0, "TSP_ID__CM_ABS__NODE"

    goto/16 :goto_6

    .line 1145
    :cond_9d
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INSPECTION__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_a5

    .line 1146
    const-string v0, "TSP_ID__INSPECTION__ALL_NODE__RETURN_MIN_MAX"

    goto/16 :goto_6

    .line 1147
    :cond_a5
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INSPECTION__NODE:I

    if-ne p1, v0, :cond_ad

    .line 1148
    const-string v0, "TSP_ID__INSPECTION__NODE"

    goto/16 :goto_6

    .line 1149
    :cond_ad
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INTENSITY__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_b5

    .line 1150
    const-string v0, "TSP_ID__INTENSITY__ALL_NODE__RETURN_MIN_MAX"

    goto/16 :goto_6

    .line 1151
    :cond_b5
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INTENSITY__NODE:I

    if-ne p1, v0, :cond_bd

    .line 1152
    const-string v0, "TSP_ID__INTENSITY__NODE"

    goto/16 :goto_6

    .line 1153
    :cond_bd
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__SCANTIME__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_c5

    .line 1154
    const-string v0, "TSP_ID__SCANTIME__ALL_NODE__RETURN_NONE"

    goto/16 :goto_6

    .line 1155
    :cond_c5
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__SCANTIME__NODE:I

    if-ne p1, v0, :cond_cd

    .line 1156
    const-string v0, "TSP_ID__SCANTIME__NODE"

    goto/16 :goto_6

    .line 1157
    :cond_cd
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAWCAP__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_d5

    .line 1158
    const-string v0, "TSP_ID__RAWCAP__ALL_NODE__RETURN_MIN_MAX"

    goto/16 :goto_6

    .line 1159
    :cond_d5
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAWCAP__NODE:I

    if-ne p1, v0, :cond_dd

    .line 1160
    const-string v0, "TSP_ID__RAWCAP__NODE"

    goto/16 :goto_6

    .line 1161
    :cond_dd
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RX_TO_RX__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_e5

    .line 1162
    const-string v0, "TSP_ID__RX_TO_RX__ALL_NODE__RETURN_NONE"

    goto/16 :goto_6

    .line 1163
    :cond_e5
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RX_TO_RX__NODE:I

    if-ne p1, v0, :cond_ed

    .line 1164
    const-string v0, "TSP_ID__RX_TO_RX__NODE"

    goto/16 :goto_6

    .line 1165
    :cond_ed
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__TX_TO_TX__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_f5

    .line 1166
    const-string v0, "TSP_ID__TX_TO_TX__ALL_NODE__RETURN_NONE"

    goto/16 :goto_6

    .line 1167
    :cond_f5
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__TX_TO_TX__NODE:I

    if-ne p1, v0, :cond_fd

    .line 1168
    const-string v0, "TSP_ID__TX_TO_TX__NODE"

    goto/16 :goto_6

    .line 1169
    :cond_fd
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__TX_TO_GND__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_105

    .line 1170
    const-string v0, "TSP_ID__TX_TO_GND__ALL_NODE__RETURN_NONE"

    goto/16 :goto_6

    .line 1171
    :cond_105
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__TX_TO_GND__NODE:I

    if-ne p1, v0, :cond_10d

    .line 1172
    const-string v0, "TSP_ID__TX_TO_GND__NODE"

    goto/16 :goto_6

    .line 1173
    :cond_10d
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAW_COUNT__ALL_NODE__RETURN_MIN_MAX:I

    if-ne p1, v0, :cond_115

    .line 1174
    const-string v0, "TSP_ID__RAW_COUNT__ALL_NODE__RETURN_MIN_MAX"

    goto/16 :goto_6

    .line 1175
    :cond_115
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAW_COUNT__NODE:I

    if-ne p1, v0, :cond_11d

    .line 1176
    const-string v0, "TSP_ID__RAW_COUNT__NODE"

    goto/16 :goto_6

    .line 1177
    :cond_11d
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DIFFERENCE__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_125

    .line 1178
    const-string v0, "TSP_ID__DIFFERENCE__ALL_NODE__RETURN_NONE"

    goto/16 :goto_6

    .line 1179
    :cond_125
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DIFFERENCE__NODE:I

    if-ne p1, v0, :cond_12d

    .line 1180
    const-string v0, "TSP_ID__DIFFERENCE__NODE"

    goto/16 :goto_6

    .line 1181
    :cond_12d
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__LOCAL_IDAC__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_135

    .line 1182
    const-string v0, "TSP_ID__LOCAL_IDAC__ALL_NODE__RETURN_NONE"

    goto/16 :goto_6

    .line 1183
    :cond_135
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__LOCAL_IDAC__NODE:I

    if-ne p1, v0, :cond_13d

    .line 1184
    const-string v0, "TSP_ID__LOCAL_IDAC__NODE"

    goto/16 :goto_6

    .line 1185
    :cond_13d
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__GLOBAL_IDAC__ALL_NODE__RETURN_NONE:I

    if-ne p1, v0, :cond_145

    .line 1186
    const-string v0, "TSP_ID__GLOBAL_IDAC__ALL_NODE__RETURN_NONE"

    goto/16 :goto_6

    .line 1187
    :cond_145
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__GLOBAL_IDAC__NODE:I

    if-ne p1, v0, :cond_14d

    .line 1188
    const-string v0, "TSP_ID__GLOBAL_IDAC__NODE"

    goto/16 :goto_6

    .line 1191
    :cond_14d
    const-string v0, "Unknown"

    goto/16 :goto_6
.end method

.method public getTSPChannelCountX()Ljava/lang/String;
    .registers 5

    .prologue
    .line 707
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPChannelCountX:Ljava/lang/String;

    if-nez v0, :cond_39

    .line 708
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__NUMBER_X_CHANNEL:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 709
    const-string v1, "NG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 718
    :cond_1a
    :goto_1a
    return-object v0

    .line 713
    :cond_1b
    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPChannelCountX:Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getTSPChannelCountX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set X : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPChannelCountX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_39
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getTSPChannelCountX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPChannelCountX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPChannelCountX:Ljava/lang/String;

    goto :goto_1a
.end method

.method public getTSPChannelCountY()Ljava/lang/String;
    .registers 5

    .prologue
    .line 722
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPChannelCountY:Ljava/lang/String;

    if-nez v0, :cond_39

    .line 723
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__NUMBER_Y_CHANNEL:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 724
    const-string v1, "NG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 733
    :cond_1a
    :goto_1a
    return-object v0

    .line 728
    :cond_1b
    iput-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPChannelCountY:Ljava/lang/String;

    .line 729
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getTSPChannelCountY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set Y : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPChannelCountY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_39
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getTSPChannelCountY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Y : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPChannelCountY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPChannelCountY:Ljava/lang/String;

    goto :goto_1a
.end method

.method public getTSPChipName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1080
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CHIP_NAME:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 1081
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getTSPChipName"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    return-object v0
.end method

.method public getTSPConnectionSpecMax()I
    .registers 2

    .prologue
    .line 703
    iget v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPConnectionSpec_Max:I

    return v0
.end method

.method public getTSPConnectionSpecMin()I
    .registers 2

    .prologue
    .line 699
    iget v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPConnectionSpec_Min:I

    return v0
.end method

.method public getTSPFirmwareVersionBinary()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1086
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_VERSION_BINARY:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 1087
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getTSPFirmwareVersionBinary"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    return-object v0
.end method

.method public getTSPFirmwareVersionIC()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1092
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__FW_VERSION_IC:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 1093
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getTSPFirmwareVersionIC"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    return-object v0
.end method

.method public getTSPResult(I)Ljava/lang/String;
    .registers 3
    .parameter "tspID"

    .prologue
    .line 681
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTSPResult(ILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "tspID"
    .parameter "subCommand"

    .prologue
    .line 652
    sget v4, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RESULT_CONNECTION:I

    if-ne p1, v4, :cond_29

    .line 653
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult_Connection()Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, reurnValue:Ljava/lang/String;
    :goto_8
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getTSPResult"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "returnValue : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return-object v2

    .line 655
    .end local v2           #reurnValue:Ljava/lang/String;
    :cond_29
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getTSPResult"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TSP ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/sec/factory/modules/ModuleTouchScreen;->convertorTSPID(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getTSPResult"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sub Command : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/ModuleTouchScreen;->mapping_IdNCommand(I)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, command:Ljava/lang/String;
    const-string v4, "NA"

    if-eq v0, v4, :cond_c0

    .line 660
    invoke-direct {p0, v0, p2}, Lcom/sec/factory/modules/ModuleTouchScreen;->setTSPCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, status:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPCommandResult()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getTSPResult"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getTSPResult"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v4, "OK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 666
    move-object v2, v1

    .restart local v2       #reurnValue:Ljava/lang/String;
    goto/16 :goto_8

    .line 667
    .end local v2           #reurnValue:Ljava/lang/String;
    :cond_b0
    const-string v4, "NOT_APPLICABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 668
    const-string v2, "NA"

    .restart local v2       #reurnValue:Ljava/lang/String;
    goto/16 :goto_8

    .line 670
    .end local v2           #reurnValue:Ljava/lang/String;
    :cond_bc
    const-string v2, "NG"

    .restart local v2       #reurnValue:Ljava/lang/String;
    goto/16 :goto_8

    .line 672
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #reurnValue:Ljava/lang/String;
    .end local v3           #status:Ljava/lang/String;
    :cond_c0
    const-string v2, "NA"

    .restart local v2       #reurnValue:Ljava/lang/String;
    goto/16 :goto_8
.end method

.method public getTSPResult(ILandroid/os/Handler;)V
    .registers 4
    .parameter "tspID"
    .parameter "notiHandler"

    .prologue
    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(ILjava/lang/String;Landroid/os/Handler;)V

    .line 647
    return-void
.end method

.method public getTSPResult(ILjava/lang/String;Landroid/os/Handler;)V
    .registers 6
    .parameter "tspID"
    .parameter "subCommand"
    .parameter "notiHandler"

    .prologue
    .line 640
    new-instance v0, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;-><init>(Lcom/sec/factory/modules/ModuleTouchScreen;Lcom/sec/factory/modules/ModuleTouchScreen$1;)V

    .line 641
    .local v0, tspThread:Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;
    #calls: Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->setHandler(Landroid/os/Handler;)V
    invoke-static {v0, p3}, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->access$500(Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;Landroid/os/Handler;)V

    .line 642
    invoke-virtual {v0, p1, p2}, Lcom/sec/factory/modules/ModuleTouchScreen$TSPThread;->run(ILjava/lang/String;)V

    .line 643
    return-void
.end method

.method public getTSPResult_Read(II)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 867
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getTSPResult_Read"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , lineNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    add-int/lit8 v1, p2, -0x1

    .line 873
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v2, "SYNAPTICS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 874
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getTSPResult_Read"

    const-string v3, "checkChannelX"

    invoke-static {v0, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-direct {p0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->checkChannelX(I)Ljava/lang/String;

    move-result-object v0

    .line 876
    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 1046
    :cond_49
    :goto_49
    return-object v0

    .line 879
    :cond_4a
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getTSPResult_Read"

    const-string v3, "checkChannelY"

    invoke-static {v0, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-direct {p0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->checkChannelY(I)Ljava/lang/String;

    move-result-object v0

    .line 881
    const-string v2, "OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 888
    :cond_5f
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v2, "ATMEL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 889
    if-ne p1, v4, :cond_a2

    .line 890
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__REFERENCE__ALL_NODE__RETURN_MIN_MAX:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 891
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getTSPResult_Read"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read1 == result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 896
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__REFERENCE__NODE:I

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPXaxisNodeAll(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 897
    :cond_a2
    if-ne p1, v5, :cond_355

    .line 898
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__ALL_NODE__RETURN_NONE:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 899
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getTSPResult_Read"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read2 == result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 904
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__NODE:I

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPXaxisNodeAll(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    .line 913
    :cond_dc
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v2, "CYPRESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 914
    if-ne p1, v4, :cond_120

    .line 915
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAW_COUNT__ALL_NODE__RETURN_MIN_MAX:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 916
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getTSPResult_Read"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read1 == result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 921
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAW_COUNT__NODE:I

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPXaxisNodeAll(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    .line 922
    :cond_120
    if-ne p1, v5, :cond_15a

    .line 923
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DIFFERENCE__ALL_NODE__RETURN_NONE:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 924
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getTSPResult_Read"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read2 == result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 929
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DIFFERENCE__NODE:I

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPXaxisNodeAll(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    .line 930
    :cond_15a
    if-ne p1, v6, :cond_194

    .line 931
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__LOCAL_IDAC__ALL_NODE__RETURN_NONE:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 932
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getTSPResult_Read"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read3 == result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 937
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__LOCAL_IDAC__NODE:I

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPXaxisNodeAll(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    .line 938
    :cond_194
    if-ne p1, v7, :cond_355

    .line 939
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__GLOBAL_IDAC__ALL_NODE__RETURN_NONE:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 940
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getTSPResult_Read"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read4 == result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 945
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__GLOBAL_IDAC__NODE:I

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPXaxisNodeAll(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    .line 953
    :cond_1ce
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v2, "MELFAS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_286

    .line 954
    if-ne p1, v4, :cond_212

    .line 955
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CM_ABS__ALL_NODE__RETURN_MIN_MAX:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 956
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getTSPResult_Read"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read1 == result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 961
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__CM_ABS__NODE:I

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPXaxisNodeAll(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    .line 962
    :cond_212
    if-ne p1, v5, :cond_24c

    .line 963
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__ALL_NODE__RETURN_MIN_MAX:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 964
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getTSPResult_Read"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read2 == result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 969
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__DELTA__NODE:I

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPXaxisNodeAll(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    .line 970
    :cond_24c
    if-ne p1, v6, :cond_355

    .line 971
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INTENSITY__ALL_NODE__RETURN_MIN_MAX:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 972
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getTSPResult_Read"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read3 == result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 977
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__INTENSITY__NODE:I

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPXaxisNodeAll(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    .line 985
    :cond_286
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v2, "SILAB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a2

    .line 986
    if-ne p1, v4, :cond_296

    .line 987
    const-string v0, "NG"

    goto/16 :goto_49

    .line 988
    :cond_296
    if-ne p1, v5, :cond_29c

    .line 989
    const-string v0, "NG"

    goto/16 :goto_49

    .line 990
    :cond_29c
    if-ne p1, v6, :cond_355

    .line 991
    const-string v0, "NG"

    goto/16 :goto_49

    .line 1001
    :cond_2a2
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v2, "SYNAPTICS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32c

    .line 1002
    if-ne p1, v4, :cond_2e6

    .line 1003
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAWCAP__ALL_NODE__RETURN_MIN_MAX:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 1004
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getTSPResult_Read"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read1 == result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 1009
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RAWCAP__NODE:I

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPYaxisNodeAll(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    .line 1010
    :cond_2e6
    if-ne p1, v5, :cond_320

    .line 1011
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RX_TO_RX__ALL_NODE__RETURN_NONE:I

    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPResult(I)Ljava/lang/String;

    move-result-object v0

    .line 1012
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getTSPResult_Read"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read2 == result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string v2, "NG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "NA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 1017
    sget v0, Lcom/sec/factory/modules/ModuleTouchScreen;->TSP_ID__RX_TO_RX__NODE:I

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/modules/ModuleTouchScreen;->getTSPYaxisNodeAll(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    .line 1018
    :cond_320
    if-ne p1, v6, :cond_326

    .line 1019
    const-string v0, "NG"

    goto/16 :goto_49

    .line 1020
    :cond_326
    if-ne p1, v7, :cond_355

    .line 1021
    const-string v0, "NG"

    goto/16 :goto_49

    .line 1029
    :cond_32c
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->mTSPVendorName:Ljava/lang/String;

    const-string v1, "ZINITX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_348

    .line 1030
    if-ne p1, v4, :cond_33c

    .line 1031
    const-string v0, "NG"

    goto/16 :goto_49

    .line 1032
    :cond_33c
    if-ne p1, v5, :cond_342

    .line 1033
    const-string v0, "NG"

    goto/16 :goto_49

    .line 1034
    :cond_342
    if-ne p1, v6, :cond_355

    .line 1035
    const-string v0, "NG"

    goto/16 :goto_49

    .line 1041
    :cond_348
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getTSPResult_Read"

    const-string v2, "Vendor Name : Unknown"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v0, "NG"

    goto/16 :goto_49

    .line 1045
    :cond_355
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleTouchScreen;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getTSPResult_Read"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read Number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (N/A)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v0, "NA"

    goto/16 :goto_49
.end method
