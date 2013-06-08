.class public Lcom/sec/factory/modules/ModuleSensor;
.super Lcom/sec/factory/modules/ModuleObject;
.source "ModuleSensor.java"


# static fields
.field private static DUMMY:I

.field public static final ID_FILE____ACCELEROMETER:I

.field public static final ID_FILE____ACCELEROMETER_CAL:I

.field public static final ID_FILE____ACCELEROMETER_INTPIN:I

.field public static final ID_FILE____ACCELEROMETER_N_ANGLE:I

.field public static final ID_FILE____ACCELEROMETER_SELF:I

.field public static final ID_FILE____BAROMETER_EEPROM:I

.field public static final ID_FILE____COUNT:I

.field public static final ID_FILE____GYRO_POWER:I

.field public static final ID_FILE____GYRO_SELFTEST:I

.field public static final ID_FILE____GYRO_TEMPERATURE:I

.field public static final ID_FILE____LIGHT_ADC:I

.field public static final ID_FILE____LIGHT_RGBW:I

.field public static final ID_FILE____MAGNETIC_ADC:I

.field public static final ID_FILE____MAGNETIC_DAC:I

.field public static final ID_FILE____MAGNETIC_POWER_OFF:I

.field public static final ID_FILE____MAGNETIC_POWER_ON:I

.field public static final ID_FILE____MAGNETIC_SELF:I

.field public static final ID_FILE____MAGNETIC_STATUS:I

.field public static final ID_FILE____MAGNETIC_TEMPERATURE:I

.field public static final ID_FILE____PROXIMITY_ADC:I

.field public static final ID_FILE____PROXIMITY_AVG:I

.field public static final ID_FILE____PROXIMITY_OFFSET:I

.field public static final ID_INTENT__COUNT:I

.field public static final ID_INTENT__CP_ACCELEROMETER:I

.field public static final ID_INTENT__GRIP:I

.field public static final ID_MANAGER_ACCELEROMETER:I

.field public static final ID_MANAGER_ACCELEROMETER_N_ANGLE:I

.field public static final ID_MANAGER_ACCELEROMETER_SELF:I

.field public static final ID_MANAGER_BAROMETER:I

.field public static final ID_MANAGER_COUNT:I

.field public static final ID_MANAGER_GYRO:I

.field public static final ID_MANAGER_GYRO_EXPANSION:I

.field public static final ID_MANAGER_GYRO_POWER:I

.field public static final ID_MANAGER_GYRO_SELF:I

.field public static final ID_MANAGER_GYRO_TEMPERATURE:I

.field public static final ID_MANAGER_HUMIDITY:I

.field public static final ID_MANAGER_LIGHT:I

.field public static final ID_MANAGER_LIGHT_CCT:I

.field public static final ID_MANAGER_MAGNETIC:I

.field public static final ID_MANAGER_MAGNETIC_ADC:I

.field public static final ID_MANAGER_MAGNETIC_DAC:I

.field public static final ID_MANAGER_MAGNETIC_OFFSETH:I

.field public static final ID_MANAGER_MAGNETIC_POWER_OFF:I

.field public static final ID_MANAGER_MAGNETIC_POWER_ON:I

.field public static final ID_MANAGER_MAGNETIC_SELF:I

.field public static final ID_MANAGER_MAGNETIC_STATUS:I

.field public static final ID_MANAGER_MAGNETIC_TEMPERATURE:I

.field public static final ID_MANAGER_PROXIMITY:I

.field public static final ID_MANAGER_TEMPERATURE:I

.field public static final ID_SCOPE_MAX:I

.field public static final ID_SCOPE_MIN:I

.field private static mInstance:Lcom/sec/factory/modules/ModuleSensor;


# instance fields
.field private final DEBUG:Z

.field private final TARGET_FILE:I

.field private final TARGET_INTENT:I

.field private final TARGET_MANAGER:I

