.class public Lcom/sec/factory/app/ui/UIOrientation;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIOrientation.java"


# static fields
.field public static typeDevice:Ljava/lang/String;


# instance fields
.field private ANGLE_BASE_X:I

.field private ANGLE_BASE_Y:I

.field private ANGLE_BASE_Z:I

.field private final DEBUG:Z

.field private final DISPLAY_IMAGES:I

.field private FLAG_TEST_EXIT:Z

.field private final GET_IMAGE_TYPE_FILEPATH:I

.field private final GET_IMAGE_TYPE_RAWDATA:I

.field private IS_SUPPORT_CP_ACCEL:Z

.field private final LANDSCAPE_MODE_LEFT:I

.field private final LANDSCAPE_MODE_RIGHT:I

.field private final LOAD_IMAGES:I

.field private final MAX_DEVIATION_FROM_GRAVITY:F

.field private final MAX_TILT:I

.field private final MESSAGE_0:Ljava/lang/String;

.field private final MESSAGE_1:Ljava/lang/String;

.field private final MESSAGE_2_1:Ljava/lang/String;

.field private final MESSAGE_2_2:Ljava/lang/String;

.field private final MESSAGE_Check_CP_Sensor:Ljava/lang/String;

.field private MESSAGE_TYPE_0:I

.field private MESSAGE_TYPE_1:I

.field private MESSAGE_TYPE_2:I

.field private MESSAGE_TYPE_3:I

.field private MESSAGE_TYPE_4:I

.field private final MIN_ABS_ACCELERATION:F

.field private POPUP_FLAG_TEST_XY:Z

.field private POPUP_FLAG_TEST_Z:Z

.field private final PORTRAIT_MODE:I

.field private final TESTSTATUS_STATUS_CP_PENDING_XY:I

.field private final TESTSTATUS_STATUS_CP_PENDING_Z:I

.field private final TESTSTATUS_STATUS_CP_TEST_XY:I

.field private final TESTSTATUS_STATUS_CP_TEST_Z:I

.field private final TESTSTATUS_STATUS_FINISH:I

.field private final TESTSTATUS_STATUS_PENDING_XY:I

.field private final TESTSTATUS_STATUS_PENDING_Z:I

.field private final TESTSTATUS_STATUS_TEST_XY:I

.field private final TESTSTATUS_STATUS_TEST_Z:I

.field private final WHAT_CP_START:I

.field private final WHAT_EXIT:I

.field private final WHAT_FIRST:I

.field private deviation:F

.field private first_popup:Z

.field private mAngleCurrXY:I

.field private mAngleCurrZ:I

.field private mAngleDeltaZ:I

.field private mButtonLedTime:I

