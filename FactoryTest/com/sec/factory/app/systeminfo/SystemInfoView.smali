.class public Lcom/sec/factory/app/systeminfo/SystemInfoView;
.super Landroid/view/View;
.source "SystemInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private DEFAULT_STRING:Ljava/lang/String;

.field private final ID_BAND_N_CHANNEL:I

.field private final ID_BATTERY_LEVEL:I

.field private final ID_CAMERA_FIRMWARE_VERSION:I

.field private final ID_CSC_VERSION:I

.field private ID_DUMMY:I

.field private final ID_HW_VERSION:I

.field private final ID_LTE_VERSION:I

.field private final ID_MEMORY_SIZE:I

.field private final ID_PDA_VERSION:I

.field private final ID_PHONE_VERSION:I

.field private final ID_RF_CAL_DATE:I

.field private final ID_SMD_N_PBA:I

.field private final ID_TSK_FIRMWARE_VERSION:I

.field private final ID_TSP_FIRMWARE_VERSION:I

.field private final ID_UART_N_USB:I

.field private final ID_UN:I

.field private NA_STRING:Ljava/lang/String;

.field private final NV_KEY_PBA:B

.field private final NV_KEY_SMD:B

.field private final NV_VALUE_P:B

.field private mBgColor:I

.field private mCommunicationMode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCoordinate_Land_x:I

.field private mCoordinate_Land_y:I

.field private mCoordinate_Port_x:I

.field private mCoordinate_Port_y:I

.field private mHeight:I

.field private mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

.field mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

.field mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

.field private mTextColor:I