.field private mIDArray_File:[I

.field private mIDArray_Intent:[I

.field private mIDArray_Manager:[I

.field private mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

.field private mSensorRead:Lcom/sec/factory/modules/SensorRead;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    .line 29
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MIN:I

    .line 31
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER:I

    .line 32
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_N_ANGLE:I

    .line 33
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_SELF:I

    .line 34
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    .line 35
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO:I

    .line 36
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_POWER:I

    .line 37
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_EXPANSION:I

    .line 38
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_SELF:I

    .line 39
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_TEMPERATURE:I

    .line 40
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT:I

    .line 41
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT_CCT:I

    .line 42
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC:I

    .line 43
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_ON:I

    .line 44
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_STATUS:I

    .line 45
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_TEMPERATURE:I

    .line 46
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_DAC:I

    .line 47
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_ADC:I

    .line 48
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_SELF:I

    .line 49
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_OFFSETH:I

    .line 50
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_OFF:I

    .line 51
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    .line 52
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_TEMPERATURE:I

    .line 53
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_HUMIDITY:I

    .line 54
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_COUNT:I

    .line 56
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    .line 57
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_N_ANGLE:I

    .line 58
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_SELF:I

    .line 59
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_CAL:I

    .line 60
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_INTPIN:I

    .line 61
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____BAROMETER_EEPROM:I

    .line 62
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_POWER:I

    .line 63
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_TEMPERATURE:I

    .line 64
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_SELFTEST:I

    .line 65
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_ADC:I

    .line 66
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_RGBW:I

    .line 67
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_POWER_ON:I

    .line 68
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_POWER_OFF:I

    .line 69
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_STATUS:I

    .line 70
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_TEMPERATURE:I

    .line 71
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_DAC:I

    .line 72
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    .line 73
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_SELF:I

    .line 74
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_ADC:I

    .line 75
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_AVG:I

    .line 76
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_OFFSET:I

    .line 77
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_COUNT:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____COUNT:I

    .line 80
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__CP_ACCELEROMETER:I

    .line 82
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    .line 83
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_COUNT:I

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____COUNT:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__COUNT:I

    .line 84
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->DUMMY:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MAX:I

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/modules/ModuleSensor;->mInstance:Lcom/sec/factory/modules/ModuleSensor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    const-string v0, "ModuleSensor"

    invoke-direct {p0, p1, v0}, Lcom/sec/factory/modules/ModuleObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    iput-boolean v1, p0, Lcom/sec/factory/modules/ModuleSensor;->DEBUG:Z

    .line 23
    iput v1, p0, Lcom/sec/factory/modules/ModuleSensor;->TARGET_MANAGER:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/modules/ModuleSensor;->TARGET_FILE:I

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/modules/ModuleSensor;->TARGET_INTENT:I

    .line 86
    iput-object v2, p0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Manager:[I

    .line 87
    iput-object v2, p0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_File:[I

    .line 88
    iput-object v2, p0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Intent:[I

    .line 97
    iput-object v2, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    .line 98
    iput-object v2, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    .line 104
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/sec/factory/modules/SensorRead;

    invoke-direct {v0}, Lcom/sec/factory/modules/SensorRead;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    .line 106
    invoke-static {}, Lcom/sec/factory/modules/SensorCalculator;->initialize()V

    .line 107
    return-void
.end method

.method public static getString_ID(I)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 381
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER:I

    if-ne p0, v0, :cond_7

    .line 382
    const-string v0, "ID_MANAGER_ACCELEROMETER"

    .line 494
    :goto_6
    return-object v0

    .line 383
    :cond_7
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    if-ne p0, v0, :cond_e

    .line 384
    const-string v0, "ID_FILE____ACCELEROMETER"

    goto :goto_6

    .line 385
    :cond_e
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_N_ANGLE:I

    if-ne p0, v0, :cond_15

    .line 386
    const-string v0, "ID_MANAGER_ACCELEROMETER_N_ANGLE"

    goto :goto_6

    .line 387
    :cond_15
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_N_ANGLE:I

    if-ne p0, v0, :cond_1c

    .line 388
    const-string v0, "ID_FILE____ACCELEROMETER_N_ANGLE"

    goto :goto_6

    .line 389
    :cond_1c
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_SELF:I

    if-ne p0, v0, :cond_23

    .line 390
    const-string v0, "ID_MANAGER_ACCELEROMETER_SELF"

    goto :goto_6

    .line 391
    :cond_23
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_SELF:I

    if-ne p0, v0, :cond_2a

    .line 392
    const-string v0, "ID_FILE____ACCELEROMETER_SELF"

    goto :goto_6

    .line 393
    :cond_2a
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_CAL:I

    if-ne p0, v0, :cond_31

    .line 394
    const-string v0, "ID_FILE____ACCELEROMETER_CAL"

    goto :goto_6

    .line 395
    :cond_31
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_INTPIN:I

    if-ne p0, v0, :cond_38

    .line 396
    const-string v0, "ID_FILE____ACCELEROMETER_INTPIN"

    goto :goto_6

    .line 398
    :cond_38
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__CP_ACCELEROMETER:I

    if-ne p0, v0, :cond_3f

    .line 399
    const-string v0, "ID_INTENT__CP_ACCELEROMETER"

    goto :goto_6

    .line 403
    :cond_3f
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    if-ne p0, v0, :cond_46

    .line 404
    const-string v0, "ID_MANAGER_BAROMETER"

    goto :goto_6

    .line 405
    :cond_46
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____BAROMETER_EEPROM:I

    if-ne p0, v0, :cond_4d

    .line 406
    const-string v0, "ID_FILE____BAROMETER_EEPROM"

    goto :goto_6

    .line 409
    :cond_4d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    if-ne p0, v0, :cond_54

    .line 410
    const-string v0, "ID_INTENT__GRIP"

    goto :goto_6

    .line 413
    :cond_54
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO:I

    if-ne p0, v0, :cond_5b

    .line 414
    const-string v0, "ID_MANAGER_GYRO"

    goto :goto_6

    .line 415
    :cond_5b
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_POWER:I

    if-ne p0, v0, :cond_62

    .line 416
    const-string v0, "ID_MANAGER_GYRO_POWER"

    goto :goto_6

    .line 417
    :cond_62
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_POWER:I

    if-ne p0, v0, :cond_69

    .line 418
    const-string v0, "ID_FILE____GYRO_POWER"

    goto :goto_6

    .line 419
    :cond_69
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_EXPANSION:I

    if-ne p0, v0, :cond_70

    .line 420
    const-string v0, "ID_MANAGER_GYRO_EXPANSION"

    goto :goto_6

    .line 421
    :cond_70
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_TEMPERATURE:I

    if-ne p0, v0, :cond_77

    .line 422
    const-string v0, "ID_MANAGER_GYRO_TEMPERATURE"

    goto :goto_6

    .line 423
    :cond_77
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_TEMPERATURE:I

    if-ne p0, v0, :cond_7e

    .line 424
    const-string v0, "ID_FILE____GYRO_TEMPERATURE"

    goto :goto_6

    .line 425
    :cond_7e
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_SELF:I

    if-ne p0, v0, :cond_85

    .line 426
    const-string v0, "ID_MANAGER_GYRO_SELF"

    goto :goto_6

    .line 427
    :cond_85
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_SELFTEST:I

    if-ne p0, v0, :cond_8d

    .line 428
    const-string v0, "ID_FILE____GYRO_SELFTEST"

    goto/16 :goto_6

    .line 431
    :cond_8d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT:I

    if-ne p0, v0, :cond_95

    .line 432
    const-string v0, "ID_MANAGER_LIGHT"

    goto/16 :goto_6

    .line 433
    :cond_95
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT_CCT:I

    if-ne p0, v0, :cond_9d

    .line 434
    const-string v0, "ID_MANAGER_LIGHT_CCT"

    goto/16 :goto_6

    .line 435
    :cond_9d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_ADC:I

    if-ne p0, v0, :cond_a5

    .line 436
    const-string v0, "ID_FILE____LIGHT_ADC"

    goto/16 :goto_6

    .line 437
    :cond_a5
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_RGBW:I

    if-ne p0, v0, :cond_ad

    .line 438
    const-string v0, "ID_FILE____LIGHT_RGBW"

    goto/16 :goto_6

    .line 441
    :cond_ad
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC:I

    if-ne p0, v0, :cond_b5

    .line 442
    const-string v0, "ID_MANAGER_MAGNETIC"

    goto/16 :goto_6

    .line 443
    :cond_b5
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_ON:I

    if-ne p0, v0, :cond_bd

    .line 444
    const-string v0, "ID_MANAGER_MAGNETIC_POWER_ON"

    goto/16 :goto_6

    .line 445
    :cond_bd
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_POWER_ON:I

    if-ne p0, v0, :cond_c5

    .line 446
    const-string v0, "ID_FILE____MAGNETIC_POWER_ON"

    goto/16 :goto_6

    .line 447
    :cond_c5
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_OFF:I

    if-ne p0, v0, :cond_cd

    .line 448
    const-string v0, "ID_MANAGER_MAGNETIC_POWER_OFF"

    goto/16 :goto_6

    .line 449
    :cond_cd
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_POWER_OFF:I

    if-ne p0, v0, :cond_d5

    .line 450
    const-string v0, "ID_FILE____MAGNETIC_POWER_OFF"

    goto/16 :goto_6

    .line 451
    :cond_d5
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_STATUS:I

    if-ne p0, v0, :cond_dd

    .line 452
    const-string v0, "ID_MANAGER_MAGNETIC_STATUS"

    goto/16 :goto_6

    .line 453
    :cond_dd
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_STATUS:I

    if-ne p0, v0, :cond_e5

    .line 454
    const-string v0, "ID_FILE____MAGNETIC_STATUS"

    goto/16 :goto_6

    .line 455
    :cond_e5
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_TEMPERATURE:I

    if-ne p0, v0, :cond_ed

    .line 456
    const-string v0, "ID_MANAGER_MAGNETIC_TEMPERATURE"

    goto/16 :goto_6

    .line 457
    :cond_ed
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_TEMPERATURE:I

    if-ne p0, v0, :cond_f5

    .line 458
    const-string v0, "ID_FILE____MAGNETIC_TEMPERATURE"

    goto/16 :goto_6

    .line 459
    :cond_f5
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_DAC:I

    if-ne p0, v0, :cond_fd

    .line 460
    const-string v0, "ID_MANAGER_MAGNETIC_DAC"

    goto/16 :goto_6

    .line 461
    :cond_fd
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_DAC:I

    if-ne p0, v0, :cond_105

    .line 462
    const-string v0, "ID_FILE____MAGNETIC_DAC"

    goto/16 :goto_6

    .line 463
    :cond_105
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_ADC:I

    if-ne p0, v0, :cond_10d

    .line 464
    const-string v0, "ID_MANAGER_MAGNETIC_ADC"

    goto/16 :goto_6

    .line 465
    :cond_10d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    if-ne p0, v0, :cond_115

    .line 466
    const-string v0, "ID_FILE____MAGNETIC_ADC"

    goto/16 :goto_6

    .line 467
    :cond_115
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_SELF:I

    if-ne p0, v0, :cond_11d

    .line 468
    const-string v0, "ID_MANAGER_MAGNETIC_SELF"

    goto/16 :goto_6

    .line 469
    :cond_11d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_SELF:I

    if-ne p0, v0, :cond_125

    .line 470
    const-string v0, "ID_FILE____MAGNETIC_SELF"

    goto/16 :goto_6

    .line 471
    :cond_125
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_OFFSETH:I

    if-ne p0, v0, :cond_12d

    .line 472
    const-string v0, "ID_MANAGER_MAGNETIC_OFFSETH"

    goto/16 :goto_6

    .line 475
    :cond_12d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    if-ne p0, v0, :cond_135

    .line 476
    const-string v0, "ID_MANAGER_PROXIMITY"

    goto/16 :goto_6

    .line 477
    :cond_135
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_ADC:I

    if-ne p0, v0, :cond_13d

    .line 478
    const-string v0, "ID_FILE____PROXIMITY_ADC"

    goto/16 :goto_6

    .line 479
    :cond_13d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_AVG:I

    if-ne p0, v0, :cond_145

    .line 480
    const-string v0, "ID_FILE____PROXIMITY_AVG"

    goto/16 :goto_6

    .line 481
    :cond_145
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_OFFSET:I

    if-ne p0, v0, :cond_14d

    .line 482
    const-string v0, "ID_FILE____PROXIMITY_OFFSET"

    goto/16 :goto_6

    .line 485
    :cond_14d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_TEMPERATURE:I

    if-ne p0, v0, :cond_155

    .line 486
    const-string v0, "ID_MANAGER_TEMPERATURE"

    goto/16 :goto_6

    .line 489
    :cond_155
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_HUMIDITY:I

    if-ne p0, v0, :cond_15d

    .line 490
    const-string v0, "ID_MANAGER_HUMIDITY"

    goto/16 :goto_6

    .line 494
    :cond_15d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown => id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6
.end method

.method public static instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleSensor;
    .registers 2
    .parameter "context"

    .prologue
    .line 110
    sget-object v0, Lcom/sec/factory/modules/ModuleSensor;->mInstance:Lcom/sec/factory/modules/ModuleSensor;

    if-nez v0, :cond_b

    .line 111
    new-instance v0, Lcom/sec/factory/modules/ModuleSensor;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleSensor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/factory/modules/ModuleSensor;->mInstance:Lcom/sec/factory/modules/ModuleSensor;

    .line 113
    :cond_b
    sget-object v0, Lcom/sec/factory/modules/ModuleSensor;->mInstance:Lcom/sec/factory/modules/ModuleSensor;

    return-object v0
.end method

.method private logSensorName()V
    .registers 6

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML - ACCELEROMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_ACCELEROMETER:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML - BAROMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_BAROMETER:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML - GEOMAGNETIC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GEOMAGNETIC:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML - GRIP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GRIP:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML - GYRO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GYRO:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML - HUMIDITY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_HUMIDITY:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML - LIGHT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_LIGHT:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML - PROXIMITY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_PROXIMITY:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML - TEMPERATURE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_TEMPERATURE:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FILE - ACCELEROMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_ACCELEROMETER:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FILE - BAROMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_BAROMETER:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FILE - GEOMAGNETIC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GEOMAGNETIC:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FILE - GRIP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GRIP:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FILE - GYRO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GYRO:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FILE - HUMIDITY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_HUMIDITY:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FILE - LIGHT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_LIGHT:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FILE - PROXIMITY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_PROXIMITY:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModuleSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FILE - TEMPERATURE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_TEMPERATURE:I

    sget v4, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    invoke-static {v3, v4}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method


# virtual methods
.method public SensorOff()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    if-eqz v0, :cond_c

    .line 212
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorNotification;->interrup()V

    .line 213
    iput-object v1, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    .line 216
    :cond_c
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorRead;->SensorOff()V

    .line 218
    iput-object v1, p0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Manager:[I

    .line 219
    iput-object v1, p0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_File:[I

    .line 220
    iput-object v1, p0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Intent:[I

    .line 221
    return-void
.end method

.method public SensorOff_Intent(I)V
    .registers 3
    .parameter "sensorID"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, p1}, Lcom/sec/factory/modules/SensorRead;->SensorOff_Intent(I)V

    .line 227
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorNotification;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 228
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorNotification;->interrup()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    .line 231
    :cond_19
    return-void
.end method

.method public SensorOn([I)V
    .registers 19
    .parameter "sensorID"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/sec/factory/modules/ModuleSensor;->logSensorName()V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 124
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_COUNT:I

    new-array v10, v1, [I

    .line 125
    .local v10, id_Manager:[I
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____COUNT:I

    new-array v8, v1, [I

    .line 126
    .local v8, id_File:[I
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__COUNT:I

    new-array v9, v1, [I

    .line 128
    .local v9, id_Intent:[I
    const/4 v15, 0x0

    .line 129
    .local v15, index_Manager:I
    const/4 v11, 0x0

    .line 130
    .local v11, index_File:I
    const/4 v13, 0x0

    .line 132
    .local v13, index_Intent:I
    if-eqz p1, :cond_1ea

    .line 133
    const/4 v7, 0x0

    .local v7, i:I
    :goto_18
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v7, v1, :cond_87

    .line 134
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MIN:I

    aget v2, p1, v7

    if-gt v1, v2, :cond_34

    aget v1, p1, v7

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_COUNT:I

    if-ge v1, v2, :cond_34

    .line 135
    add-int/lit8 v16, v15, 0x1

    .end local v15           #index_Manager:I
    .local v16, index_Manager:I
    aget v1, p1, v7

    aput v1, v10, v15

    move/from16 v15, v16

    .line 133
    .end local v16           #index_Manager:I
    .restart local v15       #index_Manager:I
    :goto_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 136
    :cond_34
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_COUNT:I

    aget v2, p1, v7

    if-gt v1, v2, :cond_4b

    aget v1, p1, v7

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_COUNT:I

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____COUNT:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_4b

    .line 138
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index_File:I
    .local v12, index_File:I
    aget v1, p1, v7

    aput v1, v8, v11

    move v11, v12

    .end local v12           #index_File:I
    .restart local v11       #index_File:I
    goto :goto_31

    .line 139
    :cond_4b
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_COUNT:I

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____COUNT:I

    add-int/2addr v1, v2

    aget v2, p1, v7

    if-gt v1, v2, :cond_62

    aget v1, p1, v7

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MAX:I

    if-gt v1, v2, :cond_62

    .line 141
    add-int/lit8 v14, v13, 0x1

    .end local v13           #index_Intent:I
    .local v14, index_Intent:I
    aget v1, p1, v7

    aput v1, v9, v13

    move v13, v14

    .end local v14           #index_Intent:I
    .restart local v13       #index_Intent:I
    goto :goto_31

    .line 143
    :cond_62
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SensorOn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID : Unknown ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 147
    :cond_87
    if-lez v15, :cond_ee

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SensorOn"

    const-string v3, "Manager"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-array v1, v15, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Manager:[I

    .line 150
    const/4 v7, 0x0

    :goto_9b
    if-ge v7, v15, :cond_a8

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Manager:[I

    aget v2, v10, v7

    aput v2, v1, v7

    .line 150
    add-int/lit8 v7, v7, 0x1

    goto :goto_9b

    .line 152
    :cond_a8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SensorOn"

    const-string v3, " Manager ID"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v7, 0x0

    :goto_b4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Manager:[I

    array-length v1, v1

    if-ge v7, v1, :cond_f3

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SensorOn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Manager:[I

    aget v4, v4, v7

    invoke-static {v4}, Lcom/sec/factory/modules/ModuleSensor;->getString_ID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    add-int/lit8 v7, v7, 0x1

    goto :goto_b4

    .line 157
    :cond_ee
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Manager:[I

    .line 160
    :cond_f3
    if-lez v11, :cond_15a

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SensorOn"

    const-string v3, "File"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-array v1, v11, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_File:[I

    .line 163
    const/4 v7, 0x0

    :goto_107
    if-ge v7, v11, :cond_114

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_File:[I

    aget v2, v8, v7

    aput v2, v1, v7

    .line 163
    add-int/lit8 v7, v7, 0x1

    goto :goto_107

    .line 165
    :cond_114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SensorOn"

    const-string v3, " File ID"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v7, 0x0

    :goto_120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_File:[I

    array-length v1, v1

    if-ge v7, v1, :cond_15f

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SensorOn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_File:[I

    aget v4, v4, v7

    invoke-static {v4}, Lcom/sec/factory/modules/ModuleSensor;->getString_ID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    add-int/lit8 v7, v7, 0x1

    goto :goto_120

    .line 170
    :cond_15a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_File:[I

    .line 173
    :cond_15f
    if-lez v13, :cond_1c6

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SensorOn"

    const-string v3, "Intent"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-array v1, v13, [I

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Intent:[I

    .line 176
    const/4 v7, 0x0

    :goto_173
    if-ge v7, v13, :cond_180

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Intent:[I

    aget v2, v9, v7

    aput v2, v1, v7

    .line 176
    add-int/lit8 v7, v7, 0x1

    goto :goto_173

    .line 178
    :cond_180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SensorOn"

    const-string v3, " Intent ID"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v7, 0x0

    :goto_18c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Intent:[I

    array-length v1, v1

    if-ge v7, v1, :cond_1cb

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "SensorOn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Intent:[I

    aget v4, v4, v7

    invoke-static {v4}, Lcom/sec/factory/modules/ModuleSensor;->getString_ID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    add-int/lit8 v7, v7, 0x1

    goto :goto_18c

    .line 183
    :cond_1c6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Intent:[I

    .line 185
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    sget-object v2, Lcom/sec/factory/modules/ModuleSensor;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/factory/modules/ModuleSensor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Manager:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_File:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Intent:[I

    invoke-virtual/range {v1 .. v6}, Lcom/sec/factory/modules/SensorRead;->SensorOn(Landroid/content/Context;Landroid/hardware/SensorManager;[I[I[I)V

    .line 189
    .end local v7           #i:I
    :cond_1ea
    return-void
.end method

.method public SensorOn([ILandroid/os/Handler;I)V
    .registers 8
    .parameter "sensorID"
    .parameter "notiHandler"
    .parameter "messageDelay_SensorUpdate_millisecond"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 195
    if-lez p3, :cond_2f

    .line 196
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorRead;->setLoop_ReadFile()V

    .line 201
    :goto_a
    if-eqz p1, :cond_2e

    .line 202
    new-instance v0, Lcom/sec/factory/modules/SensorNotification;

    sget-object v1, Lcom/sec/factory/modules/ModuleSensor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_Manager:[I

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_File:[I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/factory/modules/SensorNotification;-><init>(Landroid/content/Context;[I[I)V

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    .line 203
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    invoke-virtual {v0, p3}, Lcom/sec/factory/modules/SensorNotification;->setLoopDelay(I)V

    .line 204
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    invoke-virtual {v0, p2}, Lcom/sec/factory/modules/SensorNotification;->setHandler(Landroid/os/Handler;)V

    .line 205
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/SensorNotification;->setDaemon(Z)V

    .line 206
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorNotification:Lcom/sec/factory/modules/SensorNotification;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorNotification;->start()V

    .line 208
    :cond_2e
    return-void

    .line 198
    :cond_2f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mIDArray_File:[I

    goto :goto_a
.end method

.method public getData(I)[Ljava/lang/String;
    .registers 9
    .parameter "id"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 243
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleSensor;->getString_ID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER:I

    if-ne p1, v0, :cond_2c

    .line 247
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getAccelermeterXYZ(I)[Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_2b
    return-object v0

    .line 248
    :cond_2c
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    if-ne p1, v0, :cond_37

    .line 249
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getAccelermeterXYZ(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 250
    :cond_37
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_N_ANGLE:I

    if-ne p1, v0, :cond_42

    .line 251
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getAccelermeterXYZnAngle(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 252
    :cond_42
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_N_ANGLE:I

    if-ne p1, v0, :cond_4d

    .line 253
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getAccelermeterXYZnAngle(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 254
    :cond_4d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_SELF:I

    if-ne p1, v0, :cond_58

    .line 255
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getAccelermeterSelf(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 256
    :cond_58
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_SELF:I

    if-ne p1, v0, :cond_63

    .line 257
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getAccelermeterSelf(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 258
    :cond_63
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_CAL:I

    if-ne p1, v0, :cond_6e

    .line 259
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getAccelermeterCal(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 260
    :cond_6e
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_INTPIN:I

    if-ne p1, v0, :cond_79

    .line 261
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getAccelermeterIntpin(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 263
    :cond_79
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__CP_ACCELEROMETER:I

    if-ne p1, v0, :cond_84

    .line 264
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v6}, Lcom/sec/factory/modules/SensorRead;->getAccelermeterXYZnAngle(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 268
    :cond_84
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    if-ne p1, v0, :cond_8f

    .line 269
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getBarometer(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 270
    :cond_8f
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____BAROMETER_EEPROM:I

    if-ne p1, v0, :cond_9a

    .line 271
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getBarometerEEPROM(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 274
    :cond_9a
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    if-ne p1, v0, :cond_a5

    .line 275
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v6}, Lcom/sec/factory/modules/SensorRead;->getGrip(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 278
    :cond_a5
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO:I

    if-ne p1, v0, :cond_b1

    .line 279
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getGyro(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 280
    :cond_b1
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_POWER:I

    if-ne p1, v0, :cond_bd

    .line 281
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getGyroPower(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 282
    :cond_bd
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_EXPANSION:I

    if-ne p1, v0, :cond_c9

    .line 283
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getGyroExpansion(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 284
    :cond_c9
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_TEMPERATURE:I

    if-ne p1, v0, :cond_d5

    .line 285
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getGyroTemperature(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 286
    :cond_d5
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_TEMPERATURE:I

    if-ne p1, v0, :cond_e1

    .line 287
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getGyroTemperature(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 288
    :cond_e1
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_SELF:I

    if-ne p1, v0, :cond_ed

    .line 289
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getGyroSelf(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 290
    :cond_ed
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_SELFTEST:I

    if-ne p1, v0, :cond_f9

    .line 291
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getGyroSelf(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 309
    :cond_f9
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT:I

    if-ne p1, v0, :cond_105

    .line 310
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getLight(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 311
    :cond_105
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT_CCT:I

    if-ne p1, v0, :cond_111

    .line 312
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getLightCCT(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 313
    :cond_111
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_ADC:I

    if-ne p1, v0, :cond_11d

    .line 314
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getLightADC(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 315
    :cond_11d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_RGBW:I

    if-ne p1, v0, :cond_129

    .line 316
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getLightRGBW(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 319
    :cond_129
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC:I

    if-ne p1, v0, :cond_135

    .line 320
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getMagnetic(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 321
    :cond_135
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_ON:I

    if-ne p1, v0, :cond_141

    .line 322
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getMagneticPowerOn(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 323
    :cond_141
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_POWER_ON:I

    if-ne p1, v0, :cond_14d

    .line 324
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getMagneticPowerOn(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 325
    :cond_14d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_OFF:I

    if-ne p1, v0, :cond_159

    .line 326
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getMagneticPowerOff(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 327
    :cond_159
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_POWER_OFF:I

    if-ne p1, v0, :cond_165

    .line 328
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getMagneticPowerOff(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 329
    :cond_165
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_STATUS:I

    if-ne p1, v0, :cond_171

    .line 330
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getMagneticStatus(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 331
    :cond_171
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_STATUS:I

    if-ne p1, v0, :cond_17d

    .line 332
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getMagneticStatus(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 333
    :cond_17d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_TEMPERATURE:I

    if-ne p1, v0, :cond_189

    .line 334
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getMagneticTemperature(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 335
    :cond_189
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_TEMPERATURE:I

    if-ne p1, v0, :cond_195

    .line 336
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getMagneticTemperature(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 337
    :cond_195
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_DAC:I

    if-ne p1, v0, :cond_1a1

    .line 338
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getMagneticDAC(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 339
    :cond_1a1
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_DAC:I

    if-ne p1, v0, :cond_1ad

    .line 340
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getMagneticDAC(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 341
    :cond_1ad
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_ADC:I

    if-ne p1, v0, :cond_1b9

    .line 342
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getMagneticADC(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 343
    :cond_1b9
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    if-ne p1, v0, :cond_1c5

    .line 344
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getMagneticADC(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 345
    :cond_1c5
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_SELF:I

    if-ne p1, v0, :cond_1d1

    .line 346
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getMagneticSelf(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 347
    :cond_1d1
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_SELF:I

    if-ne p1, v0, :cond_1dd

    .line 348
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getMagneticSelf(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 349
    :cond_1dd
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_OFFSETH:I

    if-ne p1, v0, :cond_1e9

    .line 350
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getMagneticOffsetH(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 353
    :cond_1e9
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    if-ne p1, v0, :cond_1f5

    .line 354
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getProximity(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 355
    :cond_1f5
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_ADC:I

    if-ne p1, v0, :cond_201

    .line 356
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getProximityADC(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 357
    :cond_201
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_AVG:I

    if-ne p1, v0, :cond_20d

    .line 358
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getProximityAVG(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 359
    :cond_20d
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_OFFSET:I

    if-ne p1, v0, :cond_219

    .line 360
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v5}, Lcom/sec/factory/modules/SensorRead;->getProximityOffset(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 363
    :cond_219
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_TEMPERATURE:I

    if-ne p1, v0, :cond_225

    .line 364
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getTemperature(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 367
    :cond_225
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_HUMIDITY:I

    if-ne p1, v0, :cond_231

    .line 368
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/SensorRead;->getHumidity(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 372
    :cond_231
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getData"

    const-string v2, "id : Unknown"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    goto/16 :goto_2b
.end method

.method public isSensorOn(I)Z
    .registers 3
    .parameter "sensorID"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleSensor;->mSensorRead:Lcom/sec/factory/modules/SensorRead;

    invoke-virtual {v0, p1}, Lcom/sec/factory/modules/SensorRead;->isSensorOn(I)Z

    move-result v0

    return v0
.end method