.field private mCameraBitmap:[Landroid/graphics/Bitmap;

.field private mCoordinates:[Ljava/lang/String;

.field private mFilePathMainCam:Ljava/lang/String;

.field private mFilePathSubCam:Ljava/lang/String;

.field private mGetImageThread:Ljava/lang/Thread;

.field private mGetImageType:I

.field private mHandler:Landroid/os/Handler;

.field private mImageMainCam:[Landroid/widget/ImageView;

.field private mImageSubCam:[Landroid/widget/ImageView;

.field private mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

.field private mOrientationStatus:I

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupview:Landroid/view/View;

.field private mSensorValue:Ljava/lang/String;

.field private mStatus:I

.field private mTextCoordinates:Landroid/widget/TextView;

.field private mTextMessage1:Landroid/widget/TextView;

.field private mTextMessage2:Landroid/widget/TextView;

.field private mTextMessage3:Landroid/widget/TextView;

.field private mTilt:F

.field private magnitude:F

.field private mlinear:[Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 135
    const-string v0, "phone"

    sput-object v0, Lcom/sec/factory/app/ui/UIOrientation;->typeDevice:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    const-string v0, "UIOrientation"

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;)V

    .line 34
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->DEBUG:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;

    .line 39
    sget v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_MAX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->WHAT_FIRST:I

    .line 40
    sget v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_MAX:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->WHAT_EXIT:I

    .line 42
    sget v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_MAX:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->WHAT_CP_START:I

    .line 44
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->FLAG_TEST_EXIT:Z

    .line 45
    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->TESTSTATUS_STATUS_PENDING_Z:I

    .line 46
    iput v3, p0, Lcom/sec/factory/app/ui/UIOrientation;->TESTSTATUS_STATUS_TEST_Z:I

    .line 47
    iput v4, p0, Lcom/sec/factory/app/ui/UIOrientation;->TESTSTATUS_STATUS_PENDING_XY:I

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->TESTSTATUS_STATUS_TEST_XY:I

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->TESTSTATUS_STATUS_FINISH:I

    .line 52
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->TESTSTATUS_STATUS_CP_PENDING_Z:I

    .line 53
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->TESTSTATUS_STATUS_CP_TEST_Z:I

    .line 54
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->TESTSTATUS_STATUS_CP_PENDING_XY:I

    .line 55
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->TESTSTATUS_STATUS_CP_TEST_XY:I

    .line 61
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->IS_SUPPORT_CP_ACCEL:Z

    .line 65
    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_X:I

    .line 66
    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Y:I

    .line 67
    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Z:I

    .line 75
    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I

    .line 77
    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    .line 78
    iput v5, p0, Lcom/sec/factory/app/ui/UIOrientation;->magnitude:F

    .line 79
    iput v5, p0, Lcom/sec/factory/app/ui/UIOrientation;->deviation:F

    .line 80
    iput v5, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTilt:F

    .line 81
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MAX_DEVIATION_FROM_GRAVITY:F

    .line 82
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MIN_ABS_ACCELERATION:F

    .line 83
    const/16 v0, 0x41

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MAX_TILT:I

    .line 84
    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleDeltaZ:I

    .line 87
    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_0:I

    .line 88
    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_1:I

    .line 89
    iput v3, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_2:I

    .line 91
    iput v4, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_3:I

    .line 92
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_4:I

    .line 94
    const-string v0, "Loading images..."

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_0:Ljava/lang/String;

    .line 95
    const-string v0, "Tilt toward body\nMore than 30 degrees"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_1:Ljava/lang/String;

    .line 96
    const-string v0, "PASS!"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_2_1:Ljava/lang/String;

    .line 97
    const-string v0, "Turn left or right\nMore than 60 degrees"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_2_2:Ljava/lang/String;

    .line 99
    const-string v0, "Check CP Sensor"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_Check_CP_Sensor:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mGetImageThread:Ljava/lang/Thread;

    .line 115
    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->GET_IMAGE_TYPE_FILEPATH:I

    .line 116
    iput v3, p0, Lcom/sec/factory/app/ui/UIOrientation;->GET_IMAGE_TYPE_RAWDATA:I

    .line 117
    const/16 v0, 0x63

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->LOAD_IMAGES:I

    .line 118
    const/16 v0, 0x62

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->DISPLAY_IMAGES:I

    .line 119
    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mGetImageType:I

    .line 122
    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->PORTRAIT_MODE:I

    .line 123
    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->LANDSCAPE_MODE_RIGHT:I

    .line 124
    iput v3, p0, Lcom/sec/factory/app/ui/UIOrientation;->LANDSCAPE_MODE_LEFT:I

    .line 126
    new-array v0, v4, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;

    .line 128
    new-array v0, v4, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    .line 129
    new-array v0, v4, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    .line 130
    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mOrientationStatus:I

    .line 131
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mSensorValue:Ljava/lang/String;

    .line 136
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->first_popup:Z

    .line 255
    new-instance v0, Lcom/sec/factory/app/ui/UIOrientation$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIOrientation$1;-><init>(Lcom/sec/factory/app/ui/UIOrientation;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/factory/app/ui/UIOrientation;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_0:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/factory/app/ui/UIOrientation;)Lcom/sec/factory/modules/ModuleSensor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/factory/app/ui/UIOrientation;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mSensorValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/factory/app/ui/UIOrientation;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mSensorValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1184(Lcom/sec/factory/app/ui/UIOrientation;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mSensorValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mSensorValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Z:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_X:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Y:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/factory/app/ui/UIOrientation;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextCoordinates:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/factory/app/ui/UIOrientation;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_Z:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/factory/app/ui/UIOrientation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_Z:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/factory/app/ui/UIOrientation;[Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIOrientation;->startZTest30degree([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_2:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UIOrientation;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIOrientation;->popupShow(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/factory/app/ui/UIOrientation;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_XY:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/factory/app/ui/UIOrientation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_XY:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/factory/app/ui/UIOrientation;[Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIOrientation;->startXYTest60degree([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/factory/app/ui/UIOrientation;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->IS_SUPPORT_CP_ACCEL:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mOrientationStatus:I

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->WHAT_EXIT:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->WHAT_CP_START:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_4:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_1:I

    return v0
.end method

.method static synthetic access$2902(Lcom/sec/factory/app/ui/UIOrientation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIOrientation;->first_popup:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UIOrientation;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIOrientation;->displayImage()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/factory/app/ui/UIOrientation;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIOrientation;->setResumeOrientation()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_3:I

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/factory/app/ui/UIOrientation;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIOrientation;->getImage()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/factory/app/ui/UIOrientation;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mGetImageThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UIOrientation;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->FLAG_TEST_EXIT:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/factory/app/ui/UIOrientation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UIOrientation;->FLAG_TEST_EXIT:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UIOrientation;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIOrientation;->controlAccelerometerSensor(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UIOrientation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->WHAT_FIRST:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UIOrientation;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UIOrientation;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIOrientation;->isStatusCPSensorPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/factory/app/ui/UIOrientation;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;

    return-object p1
.end method

.method private controlAccelerometerSensor(I)V
    .registers 8
    .parameter "control"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 446
    if-ne p1, v3, :cond_28

    .line 447
    iget-boolean v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFlag_BackKey_Twice:Z

    if-eqz v1, :cond_b

    .line 481
    :cond_a
    :goto_a
    return-void

    .line 449
    :cond_b
    const-string v1, "IS_SIMPLE_TEST_ACC_SYSFS"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 450
    new-array v0, v3, [I

    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    aput v1, v0, v4

    .line 457
    .local v0, senserID:[I
    :goto_19
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([ILandroid/os/Handler;I)V

    goto :goto_a

    .line 454
    .end local v0           #senserID:[I
    :cond_21
    new-array v0, v3, [I

    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_N_ANGLE:I

    aput v1, v0, v4

    .restart local v0       #senserID:[I
    goto :goto_19

    .line 458
    .end local v0           #senserID:[I
    :cond_28
    if-nez p1, :cond_30

    .line 459
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    goto :goto_a

    .line 460
    :cond_30
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5e

    .line 461
    iget-boolean v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFlag_BackKey_Twice:Z

    if-nez v1, :cond_a

    .line 463
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-nez v1, :cond_4b

    .line 464
    new-instance v1, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIOrientation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 465
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 467
    :cond_4b
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v1, v3}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->requestCPsAccelerometer(Z)V

    .line 469
    new-array v0, v3, [I

    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__CP_ACCELEROMETER:I

    aput v1, v0, v4

    .line 472
    .restart local v0       #senserID:[I
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v5}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([ILandroid/os/Handler;I)V

    goto :goto_a

    .line 473
    .end local v0           #senserID:[I
    :cond_5e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    .line 474
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-nez v1, :cond_75

    .line 475
    new-instance v1, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIOrientation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 476
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 478
    :cond_75
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v1, v4}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->requestCPsAccelerometer(Z)V

    .line 479
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__CP_ACCELEROMETER:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff_Intent(I)V

    goto :goto_a
.end method

.method private displayImage()V
    .registers 8

    .prologue
    const v1, -0xff0100

    const v6, -0xffff01

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 576
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-eqz v0, :cond_ac

    .line 577
    sget-object v0, Lcom/sec/factory/app/ui/UIOrientation;->typeDevice:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 578
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 597
    :goto_49
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-eqz v0, :cond_e4

    .line 598
    sget-object v0, Lcom/sec/factory/app/ui/UIOrientation;->typeDevice:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 599
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v4

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v4

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v4

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 616
    :goto_89
    return-void

    .line 585
    :cond_8a
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 586
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 587
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_49

    .line 591
    :cond_ac
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 592
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 593
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_49

    .line 606
    :cond_c2
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 607
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 608
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_89

    .line 612
    :cond_e4
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 613
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 614
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_89
.end method

.method private getImage()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 537
    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mGetImageType:I

    if-ne v2, v6, :cond_ab

    .line 538
    const-string v2, "DEVICE_TYPE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/factory/app/ui/UIOrientation;->typeDevice:Ljava/lang/String;

    .line 539
    sget-object v2, Lcom/sec/factory/app/ui/UIOrientation;->typeDevice:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 540
    const-string v2, "phone"

    sput-object v2, Lcom/sec/factory/app/ui/UIOrientation;->typeDevice:Ljava/lang/String;

    .line 543
    :cond_16
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIOrientation;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mega_filepath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFilePathMainCam:Ljava/lang/String;

    .line 544
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFilePathMainCam:Ljava/lang/String;

    if-eqz v2, :cond_65

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFilePathMainCam:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 545
    const-string v2, "SIMPLE_TEST_MEGACAM_SCALE_VALUE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 546
    .local v8, sampleSize:I
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 547
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 548
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFilePathMainCam:Ljava/lang/String;

    invoke-static {v2, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 549
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 550
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x42b4

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 551
    iget-object v9, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v9, v1

    .line 557
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #sampleSize:I
    :cond_65
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIOrientation;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "vga_filepath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFilePathSubCam:Ljava/lang/String;

    .line 558
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFilePathSubCam:Ljava/lang/String;

    if-eqz v2, :cond_aa

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFilePathSubCam:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 559
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mFilePathSubCam:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 560
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 561
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x4387

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 562
    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 565
    iget-object v9, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCameraBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v9, v6

    .line 572
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_aa
    :goto_aa
    return-void

    .line 568
    :cond_ab
    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mGetImageType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_aa

    goto :goto_aa
.end method

.method private initialize()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 498
    const v0, 0x7f0900e9

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOrientation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextCoordinates:Landroid/widget/TextView;

    .line 499
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextCoordinates:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;

    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOrientation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v2

    .line 502
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;

    const v0, 0x7f0900ed

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOrientation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v3

    .line 503
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;

    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOrientation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    .line 505
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOrientation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 506
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    const v0, 0x7f0900ec

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOrientation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 507
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    const v0, 0x7f0900ef

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOrientation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 508
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    const v0, 0x7f0900ee

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOrientation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 509
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageMainCam:[Landroid/widget/ImageView;

    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOrientation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 510
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mImageSubCam:[Landroid/widget/ImageView;

    const v0, 0x7f0900f2

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOrientation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 512
    iput v3, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    .line 514
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleSensor;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleSensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    .line 517
    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModulePower;->getTouchLedTime()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mButtonLedTime:I

    .line 518
    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModulePower;->setTouchLedTime(I)V

    .line 520
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/factory/app/ui/UIOrientation$2;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/ui/UIOrientation$2;-><init>(Lcom/sec/factory/app/ui/UIOrientation;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mGetImageThread:Ljava/lang/Thread;

    .line 532
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mGetImageThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 533
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mGetImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 534
    return-void
.end method

.method private initializePopup()V
    .registers 3

    .prologue
    .line 739
    const v0, 0x7f030024

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopupview:Landroid/view/View;

    .line 740
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopupview:Landroid/view/View;

    const v1, 0x7f0900f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    .line 742
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopupview:Landroid/view/View;

    const v1, 0x7f0900f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage3:Landroid/widget/TextView;

    .line 743
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopupview:Landroid/view/View;

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage2:Landroid/widget/TextView;

    .line 744
    return-void
.end method

.method private isStatusCPSensorPending()Z
    .registers 4

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x0

    .line 484
    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    if-ge v1, v2, :cond_7

    .line 491
    :cond_6
    :goto_6
    return v0

    .line 487
    :cond_7
    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    if-lt v1, v2, :cond_6

    .line 488
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "isStatusCPSensorPending"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private popupShow(I)V
    .registers 9
    .parameter "type"

    .prologue
    const/high16 v6, 0x41a0

    const/16 v5, 0x8

    const v3, -0xffff01

    const/high16 v2, 0x4160

    const/4 v4, 0x0

    .line 747
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_13

    .line 748
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 750
    :cond_13
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_1:I

    if-ne p1, v0, :cond_53

    .line 751
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    const-string v1, "Tilt toward body\nMore than 30 degrees"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 753
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 754
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    :cond_2f
    :goto_2f
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopupview:Landroid/view/View;

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopup:Landroid/widget/PopupWindow;

    .line 787
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mOrientationStatus:I

    aget-object v1, v1, v2

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 788
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "popupShow"

    const-string v2, "done"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    return-void

    .line 755
    :cond_53
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_2:I

    if-ne p1, v0, :cond_7a

    .line 756
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    const-string v1, "PASS!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 758
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 759
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage2:Landroid/widget/TextView;

    const-string v1, "Turn left or right\nMore than 60 degrees"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2f

    .line 762
    :cond_7a
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_0:I

    if-ne p1, v0, :cond_95

    .line 763
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    const-string v1, "Loading images..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 766
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2f

    .line 770
    :cond_95
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_3:I

    if-ne p1, v0, :cond_ba

    .line 771
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage3:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage3:Landroid/widget/TextView;

    const-string v1, "Check CP Sensor"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage3:Landroid/widget/TextView;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 775
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage2:Landroid/widget/TextView;

    const-string v1, "Tilt toward body\nMore than 30 degrees"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2f

    .line 776
    :cond_ba
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_4:I

    if-ne p1, v0, :cond_2f

    .line 777
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    const-string v1, "PASS!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 779
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 780
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage3:Landroid/widget/TextView;

    const-string v1, "Check CP Sensor"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTextMessage2:Landroid/widget/TextView;

    const-string v1, "Turn left or right\nMore than 60 degrees"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2f
.end method

.method private setResumeOrientation()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 793
    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UIOrientation;->setRequestedOrientation(I)V

    .line 794
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 797
    return-void
.end method

.method private startXYTest60degree([Ljava/lang/String;)Z
    .registers 8
    .parameter "coordinates"

    .prologue
    const/high16 v3, 0x3fc0

    const/4 v1, 0x0

    .line 672
    const/4 v0, 0x0

    .line 674
    .local v0, isPass:Z
    const-string v2, "IS_SIMPLE_TEST_ACC_SYSFS"

    invoke-static {v2}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 694
    const/4 v2, 0x5

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x6

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerAngleXY(FF)I

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    .line 709
    :cond_2a
    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTilt:F

    .line 710
    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTilt:F

    const/high16 v3, 0x4282

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c4

    .line 711
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "startXYTest60degree"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return => mTilt :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTilt:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :goto_57
    return v1

    .line 697
    :cond_58
    const/4 v2, 0x7

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I

    .line 698
    const/16 v2, 0x8

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->magnitude:F

    .line 699
    const/16 v2, 0x9

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->deviation:F

    .line 700
    const/16 v2, 0xa

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    .line 702
    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->magnitude:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_9b

    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->deviation:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2a

    .line 703
    :cond_9b
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "startXYTest60degree"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return => magnitude :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/app/ui/UIOrientation;->magnitude:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviation :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/app/ui/UIOrientation;->deviation:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    .line 715
    :cond_c4
    sget-object v2, Lcom/sec/factory/app/ui/UIOrientation;->typeDevice:Ljava/lang/String;

    const-string v3, "tablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 716
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "startXYTest60degree"

    const-string v4, "tablet"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    add-int/lit8 v2, v2, -0x5a

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    .line 719
    :cond_dd
    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    if-gez v2, :cond_e7

    .line 720
    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    add-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    .line 723
    :cond_e7
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "startXYTest60degree"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAngleCurrXY :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    const/16 v3, 0x3c

    if-le v2, v3, :cond_116

    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_116

    .line 725
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mOrientationStatus:I

    .line 726
    const/4 v0, 0x1

    :goto_113
    move v1, v0

    .line 735
    goto/16 :goto_57

    .line 727
    :cond_116
    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    const/16 v3, 0x104

    if-le v2, v3, :cond_127

    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrXY:I

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_127

    .line 728
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mOrientationStatus:I

    .line 729
    const/4 v0, 0x1

    goto :goto_113

    .line 731
    :cond_127
    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mOrientationStatus:I

    .line 732
    const/4 v0, 0x0

    goto :goto_113
.end method

.method private startZTest30degree([Ljava/lang/String;)Z
    .registers 8
    .parameter "coordinates"

    .prologue
    const/4 v4, 0x7

    const/4 v1, 0x0

    const/high16 v3, 0x3fc0

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, isPass:Z
    const-string v2, "IS_SIMPLE_TEST_ACC_SYSFS"

    invoke-static {v2}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 626
    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I

    .line 645
    :cond_19
    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTilt:F

    .line 646
    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTilt:F

    const/high16 v3, 0x4282

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a4

    .line 647
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "startZTest30degree"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return => mTilt :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/app/ui/UIOrientation;->mTilt:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :goto_46
    return v1

    .line 634
    :cond_47
    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I

    .line 635
    const/16 v2, 0x8

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->magnitude:F

    .line 636
    const/16 v2, 0x9

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->deviation:F

    .line 638
    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->magnitude:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_7b

    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->deviation:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19

    .line 639
    :cond_7b
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "startZTest30degree"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return => magnitude :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/app/ui/UIOrientation;->magnitude:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviation :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/app/ui/UIOrientation;->deviation:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 651
    :cond_a4
    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Z:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I

    if-le v1, v2, :cond_ef

    .line 652
    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Z:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleDeltaZ:I

    .line 656
    :goto_b1
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "startZTest30degree"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAnglePrevZ :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Z:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAngleCurrZ :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDeltaAngleZ :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleDeltaZ:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleDeltaZ:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_ec

    .line 659
    const/4 v0, 0x1

    :cond_ec
    move v1, v0

    .line 662
    goto/16 :goto_46

    .line 654
    :cond_ef
    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Z:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mAngleDeltaZ:I

    goto :goto_b1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    const-string v2, "..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onAttachedToWindow()V

    .line 165
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIOrientation;->setContentView(I)V

    .line 148
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIOrientation;->initializePopup()V

    .line 149
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIOrientation;->initialize()V

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 206
    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->mButtonLedTime:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModulePower;->setTouchLedTime(I)V

    .line 207
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mGetImageThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mGetImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 208
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mGetImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 210
    :cond_1a
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 212
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x7

    const/4 v3, 0x6

    .line 215
    packed-switch p1, :pswitch_data_d8

    .line 252
    :cond_6
    :goto_6
    invoke-super {p0, p1, p2}, Lcom/sec/factory/app/ui/UIBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 217
    :pswitch_b
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;

    if-eqz v0, :cond_cd

    .line 219
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->first_popup:Z

    if-eqz v0, :cond_6

    .line 220
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 221
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    const-string v2, "TESTSTATUS_STATUS_PENDING_Z"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    .line 223
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Z:I

    .line 224
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_6

    .line 225
    :cond_40
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_73

    .line 226
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    const-string v2, "TESTSTATUS_STATUS_PENDING_XY"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    .line 228
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_X:I

    .line 229
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Y:I

    .line 230
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_6

    .line 233
    :cond_73
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    if-ne v0, v3, :cond_97

    .line 234
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    const-string v2, "TESTSTATUS_STATUS_CP_PENDING_Z"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iput v4, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    .line 236
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Z:I

    .line 237
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_6

    .line 238
    :cond_97
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 239
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    const-string v2, "TESTSTATUS_STATUS_CP_PENDING_XY"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    .line 241
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_X:I

    .line 242
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Y:I

    .line 243
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_6

    .line 248
    :cond_cd
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onKeyDown"

    const-string v2, "mCoordinates == null"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 215
    :pswitch_data_d8
    .packed-switch 0x19
        :pswitch_b
    .end packed-switch
.end method

.method public onPause()V
    .registers 6

    .prologue
    const/16 v4, 0x63

    const/16 v1, 0x62

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 169
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 171
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    :cond_16
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 174
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    :cond_23
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_UPDATAE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 177
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_UPDATAE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    :cond_34
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->WHAT_FIRST:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 180
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->WHAT_FIRST:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    :cond_45
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->WHAT_EXIT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 183
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->WHAT_EXIT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    :cond_56
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->WHAT_CP_START:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 186
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/factory/app/ui/UIOrientation;->WHAT_CP_START:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    :cond_67
    iput-boolean v2, p0, Lcom/sec/factory/app/ui/UIOrientation;->FLAG_TEST_EXIT:Z

    .line 190
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->IS_SUPPORT_CP_ACCEL:Z

    if-nez v0, :cond_7a

    .line 191
    invoke-direct {p0, v2}, Lcom/sec/factory/app/ui/UIOrientation;->controlAccelerometerSensor(I)V

    .line 199
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_79

    .line 200
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 201
    :cond_79
    return-void

    .line 192
    :cond_7a
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->IS_SUPPORT_CP_ACCEL:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_70

    .line 193
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    if-ge v0, v3, :cond_87

    .line 194
    invoke-direct {p0, v2}, Lcom/sec/factory/app/ui/UIOrientation;->controlAccelerometerSensor(I)V

    goto :goto_70

    .line 195
    :cond_87
    iget v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I

    if-lt v0, v3, :cond_70

    .line 196
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UIOrientation;->controlAccelerometerSensor(I)V

    goto :goto_70
.end method

.method public onResume()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 154
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_Z:Z

    .line 155
    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_XY:Z

    .line 157
    const-string v0, "SUPPORT_CP_ACCELEROMETER"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIOrientation;->IS_SUPPORT_CP_ACCEL:Z

    .line 159
    return-void
.end method