.field private mTextSize:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 87
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v0, "SystemInfoView"

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->CLASS_NAME:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    .line 49
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_PDA_VERSION:I

    .line 50
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_PHONE_VERSION:I

    .line 51
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_LTE_VERSION:I

    .line 52
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CSC_VERSION:I

    .line 53
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_HW_VERSION:I

    .line 54
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_RF_CAL_DATE:I

    .line 55
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_SMD_N_PBA:I

    .line 56
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CAMERA_FIRMWARE_VERSION:I

    .line 57
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSP_FIRMWARE_VERSION:I

    .line 58
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSK_FIRMWARE_VERSION:I

    .line 59
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_BAND_N_CHANNEL:I

    .line 60
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_UART_N_USB:I

    .line 61
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_UN:I

    .line 62
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_BATTERY_LEVEL:I

    .line 63
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_MEMORY_SIZE:I

    .line 65
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    new-array v0, v0, [Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    .line 69
    iput v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mWidth:I

    iput v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mHeight:I

    .line 74
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NV_KEY_SMD:B

    .line 75
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NV_KEY_PBA:B

    .line 76
    const/16 v0, 0x50

    iput-byte v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NV_VALUE_P:B

    .line 78
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->DEFAULT_STRING:Ljava/lang/String;

    .line 79
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    .line 90
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    .line 91
    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const-string v0, "SystemInfoView"

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->CLASS_NAME:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    .line 49
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_PDA_VERSION:I

    .line 50
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_PHONE_VERSION:I

    .line 51
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_LTE_VERSION:I

    .line 52
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CSC_VERSION:I

    .line 53
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_HW_VERSION:I

    .line 54
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_RF_CAL_DATE:I

    .line 55
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_SMD_N_PBA:I

    .line 56
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CAMERA_FIRMWARE_VERSION:I

    .line 57
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSP_FIRMWARE_VERSION:I

    .line 58
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSK_FIRMWARE_VERSION:I

    .line 59
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_BAND_N_CHANNEL:I

    .line 60
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_UART_N_USB:I

    .line 61
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_UN:I

    .line 62
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_BATTERY_LEVEL:I

    .line 63
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_MEMORY_SIZE:I

    .line 65
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    new-array v0, v0, [Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    .line 69
    iput v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mWidth:I

    iput v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mHeight:I

    .line 74
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NV_KEY_SMD:B

    .line 75
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NV_KEY_PBA:B

    .line 76
    const/16 v0, 0x50

    iput-byte v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NV_VALUE_P:B

    .line 78
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->DEFAULT_STRING:Ljava/lang/String;

    .line 79
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->init()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-string v0, "SystemInfoView"

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->CLASS_NAME:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    .line 49
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_PDA_VERSION:I

    .line 50
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_PHONE_VERSION:I

    .line 51
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_LTE_VERSION:I

    .line 52
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CSC_VERSION:I

    .line 53
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_HW_VERSION:I

    .line 54
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_RF_CAL_DATE:I

    .line 55
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_SMD_N_PBA:I

    .line 56
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CAMERA_FIRMWARE_VERSION:I

    .line 57
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSP_FIRMWARE_VERSION:I

    .line 58
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSK_FIRMWARE_VERSION:I

    .line 59
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_BAND_N_CHANNEL:I

    .line 60
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_UART_N_USB:I

    .line 61
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_UN:I

    .line 62
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_BATTERY_LEVEL:I

    .line 63
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    iput v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_MEMORY_SIZE:I

    .line 65
    iget v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_DUMMY:I

    new-array v0, v0, [Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    .line 69
    iput v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mWidth:I

    iput v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mHeight:I

    .line 74
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NV_KEY_SMD:B

    .line 75
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NV_KEY_PBA:B

    .line 76
    const/16 v0, 0x50

    iput-byte v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NV_VALUE_P:B

    .line 78
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->DEFAULT_STRING:Ljava/lang/String;

    .line 79
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->init()V

    .line 102
    return-void
.end method

.method public static GetTextFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "filepath"

    .prologue
    .line 656
    const-string v4, ""

    .line 657
    .local v4, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 659
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1fa0

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_57
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_2a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_f} :catch_48

    .line 660
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    if-eqz v1, :cond_19

    .line 661
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_63
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_18} :catch_6c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_69
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_18} :catch_66

    move-result-object v4

    .line 670
    :cond_19
    if-eqz v1, :cond_6f

    .line 672
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_24

    move-object v0, v1

    .line 678
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_1f
    :goto_1f
    if-nez v4, :cond_23

    .line 679
    const-string v4, ""

    .line 681
    .end local v4           #result:Ljava/lang/String;
    :cond_23
    return-object v4

    .line 673
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v4       #result:Ljava/lang/String;
    :catch_24
    move-exception v2

    .line 674
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 675
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f

    .line 663
    .end local v2           #e:Ljava/io/IOException;
    :catch_2a
    move-exception v3

    .line 664
    .local v3, ex:Ljava/io/FileNotFoundException;
    :goto_2b
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_57

    .line 670
    if-eqz v0, :cond_1f

    .line 672
    :try_start_30
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_1f

    .line 673
    :catch_34
    move-exception v2

    .line 674
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 665
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_39
    move-exception v2

    .line 666
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3a
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_57

    .line 670
    if-eqz v0, :cond_1f

    .line 672
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_1f

    .line 673
    :catch_43
    move-exception v2

    .line 674
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 667
    .end local v2           #e:Ljava/io/IOException;
    :catch_48
    move-exception v2

    .line 668
    .local v2, e:Ljava/lang/NullPointerException;
    :goto_49
    :try_start_49
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_57

    .line 670
    if-eqz v0, :cond_1f

    .line 672
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_1f

    .line 673
    :catch_52
    move-exception v2

    .line 674
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 670
    .end local v2           #e:Ljava/io/IOException;
    :catchall_57
    move-exception v5

    :goto_58
    if-eqz v0, :cond_5d

    .line 672
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 675
    :cond_5d
    :goto_5d
    throw v5

    .line 673
    :catch_5e
    move-exception v2

    .line 674
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 670
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_63
    move-exception v5

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_58

    .line 667
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_66
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_49

    .line 665
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_69
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3a

    .line 663
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_6c
    move-exception v3

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2b

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_6f
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f
.end method

.method private ReadUniqueNumber()Ljava/lang/String;
    .registers 13

    .prologue
    const/16 v11, 0x1c

    const/16 v10, 0x14

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 685
    const-string v0, "SystemInfoView"

    const-string v1, "ReadUniqueNumber"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v0, "/sys/block/mmcblk0/device/cid"

    .line 688
    const-string v0, "/sys/block/mmcblk0/device/name"

    .line 690
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/block/mmcblk0/device/cid"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_104

    .line 694
    const-string v0, "/sys/block/mmcblk0/device/cid"

    invoke-static {v0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->GetTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 695
    const-string v0, "/sys/block/mmcblk0/device/name"

    invoke-static {v0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->GetTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 696
    const-string v3, ""

    .line 697
    const-string v0, ""

    .line 698
    const-string v0, ""

    .line 700
    const-string v4, "SystemInfoView"

    const-string v5, "ReadUniqueNumber"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", memory_name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 704
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 706
    const-string v5, "15"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 707
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 712
    :cond_79
    :goto_79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x1e

    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 725
    const-string v1, "SystemInfoView"

    const-string v2, "ReadUniqueNumber"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unique Number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :goto_eb
    return-object v0

    .line 708
    :cond_ec
    const-string v5, "02"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_fc

    const-string v5, "45"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 709
    :cond_fc
    const/4 v0, 0x3

    const/4 v4, 0x5

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_79

    .line 729
    :cond_104
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->DEFAULT_STRING:Ljava/lang/String;

    goto :goto_eb
.end method

.method private check_over_length(ILjava/lang/String;)Z
    .registers 5
    .parameter "draw_field"
    .parameter "data"

    .prologue
    .line 201
    iget v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextSize:I

    div-int v1, p1, v1

    mul-int/lit8 v0, v1, 0x2

    .line 203
    .local v0, max_string_length:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_e

    .line 204
    const/4 v1, 0x0

    .line 206
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d
.end method

.method private getBand()Ljava/lang/String;
    .registers 7

    .prologue
    .line 496
    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 499
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v1, ""

    .line 500
    .local v1, temp:Ljava/lang/String;
    const-string v2, "SystemInfoView"

    const-string v3, "getBand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_74

    .line 548
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->DEFAULT_STRING:Ljava/lang/String;

    .line 552
    :goto_33
    const-string v2, "none"

    iget-object v3, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCommunicationMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 553
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 554
    :cond_3f
    const-string v2, "SystemInfoView"

    const-string v3, "getBand"

    invoke-static {v2, v3, v1}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-object v1

    .line 503
    :pswitch_47
    const-string v1, "GPRS"

    .line 504
    goto :goto_33

    .line 506
    :pswitch_4a
    const-string v1, "EDGE"

    .line 507
    goto :goto_33

    .line 509
    :pswitch_4d
    const-string v1, "UMTS"

    .line 510
    goto :goto_33

    .line 512
    :pswitch_50
    const-string v1, "CDMA"

    .line 513
    goto :goto_33

    .line 515
    :pswitch_53
    const-string v1, "EVDO_0"

    .line 516
    goto :goto_33

    .line 518
    :pswitch_56
    const-string v1, "EVDOA_A"

    .line 519
    goto :goto_33

    .line 521
    :pswitch_59
    const-string v1, "1xRTT"

    .line 522
    goto :goto_33

    .line 524
    :pswitch_5c
    const-string v1, "HSDPA"

    .line 525
    goto :goto_33

    .line 527
    :pswitch_5f
    const-string v1, "HSUPA"

    .line 528
    goto :goto_33

    .line 530
    :pswitch_62
    const-string v1, "HSPA"

    .line 531
    goto :goto_33

    .line 533
    :pswitch_65
    const-string v1, "IDEN"

    .line 534
    goto :goto_33

    .line 536
    :pswitch_68
    const-string v1, "EVDO_B"

    .line 537
    goto :goto_33

    .line 539
    :pswitch_6b
    const-string v1, "LTE"

    .line 540
    goto :goto_33

    .line 542
    :pswitch_6e
    const-string v1, "EHRPD"

    .line 543
    goto :goto_33

    .line 545
    :pswitch_71
    const-string v1, "HSPAP"

    .line 546
    goto :goto_33

    .line 501
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_68
        :pswitch_6b
        :pswitch_6e
        :pswitch_71
    .end packed-switch
.end method

.method private getBatteryLevel()Ljava/lang/String;
    .registers 7

    .prologue
    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, temp:Ljava/lang/String;
    const-string v2, "DEVICE_TYPE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, typeDevice:Ljava/lang/String;
    const-string v2, "SystemInfoView"

    const-string v3, "getBatteryLevel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "typeDevice : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v2, "tablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 619
    const-string v2, "BATTERY_CAPACITY"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    if-nez v0, :cond_33

    .line 621
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 625
    :cond_33
    :goto_33
    const-string v2, "SystemInfoView"

    const-string v3, "getBatteryLevel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBatteryLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return-object v0

    .line 623
    :cond_4e
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    goto :goto_33
.end method

.method private getCSCVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 363
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->getCSCVer()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, temp:Ljava/lang/String;
    const-string v1, "SystemInfoView"

    const-string v2, "getCSCVersion"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-object v0
.end method

.method private getCameraFirmwareVersion()Ljava/lang/String;
    .registers 9

    .prologue
    .line 422
    const/4 v4, 0x0

    .line 423
    .local v4, temp:Ljava/lang/String;
    const-string v6, "SOC"

    const-string v7, "REAR_CAMERA_TYPE"

    invoke-static {v7}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 424
    const-string v6, "SUPPORT_FRONT_CAMERA"

    invoke-static {v6}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 430
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CAMERA : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", FrontCAM : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_38
    move-object v5, v4

    .line 453
    .end local v4           #temp:Ljava/lang/String;
    .local v5, temp:Ljava/lang/String;
    :goto_39
    return-object v5

    .line 432
    .end local v5           #temp:Ljava/lang/String;
    .restart local v4       #temp:Ljava/lang/String;
    :cond_3a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CAMERA : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_38

    .line 435
    :cond_50
    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->startCameraforFwRead()Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    move-result-object v0

    .line 437
    .local v0, camDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;
    const-string v6, "SUPPORT_FRONT_CAMERA"

    invoke-static {v6}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 438
    iget-object v6, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v6}, Lcom/sec/factory/modules/ModuleCommon;->readCameraRearFWver()Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, mRearFWVer:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v6}, Lcom/sec/factory/modules/ModuleCommon;->readCameraFrontFWver()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, mFrontFWVer:Ljava/lang/String;
    if-nez v3, :cond_6c

    .line 441
    iget-object v3, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 442
    :cond_6c
    if-nez v2, :cond_70

    .line 443
    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 444
    :cond_70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RearCAM : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", FrontCAM : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 451
    .end local v2           #mFrontFWVer:Ljava/lang/String;
    .end local v3           #mRearFWVer:Ljava/lang/String;
    :goto_8d
    invoke-direct {p0, v0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->stopCameraforFwRead(Lcom/sec/android/app/camerafirmware/CameraDeviceController;)V

    .line 452
    const-string v6, "SystemInfoView"

    const-string v7, "getCameraFirmwareVersion"

    invoke-static {v6, v7, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 453
    .end local v4           #temp:Ljava/lang/String;
    .restart local v5       #temp:Ljava/lang/String;
    goto :goto_39

    .line 446
    .end local v5           #temp:Ljava/lang/String;
    .restart local v4       #temp:Ljava/lang/String;
    :cond_99
    iget-object v6, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v6}, Lcom/sec/factory/modules/ModuleCommon;->readCameraRearFWver()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, mCamFWVer:Ljava/lang/String;
    if-nez v1, :cond_a3

    .line 448
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->DEFAULT_STRING:Ljava/lang/String;

    .line 449
    :cond_a3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CAMERA : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8d
.end method

.method private getChannel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 559
    const-string v1, "gsm.default.channel"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->DEFAULT_STRING:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, temp:Ljava/lang/String;
    const-string v1, "none"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCommunicationMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "gsm"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCommunicationMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 561
    :cond_1c
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 562
    :cond_1e
    const-string v1, "SystemInfoView"

    const-string v2, "getChannel"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-object v0
.end method

.method private getHWVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 369
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->getHWVer()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, temp:Ljava/lang/String;
    const-string v1, "SystemInfoView"

    const-string v2, "getHWVersion"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-object v0
.end method

.method private getLTEVersion()Ljava/lang/String;
    .registers 7

    .prologue
    .line 352
    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->getLTEVer()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, temp:Ljava/lang/String;
    const-string v2, "SUPPORT_LTE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 354
    .local v0, isLTE:Z
    if-nez v0, :cond_10

    .line 355
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 357
    :cond_10
    const-string v2, "SystemInfoView"

    const-string v3, "getLTEVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLTE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v2, "SystemInfoView"

    const-string v3, "getLTEVersion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTEVersion :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-object v1
.end method

.method private getMemorySize()Ljava/lang/String;
    .registers 6

    .prologue
    .line 630
    const-string v0, ""

    .line 634
    const-string v0, "/sys/block/mmcblk0/size"

    .line 636
    const-string v0, "/sys/block/mmcblk0/size"

    invoke-static {v0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->GetTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 640
    const v1, 0x1312d00

    if-ge v0, v1, :cond_30

    .line 641
    const-string v0, "Error"

    .line 650
    :goto_15
    const-string v1, "SystemInfoView"

    const-string v2, "DisplyVerInFactoryMde"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "memorySize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-object v0

    .line 642
    :cond_30
    const v1, 0x2625a00

    if-gt v0, v1, :cond_38

    .line 643
    const-string v0, "16GB"

    goto :goto_15

    .line 644
    :cond_38
    const v1, 0x42c1d80

    if-gt v0, v1, :cond_40

    .line 645
    const-string v0, "32GB"

    goto :goto_15

    .line 647
    :cond_40
    const-string v0, "64GB"

    goto :goto_15
.end method

.method private getPBA()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x4

    .line 401
    const/16 v2, 0x30

    .line 402
    .local v2, value:B
    const-string v1, ""

    .line 405
    .local v1, temp:Ljava/lang/String;
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v3

    if-nez v3, :cond_58

    .line 406
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    iget-object v3, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    .line 407
    .local v0, mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;
    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 408
    const-string v3, "SystemInfoView"

    const-string v4, "getPBA"

    const-string v5, "Request for TestNV!"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->requestTestNvViewToRil()V

    .line 410
    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->getNVResult(Ljava/lang/String;)B

    move-result v2

    .line 414
    .end local v0           #mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;
    :goto_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "04"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    const-string v3, "SystemInfoView"

    const-string v4, "getPBA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-object v1

    .line 412
    :cond_58
    invoke-static {v6}, Lcom/sec/factory/support/NVAccessor;->getNV(B)B

    move-result v2

    goto :goto_29
.end method

.method private getPDAVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 330
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->getPDAVer()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, temp:Ljava/lang/String;
    const-string v1, "SystemInfoView"

    const-string v2, "getPDAVersion"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-object v0
.end method

.method private getPhone2Version()Ljava/lang/String;
    .registers 4

    .prologue
    .line 344
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->getPhone2Ver()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, temp:Ljava/lang/String;
    const-string v1, "none"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCommunicationMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 346
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 347
    :cond_12
    const-string v1, "SystemInfoView"

    const-string v2, "getPhoneVersion"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-object v0
.end method

.method private getPhoneVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 336
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->getMainSWVer()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, temp:Ljava/lang/String;
    const-string v1, "none"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCommunicationMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 338
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 339
    :cond_12
    const-string v1, "SystemInfoView"

    const-string v2, "getPhoneVersion"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-object v0
.end method

.method private getRFCalDate()Ljava/lang/String;
    .registers 4

    .prologue
    .line 375
    const-string v1, "ril.rfcal_date"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->DEFAULT_STRING:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, temp:Ljava/lang/String;
    const-string v1, "none"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCommunicationMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 377
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 378
    :cond_14
    const-string v1, "SystemInfoView"

    const-string v2, "getRFCalDate"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-object v0
.end method

.method private getSMD()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 383
    const-string v1, ""

    .line 384
    .local v1, temp:Ljava/lang/String;
    const/16 v2, 0x30

    .line 386
    .local v2, value:B
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v3

    if-nez v3, :cond_58

    .line 387
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    iget-object v3, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    .line 388
    .local v0, mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;
    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 389
    const-string v3, "SystemInfoView"

    const-string v4, "getSMD"

    const-string v5, "Request for TestNV!"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->requestTestNvViewToRil()V

    .line 391
    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->getNVResult(Ljava/lang/String;)B

    move-result v2

    .line 395
    .end local v0           #mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;
    :goto_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    const-string v3, "SystemInfoView"

    const-string v4, "getSMD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-object v1

    .line 393
    :cond_58
    invoke-static {v6}, Lcom/sec/factory/support/NVAccessor;->getNV(B)B

    move-result v2

    goto :goto_29
.end method

.method private getSystemInfo()V
    .registers 5

    .prologue
    .line 259
    const-string v1, "SystemInfoView"

    const-string v2, "getSystemInfo"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_PDA_VERSION:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_31

    .line 263
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_PDA_VERSION:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PDA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getPDAVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 266
    :cond_31
    const-string v0, ""

    .line 267
    .local v0, phone2version:Ljava/lang/String;
    const-string v1, "SYS_INFO_PHONE2_VERSION"

    invoke-static {v1}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getPhone2Version()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :cond_52
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_PHONE_VERSION:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_7f

    .line 273
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_PHONE_VERSION:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getPhoneVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 276
    :cond_7f
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_LTE_VERSION:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_a8

    .line 277
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_LTE_VERSION:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getLTEVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 280
    :cond_a8
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CSC_VERSION:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_d1

    .line 281
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CSC_VERSION:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getCSCVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 284
    :cond_d1
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_HW_VERSION:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_fa

    .line 285
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_HW_VERSION:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "H/W : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getHWVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 288
    :cond_fa
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_RF_CAL_DATE:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_123

    .line 289
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_RF_CAL_DATE:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RF Cal Date : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getRFCalDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 292
    :cond_123
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_SMD_N_PBA:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_15a

    .line 293
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_SMD_N_PBA:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMD : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getSMD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PBA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getPBA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 296
    :cond_15a
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CAMERA_FIRMWARE_VERSION:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_170

    .line 297
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CAMERA_FIRMWARE_VERSION:I

    aget-object v1, v1, v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getCameraFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 300
    :cond_170
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSP_FIRMWARE_VERSION:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_199

    .line 301
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSP_FIRMWARE_VERSION:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getTSPFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 304
    :cond_199
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSK_FIRMWARE_VERSION:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_1c2

    .line 305
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSK_FIRMWARE_VERSION:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getTSKFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 308
    :cond_1c2
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_BAND_N_CHANNEL:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_1f9

    .line 309
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_BAND_N_CHANNEL:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Band : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getBand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 312
    :cond_1f9
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_UART_N_USB:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_230

    .line 313
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_UART_N_USB:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UART : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getUART()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", USB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getUSB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 316
    :cond_230
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_UN:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_259

    .line 317
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_UN:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getUN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 320
    :cond_259
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_BATTERY_LEVEL:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_282

    .line 321
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_BATTERY_LEVEL:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BATT_LEVEL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getBatteryLevel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 324
    :cond_282
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_MEMORY_SIZE:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v1, :cond_2ab

    .line 325
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_MEMORY_SIZE:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Memory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getMemorySize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 327
    :cond_2ab
    return-void
.end method

.method private getTSKFirmwareVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 467
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, temp:Ljava/lang/String;
    const-string v1, "SystemInfoView"

    const-string v2, "getTSKFirmwareVersion"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    if-nez v0, :cond_12

    .line 471
    const-string v0, "N/A"

    .line 472
    :cond_12
    return-object v0
.end method

.method private getTSPFirmwareVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 458
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, temp:Ljava/lang/String;
    const-string v1, "SystemInfoView"

    const-string v2, "getTSPFirmwareVersion"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    if-nez v0, :cond_12

    .line 462
    const-string v0, "N/A"

    .line 463
    :cond_12
    return-object v0
.end method

.method private getUART()Ljava/lang/String;
    .registers 4

    .prologue
    .line 567
    const-string v1, "gsm.default.siomode"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->DEFAULT_STRING:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, temp:Ljava/lang/String;
    const-string v1, "none"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCommunicationMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "gsm"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCommunicationMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 569
    :cond_1c
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 570
    :cond_1e
    const-string v1, "NEW_DM"

    const-string v2, "FACTORY_TEST_PROTOCOL"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 571
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 572
    const-string v0, "DM"

    .line 577
    :cond_36
    :goto_36
    const-string v1, "SystemInfoView"

    const-string v2, "getUART"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-object v0

    .line 573
    :cond_3e
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 574
    const-string v0, "HFK"

    goto :goto_36
.end method

.method private getUN()Ljava/lang/String;
    .registers 6

    .prologue
    .line 597
    const-string v1, ""

    .line 598
    .local v1, temp:Ljava/lang/String;
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v2

    if-nez v2, :cond_38

    .line 599
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    .line 600
    .local v0, mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;
    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 601
    const-string v2, "SystemInfoView"

    const-string v3, "getPBA"

    const-string v4, "Request for TestNV!"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->requestForUniqueNumber()V

    .line 603
    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->getUniqueNumber()Ljava/lang/String;

    move-result-object v1

    .line 607
    .end local v0           #mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;
    :goto_22
    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->DEFAULT_STRING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    if-nez v1, :cond_30

    .line 608
    :cond_2c
    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ReadUniqueNumber()Ljava/lang/String;

    move-result-object v1

    .line 610
    :cond_30
    const-string v2, "SystemInfoView"

    const-string v3, "getUN"

    invoke-static {v2, v3, v1}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-object v1

    .line 605
    :cond_38
    const-string v2, "ril.unique_number"

    iget-object v3, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->DEFAULT_STRING:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22
.end method

.method private getUSB()Ljava/lang/String;
    .registers 4

    .prologue
    .line 582
    const-string v1, "gsm.default.siomode"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->DEFAULT_STRING:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, temp:Ljava/lang/String;
    const-string v1, "none"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCommunicationMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "gsm"

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCommunicationMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 584
    :cond_1c
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->NA_STRING:Ljava/lang/String;

    .line 585
    :cond_1e
    const-string v1, "NEW_DM"

    const-string v2, "FACTORY_TEST_PROTOCOL"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 586
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 587
    const-string v0, "NULL"

    .line 592
    :cond_36
    :goto_36
    const-string v1, "SystemInfoView"

    const-string v2, "getUSB"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-object v0

    .line 588
    :cond_3e
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 589
    const-string v0, "DM"

    goto :goto_36
.end method

.method private init()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 210
    const-string v1, "SystemInfoView"

    const-string v2, "init"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_PDA_VERSION:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_PDA_VERSION"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 213
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_PHONE_VERSION:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_PHONE_VERSION"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 215
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_LTE_VERSION:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_LTE_VERSION"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 216
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CSC_VERSION:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_CSC_VERSION"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 217
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_HW_VERSION:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_HW_VERSION"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 218
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_RF_CAL_DATE:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_RF_CAL_DATA"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 219
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_SMD_N_PBA:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_SMD_PDA"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 220
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CAMERA_FIRMWARE_VERSION:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_CAMERA_FIRM_VERSION"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 222
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSP_FIRMWARE_VERSION:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_TSP_FIRM_VERSION"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 224
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSK_FIRMWARE_VERSION:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_TSK_FIRM_VERSION"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 226
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_BAND_N_CHANNEL:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_BAND_CHANNEL"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 228
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_UART_N_USB:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_SIO_MODE"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 229
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_UN:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_UNIQUE_NUMBER"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 230
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_BATTERY_LEVEL:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_BATTERY_LEVEL"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 232
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_MEMORY_SIZE:I

    new-instance v3, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    const-string v4, "SYS_INFO_MEMORY_SIZE"

    invoke-static {v4}, Lcom/sec/factory/support/Support$SystemInfo;->getVisibility(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V

    aput-object v3, v1, v2

    .line 234
    const-string v1, "TSP_TSK_ALL_IN_ONE_TYPE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 235
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    iget v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_TSK_FIRMWARE_VERSION:I

    aget-object v1, v1, v2

    iput-boolean v5, v1, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    .line 237
    :cond_11a
    invoke-static {}, Lcom/sec/factory/support/Support$SystemInfo;->getPosition()[Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, coordinate:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_188

    .line 239
    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCoordinate_Port_x:I

    .line 240
    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCoordinate_Port_y:I

    .line 241
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCoordinate_Land_x:I

    .line 242
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCoordinate_Land_y:I

    .line 243
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mWidth:I

    .line 244
    aget-object v1, v0, v7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mHeight:I

    .line 252
    :goto_16d
    invoke-static {}, Lcom/sec/factory/support/Support$SystemInfo;->getFontColor()I

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextColor:I

    .line 253
    invoke-static {}, Lcom/sec/factory/support/Support$SystemInfo;->getFontSize()I

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextSize:I

    .line 254
    invoke-static {}, Lcom/sec/factory/support/Support$SystemInfo;->getBGColor()I

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mBgColor:I

    .line 255
    const-string v1, "MODEL_COMMUNICATION_MODE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCommunicationMode:Ljava/lang/String;

    .line 256
    return-void

    .line 246
    :cond_188
    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCoordinate_Port_x:I

    .line 247
    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCoordinate_Port_y:I

    .line 248
    iput v7, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCoordinate_Land_x:I

    .line 249
    const/16 v1, 0xa5

    iput v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCoordinate_Land_y:I

    goto :goto_16d
.end method

.method private startCameraforFwRead()Lcom/sec/android/app/camerafirmware/CameraDeviceController;
    .registers 6

    .prologue
    .line 476
    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommon;->readCameraRearFWver()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, firmversion:Ljava/lang/String;
    if-eqz v0, :cond_1b

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 478
    const-string v2, "SystemInfoView"

    const-string v3, "getCameraFirmwareVersion"

    const-string v4, "F/W version written..Do not Open Camera"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v1, 0x0

    .line 485
    :goto_1a
    return-object v1

    .line 482
    :cond_1b
    new-instance v1, Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    invoke-direct {v1}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;-><init>()V

    .line 483
    .local v1, mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;
    invoke-virtual {v1}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->openCamera()Z

    goto :goto_1a
.end method

.method private stopCameraforFwRead(Lcom/sec/android/app/camerafirmware/CameraDeviceController;)V
    .registers 2
    .parameter "mCameraDevice"

    .prologue
    .line 489
    if-eqz p1, :cond_5

    .line 491
    invoke-virtual {p1}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->releaseCamera()V

    .line 493
    :cond_5
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .parameter "canvas"

    .prologue
    .line 105
    const-string v13, "SystemInfoView"

    const-string v14, "onDraw"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getSystemInfo()V

    .line 109
    new-instance v7, Landroid/graphics/Paint;

    const/16 v13, 0x21

    invoke-direct {v7, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 110
    .local v7, paint:Landroid/graphics/Paint;
    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextColor:I

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextSize:I

    int-to-float v13, v13

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 115
    new-instance v1, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v1, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 116
    .local v1, bgpaint:Landroid/graphics/Paint;
    sget-object v13, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mBgColor:I

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v4, v13, Landroid/content/res/Configuration;->orientation:I

    .line 121
    .local v4, currentOrientation:I
    const/4 v13, 0x1

    if-ne v4, v13, :cond_a5

    .line 122
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCoordinate_Port_x:I

    .line 123
    .local v11, x:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCoordinate_Port_y:I

    .line 130
    .local v12, y:I
    :goto_51
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mWidth:I

    if-gez v13, :cond_147

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mHeight:I

    if-gez v13, :cond_147

    .line 131
    add-int/lit8 v6, v11, -0xa

    .line 132
    .local v6, left:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextSize:I

    mul-int/lit8 v13, v13, 0x2

    sub-int v10, v12, v13

    .line 133
    .local v10, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->getWidth()I

    move-result v13

    sub-int v9, v13, v6

    .line 134
    .local v9, right:I
    move v2, v12

    .line 135
    .local v2, bottom:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_6f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    array-length v13, v13

    if-ge v5, v13, :cond_ae

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    aget-object v13, v13, v5

    iget-boolean v13, v13, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v13, :cond_a2

    .line 137
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CAMERA_FIRMWARE_VERSION:I

    if-ne v5, v13, :cond_9d

    .line 138
    sub-int v13, v9, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    aget-object v14, v14, v5

    iget-object v14, v14, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->check_over_length(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9d

    .line 139
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextSize:I

    add-int/2addr v2, v13

    .line 142
    :cond_9d
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextSize:I

    add-int/2addr v2, v13

    .line 135
    :cond_a2
    add-int/lit8 v5, v5, 0x1

    goto :goto_6f

    .line 125
    .end local v2           #bottom:I
    .end local v5           #i:I
    .end local v6           #left:I
    .end local v9           #right:I
    .end local v10           #top:I
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_a5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCoordinate_Land_x:I

    .line 126
    .restart local v11       #x:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mCoordinate_Land_y:I

    .restart local v12       #y:I
    goto :goto_51

    .line 146
    .restart local v2       #bottom:I
    .restart local v5       #i:I
    .restart local v6       #left:I
    .restart local v9       #right:I
    .restart local v10       #top:I
    :cond_ae
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v13, v6

    int-to-float v14, v10

    int-to-float v15, v9

    int-to-float v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v8, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 147
    .local v8, r:Landroid/graphics/RectF;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 149
    const/4 v5, 0x0

    :goto_c1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    array-length v13, v13

    if-ge v5, v13, :cond_19a

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    aget-object v13, v13, v5

    iget-boolean v13, v13, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v13, :cond_124

    .line 152
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->ID_CAMERA_FIRMWARE_VERSION:I

    if-ne v5, v13, :cond_137

    .line 154
    sub-int v13, v9, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    aget-object v14, v14, v5

    iget-object v14, v14, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/sec/factory/app/systeminfo/SystemInfoView;->check_over_length(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_127

    .line 156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    aget-object v13, v13, v5

    iget-object v13, v13, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, camera_fw:[Ljava/lang/String;
    const/4 v13, 0x1

    const/4 v14, 0x1

    aget-object v14, v3, v14

    const-string v15, " "

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v13

    .line 160
    const/4 v13, 0x0

    aget-object v13, v3, v13

    int-to-float v14, v11

    int-to-float v15, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 162
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextSize:I

    add-int/2addr v12, v13

    .line 164
    const/4 v13, 0x1

    aget-object v13, v3, v13

    int-to-float v14, v11

    int-to-float v15, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 174
    .end local v3           #camera_fw:[Ljava/lang/String;
    :goto_11f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextSize:I

    add-int/2addr v12, v13

    .line 149
    :cond_124
    add-int/lit8 v5, v5, 0x1

    goto :goto_c1

    .line 167
    :cond_127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    aget-object v13, v13, v5

    iget-object v13, v13, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    int-to-float v14, v11

    int-to-float v15, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_11f

    .line 171
    :cond_137
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    aget-object v13, v13, v5

    iget-object v13, v13, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    int-to-float v14, v11

    int-to-float v15, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_11f

    .line 178
    .end local v2           #bottom:I
    .end local v5           #i:I
    .end local v6           #left:I
    .end local v8           #r:Landroid/graphics/RectF;
    .end local v9           #right:I
    .end local v10           #top:I
    :cond_147
    move v6, v11

    .line 179
    .restart local v6       #left:I
    move v10, v12

    .line 180
    .restart local v10       #top:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mWidth:I

    add-int v9, v11, v13

    .line 181
    .restart local v9       #right:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mHeight:I

    add-int v2, v12, v13

    .line 183
    .restart local v2       #bottom:I
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v13, v6

    int-to-float v14, v10

    int-to-float v15, v9

    int-to-float v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v8, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 184
    .restart local v8       #r:Landroid/graphics/RectF;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 186
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextSize:I

    add-int/2addr v6, v13

    .line 187
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextSize:I

    add-int/2addr v10, v13

    .line 188
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    array-length v13, v13

    if-ge v5, v13, :cond_19a

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    aget-object v13, v13, v5

    iget-boolean v13, v13, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    if-eqz v13, :cond_197

    .line 190
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mTextSize:I

    add-int/2addr v10, v13

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;->mInfo:[Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;

    aget-object v13, v13, v5

    iget-object v13, v13, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    int-to-float v14, v6

    int-to-float v15, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 188
    :cond_197
    add-int/lit8 v5, v5, 0x1

    goto :goto_172

    .line 196
    :cond_19a
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 197
    return-void
.end method
