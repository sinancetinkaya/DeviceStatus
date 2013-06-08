.class public Lcom/sec/factory/modules/SensorReadManager;
.super Ljava/lang/Object;
.source "SensorReadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/modules/SensorReadManager$1;,
        Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;,
        Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;,
        Lcom/sec/factory/modules/SensorReadManager$SensorListener;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final DEBUG:Z

.field private DUMMY:I

.field private final SENSOR_ON_ARRAY_INDEX_ACCELEROMETER:I

.field private final SENSOR_ON_ARRAY_INDEX_ACCELEROMETER_N_ANGLE:I

.field private final SENSOR_ON_ARRAY_INDEX_ACCELEROMETER_SELF:I

.field private final SENSOR_ON_ARRAY_INDEX_BAROMETER:I

.field private final SENSOR_ON_ARRAY_INDEX_GYRO:I

.field private final SENSOR_ON_ARRAY_INDEX_GYRO_EXPANSION:I

.field private final SENSOR_ON_ARRAY_INDEX_GYRO_POWER:I

.field private final SENSOR_ON_ARRAY_INDEX_GYRO_SELF:I

.field private final SENSOR_ON_ARRAY_INDEX_GYRO_TEMPERATURE:I

.field private final SENSOR_ON_ARRAY_INDEX_HUMIDITY:I

.field private final SENSOR_ON_ARRAY_INDEX_LIGHT:I

.field private final SENSOR_ON_ARRAY_INDEX_LIGHT_CCT:I

.field private final SENSOR_ON_ARRAY_INDEX_MAGNETIC:I

.field private final SENSOR_ON_ARRAY_INDEX_MAGNETIC_ADC:I

.field private final SENSOR_ON_ARRAY_INDEX_MAGNETIC_DAC:I

.field private final SENSOR_ON_ARRAY_INDEX_MAGNETIC_OFFSETH:I

.field private final SENSOR_ON_ARRAY_INDEX_MAGNETIC_POWER_OFF:I

.field private final SENSOR_ON_ARRAY_INDEX_MAGNETIC_POWER_ON:I

.field private final SENSOR_ON_ARRAY_INDEX_MAGNETIC_SELF:I

.field private final SENSOR_ON_ARRAY_INDEX_MAGNETIC_STATUS:I

.field private final SENSOR_ON_ARRAY_INDEX_MAGNETIC_TEMPERATURE:I

.field private final SENSOR_ON_ARRAY_INDEX_PROXIMITY:I

.field private final SENSOR_ON_ARRAY_INDEX_TEMPERATURE:I

.field private final SENSOR_ON_ARRAY_LENGTH:I

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mBarometerSensor:Landroid/hardware/Sensor;

.field private mBuffer_SensorValue_Accelerometer:[F

.field private mBuffer_SensorValue_Barometer:[F

.field private mBuffer_SensorValue_Gyro:[F

.field private mBuffer_SensorValue_Humidity:[F

.field private mBuffer_SensorValue_Light:[F

.field private mBuffer_SensorValue_Magnetic:[F

.field private mBuffer_SensorValue_Proximity:[F

.field private mBuffer_SensorValue_Temperature:[F

.field private mGyroscopeSensor:Landroid/hardware/Sensor;

.field private mHumiditySensor:Landroid/hardware/Sensor;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mMagneticSensor:Landroid/hardware/Sensor;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorOn:[Z

.field private mTemperatureSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>([ILandroid/hardware/SensorManager;)V
    .registers 12
    .parameter "sensorID"
    .parameter "sm"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v2, "SensorReadManager"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->CLASS_NAME:Ljava/lang/String;

    .line 13
    iput-boolean v6, p0, Lcom/sec/factory/modules/SensorReadManager;->DEBUG:Z

    .line 15
    iput v5, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    .line 16
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_ACCELEROMETER:I

    .line 17
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_ACCELEROMETER_N_ANGLE:I

    .line 18
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_ACCELEROMETER_SELF:I

    .line 19
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_BAROMETER:I

    .line 20
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_GYRO:I

    .line 21
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_GYRO_EXPANSION:I

    .line 22
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_GYRO_POWER:I

    .line 23
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_GYRO_SELF:I

    .line 24
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_GYRO_TEMPERATURE:I

    .line 25
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_LIGHT:I

    .line 26
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_LIGHT_CCT:I

    .line 27
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC:I

    .line 28
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_POWER_ON:I

    .line 29
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_STATUS:I

    .line 30
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_TEMPERATURE:I

    .line 31
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_DAC:I

    .line 32
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_ADC:I

    .line 33
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_SELF:I

    .line 34
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_OFFSETH:I

    .line 35
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_POWER_OFF:I

    .line 36
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_PROXIMITY:I

    .line 37
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_TEMPERATURE:I

    .line 38
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_HUMIDITY:I

    .line 39
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_LENGTH:I

    .line 40
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_LENGTH:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    .line 53
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    .line 55
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 56
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mBarometerSensor:Landroid/hardware/Sensor;

    .line 57
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mGyroscopeSensor:Landroid/hardware/Sensor;

    .line 58
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mLightSensor:Landroid/hardware/Sensor;

    .line 59
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mMagneticSensor:Landroid/hardware/Sensor;

    .line 60
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mProximitySensor:Landroid/hardware/Sensor;

    .line 61
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mTemperatureSensor:Landroid/hardware/Sensor;

    .line 62
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mHumiditySensor:Landroid/hardware/Sensor;

    .line 64
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Accelerometer:[F

    .line 65
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Barometer:[F

    .line 66
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Gyro:[F

    .line 67
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Light:[F

    .line 68
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Magnetic:[F

    .line 69
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Proximity:[F

    .line 70
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Temperature:[F

    .line 71
    iput-object v7, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Humidity:[F

    .line 76
    const-string v2, "SensorReadManager"

    const-string v3, "SensorReadManager"

    const-string v4, "Sensor On"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v1, -0x1

    .line 79
    .local v1, sensorOnArrayIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_100
    iget v2, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_LENGTH:I

    if-ge v0, v2, :cond_10b

    .line 80
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v5, v2, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_100

    .line 82
    :cond_10b
    iput-object p2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 84
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_403

    .line 85
    const/4 v0, 0x0

    :goto_112
    array-length v2, p1

    if-ge v0, v2, :cond_40c

    .line 86
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    if-nez v2, :cond_120

    .line 87
    new-instance v2, Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    invoke-direct {v2, p0, v7}, Lcom/sec/factory/modules/SensorReadManager$SensorListener;-><init>(Lcom/sec/factory/modules/SensorReadManager;Lcom/sec/factory/modules/SensorReadManager$1;)V

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    .line 89
    :cond_120
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER:I

    if-eq v2, v3, :cond_132

    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_N_ANGLE:I

    if-eq v2, v3, :cond_132

    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_SELF:I

    if-ne v2, v3, :cond_189

    .line 92
    :cond_132
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_150

    .line 93
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 95
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 97
    const-string v2, "SensorReadManager"

    const-string v3, "SensorReadManager"

    const-string v4, "register-AccelerometerSensor"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_150
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_164

    .line 101
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER:I

    if-ne v2, v3, :cond_167

    .line 102
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    .line 85
    :cond_164
    :goto_164
    add-int/lit8 v0, v0, 0x1

    goto :goto_112

    .line 104
    :cond_167
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_N_ANGLE:I

    if-ne v2, v3, :cond_178

    .line 105
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_N_ANGLE:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 106
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto :goto_164

    .line 107
    :cond_178
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_SELF:I

    if-ne v2, v3, :cond_164

    .line 108
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_SELF:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto :goto_164

    .line 112
    :cond_189
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    if-ne v2, v3, :cond_1bd

    .line 113
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mBarometerSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_1ae

    .line 114
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mBarometerSensor:Landroid/hardware/Sensor;

    .line 115
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mBarometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 117
    const-string v2, "SensorReadManager"

    const-string v3, "SensorReadManager"

    const-string v4, "register-BarometerSensor"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1ae
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mBarometerSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_164

    .line 120
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 121
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto :goto_164

    .line 123
    :cond_1bd
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO:I

    if-ne v2, v3, :cond_1f2

    .line 124
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mGyroscopeSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_1e2

    .line 125
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mGyroscopeSensor:Landroid/hardware/Sensor;

    .line 126
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mGyroscopeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 128
    const-string v2, "SensorReadManager"

    const-string v3, "SensorReadManager"

    const-string v4, "register-GyroscopeSensor"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1e2
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mGyroscopeSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_164

    .line 131
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 134
    :cond_1f2
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT:I

    if-eq v2, v3, :cond_1fe

    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT_CCT:I

    if-ne v2, v3, :cond_237

    .line 136
    :cond_1fe
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_21d

    .line 137
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mLightSensor:Landroid/hardware/Sensor;

    .line 138
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 140
    const-string v2, "SensorReadManager"

    const-string v3, "SensorReadManager"

    const-string v4, "register-LightSensor"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_21d
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_164

    .line 143
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 144
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    .line 145
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT_CCT:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 146
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 148
    :cond_237
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC:I

    if-ne v2, v3, :cond_26b

    .line 149
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mMagneticSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_25b

    .line 150
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mMagneticSensor:Landroid/hardware/Sensor;

    .line 152
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mMagneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 154
    const-string v2, "SensorReadManager"

    const-string v3, "SensorReadManager"

    const-string v4, "register-MagneticSensor"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_25b
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mMagneticSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_164

    .line 157
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 158
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 160
    :cond_26b
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    if-ne v2, v3, :cond_2a1

    .line 161
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_291

    .line 162
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mProximitySensor:Landroid/hardware/Sensor;

    .line 163
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 165
    const-string v2, "SensorReadManager"

    const-string v3, "SensorReadManager"

    const-string v4, "register-ProximitySensor"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_291
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_164

    .line 168
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 169
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 171
    :cond_2a1
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_TEMPERATURE:I

    if-ne v2, v3, :cond_2d7

    .line 172
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mTemperatureSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_2c7

    .line 173
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mTemperatureSensor:Landroid/hardware/Sensor;

    .line 175
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mTemperatureSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 177
    const-string v2, "SensorReadManager"

    const-string v3, "SensorReadManager"

    const-string v4, "register-Temperature"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_2c7
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mTemperatureSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_164

    .line 180
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_TEMPERATURE:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 181
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 183
    :cond_2d7
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_HUMIDITY:I

    if-ne v2, v3, :cond_30d

    .line 184
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mHumiditySensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_2fd

    .line 185
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mHumiditySensor:Landroid/hardware/Sensor;

    .line 187
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mHumiditySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 189
    const-string v2, "SensorReadManager"

    const-string v3, "SensorReadManager"

    const-string v4, "register-Humidity"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_2fd
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mHumiditySensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_164

    .line 192
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_HUMIDITY:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 193
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 198
    :cond_30d
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_EXPANSION:I

    if-ne v2, v3, :cond_31f

    .line 199
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_EXPANSION:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 200
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 201
    :cond_31f
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_POWER:I

    if-ne v2, v3, :cond_331

    .line 202
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_POWER:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 203
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 204
    :cond_331
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_SELF:I

    if-ne v2, v3, :cond_343

    .line 205
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_SELF:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 206
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 207
    :cond_343
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_TEMPERATURE:I

    if-ne v2, v3, :cond_355

    .line 208
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_TEMPERATURE:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 209
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 212
    :cond_355
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_ON:I

    if-ne v2, v3, :cond_367

    .line 213
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_ON:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 214
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 215
    :cond_367
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_OFF:I

    if-ne v2, v3, :cond_379

    .line 216
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_OFF:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 217
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 218
    :cond_379
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_STATUS:I

    if-ne v2, v3, :cond_38b

    .line 219
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_STATUS:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 220
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 221
    :cond_38b
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_TEMPERATURE:I

    if-ne v2, v3, :cond_39d

    .line 222
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_TEMPERATURE:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 223
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 224
    :cond_39d
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_DAC:I

    if-ne v2, v3, :cond_3af

    .line 225
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_DAC:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 226
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 227
    :cond_3af
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_ADC:I

    if-ne v2, v3, :cond_3c1

    .line 228
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_ADC:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 229
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 230
    :cond_3c1
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_SELF:I

    if-ne v2, v3, :cond_3d3

    .line 231
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_SELF:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 232
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 233
    :cond_3d3
    aget v2, p1, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_OFFSETH:I

    if-ne v2, v3, :cond_3e5

    .line 234
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_OFFSETH:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v1

    .line 235
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aput-boolean v6, v2, v1

    goto/16 :goto_164

    .line 239
    :cond_3e5
    const-string v2, "SensorReadManager"

    const-string v3, "SensorReadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregistered-ETC(ModuleSensor ID) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_164

    .line 244
    :cond_403
    const-string v2, "SensorReadManager"

    const-string v3, "SensorReadManager"

    const-string v4, "SensorManager null !!!"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_40c
    return-void
.end method

.method private ConverterID(I)I
    .registers 4
    .parameter "moduleSensorID"

    .prologue
    .line 940
    const/4 v0, -0x1

    .line 941
    .local v0, sensorOnArrayIndex:I
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER:I

    if-ne p1, v1, :cond_8

    .line 942
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_ACCELEROMETER:I

    .line 987
    :cond_7
    :goto_7
    return v0

    .line 943
    :cond_8
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_N_ANGLE:I

    if-ne p1, v1, :cond_f

    .line 944
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_ACCELEROMETER_N_ANGLE:I

    goto :goto_7

    .line 945
    :cond_f
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_SELF:I

    if-ne p1, v1, :cond_16

    .line 946
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_ACCELEROMETER_SELF:I

    goto :goto_7

    .line 947
    :cond_16
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    if-ne p1, v1, :cond_1d

    .line 948
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_BAROMETER:I

    goto :goto_7

    .line 949
    :cond_1d
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO:I

    if-ne p1, v1, :cond_24

    .line 950
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_GYRO:I

    goto :goto_7

    .line 951
    :cond_24
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_POWER:I

    if-ne p1, v1, :cond_2b

    .line 952
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_GYRO_POWER:I

    goto :goto_7

    .line 953
    :cond_2b
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_EXPANSION:I

    if-ne p1, v1, :cond_32

    .line 954
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_GYRO_EXPANSION:I

    goto :goto_7

    .line 955
    :cond_32
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_SELF:I

    if-ne p1, v1, :cond_39

    .line 956
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_GYRO_SELF:I

    goto :goto_7

    .line 957
    :cond_39
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_TEMPERATURE:I

    if-ne p1, v1, :cond_40

    .line 958
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_GYRO_TEMPERATURE:I

    goto :goto_7

    .line 959
    :cond_40
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT:I

    if-ne p1, v1, :cond_47

    .line 960
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_LIGHT:I

    goto :goto_7

    .line 961
    :cond_47
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_LIGHT_CCT:I

    if-ne p1, v1, :cond_4e

    .line 962
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_LIGHT_CCT:I

    goto :goto_7

    .line 963
    :cond_4e
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC:I

    if-ne p1, v1, :cond_55

    .line 964
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC:I

    goto :goto_7

    .line 965
    :cond_55
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_ON:I

    if-ne p1, v1, :cond_5c

    .line 966
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_POWER_ON:I

    goto :goto_7

    .line 967
    :cond_5c
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_OFF:I

    if-ne p1, v1, :cond_63

    .line 968
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_POWER_OFF:I

    goto :goto_7

    .line 969
    :cond_63
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_STATUS:I

    if-ne p1, v1, :cond_6a

    .line 970
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_STATUS:I

    goto :goto_7

    .line 971
    :cond_6a
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_TEMPERATURE:I

    if-ne p1, v1, :cond_71

    .line 972
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_TEMPERATURE:I

    goto :goto_7

    .line 973
    :cond_71
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_DAC:I

    if-ne p1, v1, :cond_78

    .line 974
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_DAC:I

    goto :goto_7

    .line 975
    :cond_78
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_ADC:I

    if-ne p1, v1, :cond_7f

    .line 976
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_ADC:I

    goto :goto_7

    .line 977
    :cond_7f
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_SELF:I

    if-ne p1, v1, :cond_86

    .line 978
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_SELF:I

    goto :goto_7

    .line 979
    :cond_86
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_OFFSETH:I

    if-ne p1, v1, :cond_8e

    .line 980
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_MAGNETIC_OFFSETH:I

    goto/16 :goto_7

    .line 981
    :cond_8e
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_PROXIMITY:I

    if-ne p1, v1, :cond_96

    .line 982
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_PROXIMITY:I

    goto/16 :goto_7

    .line 983
    :cond_96
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_TEMPERATURE:I

    if-ne p1, v1, :cond_9e

    .line 984
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_TEMPERATURE:I

    goto/16 :goto_7

    .line 985
    :cond_9e
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_HUMIDITY:I

    if-ne p1, v1, :cond_7

    .line 986
    iget v0, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_INDEX_HUMIDITY:I

    goto/16 :goto_7
.end method

.method static synthetic access$102(Lcom/sec/factory/modules/SensorReadManager;[F)[F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Accelerometer:[F

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/factory/modules/SensorReadManager;[F)[F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Barometer:[F

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/factory/modules/SensorReadManager;[F)[F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Gyro:[F

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/factory/modules/SensorReadManager;[F)[F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Light:[F

    return-object p1
.end method

.method static synthetic access$502(Lcom/sec/factory/modules/SensorReadManager;[F)[F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Magnetic:[F

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/factory/modules/SensorReadManager;[F)[F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Proximity:[F

    return-object p1
.end method

.method static synthetic access$702(Lcom/sec/factory/modules/SensorReadManager;[F)[F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Temperature:[F

    return-object p1
.end method

.method static synthetic access$802(Lcom/sec/factory/modules/SensorReadManager;[F)[F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Humidity:[F

    return-object p1
.end method

.method private dataCheck([F)Ljava/lang/String;
    .registers 6
    .parameter "data"

    .prologue
    .line 993
    const-string v1, ""

    .line 994
    .local v1, result:Ljava/lang/String;
    if-eqz p1, :cond_36

    .line 995
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_38

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 997
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_33

    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 995
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1001
    .end local v0           #i:I
    :cond_36
    const-string v1, "Data : null"

    .line 1004
    :cond_38
    return-object v1
.end method


# virtual methods
.method public isSensorOn(I)Z
    .registers 4
    .parameter "moduleSensorID"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/SensorReadManager;->ConverterID(I)I

    move-result v0

    .line 282
    .local v0, sensorOnArrayIndex:I
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public returnAccelermeter()[F
    .registers 4

    .prologue
    .line 325
    const-string v0, "SensorReadManager"

    const-string v1, "returnAccelermeter"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Accelerometer:[F

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->dataCheck([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Accelerometer:[F

    return-object v0
.end method

.method public returnBarometer()[F
    .registers 4

    .prologue
    .line 333
    const-string v0, "SensorReadManager"

    const-string v1, "returnBarometer"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Barometer:[F

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->dataCheck([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Barometer:[F

    return-object v0
.end method

.method public returnGyro()[F
    .registers 4

    .prologue
    .line 340
    const-string v0, "SensorReadManager"

    const-string v1, "returnGyro"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Gyro:[F

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->dataCheck([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Gyro:[F

    return-object v0
.end method

.method public returnGyroExpansion()Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;
    .registers 11

    .prologue
    const/high16 v6, 0x447a

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 396
    const/4 v3, 0x3

    new-array v0, v3, [I

    .line 397
    .local v0, bias:[I
    new-instance v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;

    invoke-direct {v1, p0}, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;-><init>(Lcom/sec/factory/modules/SensorReadManager;)V

    .line 398
    .local v1, data:Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;
    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mData:[S

    iget-object v5, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    invoke-virtual {v3, v0, v4, v5}, Landroid/hardware/SensorManager;->runGyroFactoryTest([I[S[F)I

    move-result v3

    iput v3, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mReturnValue:I

    .line 399
    iget-object v3, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    aget v4, v0, v7

    int-to-float v4, v4

    div-float/2addr v4, v6

    aput v4, v3, v7

    .line 400
    iget-object v3, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    aget v4, v0, v8

    int-to-float v4, v4

    div-float/2addr v4, v6

    aput v4, v3, v8

    .line 401
    iget-object v3, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    aget v4, v0, v9

    int-to-float v4, v4

    div-float/2addr v4, v6

    aput v4, v3, v9

    .line 402
    const/high16 v2, 0x447a

    .line 403
    .local v2, positionalNumber:F
    iget-object v3, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    iget-object v4, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    aget v4, v4, v7

    mul-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    aput v4, v3, v7

    .line 404
    iget-object v3, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    iget-object v4, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    aget v4, v4, v8

    mul-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    aput v4, v3, v8

    .line 405
    iget-object v3, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    iget-object v4, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    aget v4, v4, v9

    mul-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    aput v4, v3, v9

    .line 408
    const-string v3, "SensorReadManager"

    const-string v4, "returnGyroExpansion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " (1)MethodReturnValue / (2)Bias[3] / (3)PacketCount[3] / (4)RMS[3] => (1) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mReturnValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / (2) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / (3) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mData:[S

    aget-short v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mData:[S

    aget-short v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mData:[S

    aget-short v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / (4) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-object v1
.end method

.method public returnHumidity()[F
    .registers 4

    .prologue
    .line 376
    const-string v0, "SensorReadManager"

    const-string v1, "returnHumidity"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Humidity:[F

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->dataCheck([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Humidity:[F

    return-object v0
.end method

.method public returnLight()[F
    .registers 4

    .prologue
    .line 347
    const-string v0, "SensorReadManager"

    const-string v1, "returnLight"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Light:[F

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->dataCheck([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Light:[F

    return-object v0
.end method

.method public returnMagnetic()[F
    .registers 4

    .prologue
    .line 354
    const-string v0, "SensorReadManager"

    const-string v1, "returnMagnetic"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Magnetic:[F

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->dataCheck([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Magnetic:[F

    return-object v0
.end method

.method public returnMagneticExpansion_Alps(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;
    .registers 12
    .parameter "testNo"

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 825
    new-array v0, v9, [I

    .line 826
    .local v0, parameter1:[I
    new-array v1, v9, [I

    .line 827
    .local v1, parameter2:[I
    new-array v2, v9, [I

    .line 828
    .local v2, parameter3:[I
    new-instance v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    invoke-direct {v3, p0}, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;-><init>(Lcom/sec/factory/modules/SensorReadManager;)V

    .line 829
    .local v3, returnData:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;
    if-ne p1, v7, :cond_52

    .line 830
    aput v7, v0, v6

    .line 831
    if-eqz v1, :cond_2a

    .line 832
    new-array v4, v8, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    .line 833
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_45

    .line 834
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 835
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v7

    .line 921
    :cond_2a
    :goto_2a
    if-ne p1, v8, :cond_44

    .line 922
    aput v8, v0, v6

    .line 923
    if-eqz v1, :cond_44

    .line 924
    new-array v4, v8, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    .line 925
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_185

    .line 926
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 927
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v7

    .line 934
    :cond_44
    :goto_44
    return-object v3

    .line 837
    :cond_45
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    .line 838
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v7

    goto :goto_2a

    .line 841
    :cond_52
    if-ne p1, v9, :cond_7a

    .line 842
    aput v7, v0, v6

    .line 843
    aput v9, v0, v6

    .line 844
    if-eqz v1, :cond_2a

    .line 845
    new-array v4, v8, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    .line 846
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_73

    .line 847
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 851
    :goto_68
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    goto :goto_2a

    .line 849
    :cond_73
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    goto :goto_68

    .line 853
    :cond_7a
    if-eq p1, v8, :cond_2a

    .line 854
    if-ne p1, v5, :cond_bb

    .line 855
    aput v7, v0, v6

    .line 856
    aput v9, v0, v6

    .line 857
    aput v5, v0, v6

    .line 858
    if-eqz v1, :cond_2a

    .line 859
    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    .line 860
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_b4

    .line 861
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 865
    :goto_94
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 866
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    aget v5, v1, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 867
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    aget v5, v1, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    goto/16 :goto_2a

    .line 863
    :cond_b4
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    goto :goto_94

    .line 869
    :cond_bb
    const/4 v4, 0x5

    if-ne p1, v4, :cond_f6

    .line 870
    aput v7, v0, v6

    .line 871
    aput v9, v0, v6

    .line 872
    aput v5, v0, v6

    .line 873
    const/4 v4, 0x5

    aput v4, v0, v6

    .line 874
    if-eqz v1, :cond_2a

    .line 875
    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    .line 876
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_ef

    .line 877
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 881
    :goto_d7
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 882
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v8

    .line 883
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v9

    goto/16 :goto_2a

    .line 879
    :cond_ef
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    goto :goto_d7

    .line 885
    :cond_f6
    const/4 v4, 0x6

    if-ne p1, v4, :cond_13c

    .line 886
    aput v7, v0, v6

    .line 887
    aput v9, v0, v6

    .line 888
    aput v5, v0, v6

    .line 889
    const/4 v4, 0x5

    aput v4, v0, v6

    .line 890
    const/4 v4, 0x6

    aput v4, v0, v6

    .line 891
    if-eqz v1, :cond_2a

    .line 892
    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    .line 893
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_135

    .line 894
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 898
    :goto_115
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 899
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    aget v5, v1, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 900
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    aget v5, v1, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    goto/16 :goto_2a

    .line 896
    :cond_135
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    goto :goto_115

    .line 902
    :cond_13c
    const/4 v4, 0x7

    if-ne p1, v4, :cond_2a

    .line 903
    aput v7, v0, v6

    .line 904
    aput v9, v0, v6

    .line 905
    aput v5, v0, v6

    .line 906
    const/4 v4, 0x5

    aput v4, v0, v6

    .line 907
    const/4 v4, 0x6

    aput v4, v0, v6

    .line 908
    const/4 v4, 0x7

    aput v4, v0, v6

    .line 909
    if-eqz v1, :cond_2a

    .line 910
    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    .line 911
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_17e

    .line 912
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 916
    :goto_15e
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 917
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    aget v5, v1, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 918
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    aget v5, v1, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    goto/16 :goto_2a

    .line 914
    :cond_17e
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    goto :goto_15e

    .line 929
    :cond_185
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    .line 930
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v7

    goto/16 :goto_44
.end method

.method public returnMagneticExpansion_Asahi(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;
    .registers 14
    .parameter "testNo"

    .prologue
    .line 441
    sget v8, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GEOMAGNETIC:I

    sget v9, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v8, v9}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, feature:Ljava/lang/String;
    const/16 v8, 0x16

    new-array v2, v8, [I

    .line 445
    .local v2, parameter1:[I
    const/16 v8, 0x17

    new-array v3, v8, [I

    .line 446
    .local v3, parameter2:[I
    const/4 v8, 0x2

    new-array v4, v8, [I

    .line 447
    .local v4, parameter3:[I
    new-instance v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    invoke-direct {v5, p0}, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;-><init>(Lcom/sec/factory/modules/SensorReadManager;)V

    .line 449
    .local v5, returnData:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;
    iget-object v8, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v8, v2, v3, v4}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v8

    iput v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 453
    const-string v8, "SensorReadManager"

    const-string v9, "returnMagneticExpansion"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "feature : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v8, "SensorReadManager"

    const-string v9, "returnMagneticExpansion"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MethodReturnValue : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v8, "SensorReadManager"

    const-string v9, "returnMagneticExpansion"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parameter1[22] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x5

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x6

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x7

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x8

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x9

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xa

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xb

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xc

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xd

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xe

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xf

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x10

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x11

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x12

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x13

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x14

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x15

    aget v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v8, "SensorReadManager"

    const-string v9, "returnMagneticExpansion"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parameter2[23] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x5

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x6

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x7

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x8

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x9

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xa

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xb

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xc

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xd

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xe

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xf

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x10

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x11

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x12

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x13

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x14

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x15

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x16

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v8, 0x1

    if-eq p1, v8, :cond_2e3

    const/16 v8, 0x8

    if-ne p1, v8, :cond_303

    .line 482
    :cond_2e3
    if-eqz v2, :cond_303

    .line 483
    const/4 v7, 0x1

    .line 484
    .local v7, success:Z
    const/4 v8, 0x3

    aget v8, v2, v8

    const/16 v9, 0x48

    if-eq v8, v9, :cond_456

    .line 485
    const/4 v7, 0x0

    .line 499
    :cond_2ee
    :goto_2ee
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    .line 500
    if-eqz v7, :cond_4ab

    .line 501
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "OK"

    aput-object v10, v8, v9

    .line 502
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v8, v9

    .line 511
    .end local v7           #success:Z
    :cond_303
    :goto_303
    const/4 v8, 0x3

    if-eq p1, v8, :cond_30a

    const/16 v8, 0x8

    if-ne p1, v8, :cond_331

    .line 512
    :cond_30a
    if-eqz v2, :cond_331

    .line 513
    const/4 v7, 0x1

    .line 514
    .restart local v7       #success:Z
    const/16 v8, 0x11

    aget v8, v2, v8

    if-eqz v8, :cond_31b

    const/16 v8, 0x11

    aget v8, v2, v8

    const/16 v9, 0xff

    if-ne v8, v9, :cond_4bb

    .line 516
    :cond_31b
    const/4 v7, 0x0

    .line 528
    :cond_31c
    :goto_31c
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    .line 529
    if-eqz v7, :cond_4dd

    .line 530
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "OK"

    aput-object v10, v8, v9

    .line 531
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v8, v9

    .line 540
    .end local v7           #success:Z
    :cond_331
    :goto_331
    const/4 v8, 0x2

    if-eq p1, v8, :cond_338

    const/16 v8, 0x8

    if-ne p1, v8, :cond_338

    .line 552
    :cond_338
    const/4 v8, 0x4

    if-eq p1, v8, :cond_33f

    const/16 v8, 0x8

    if-ne p1, v8, :cond_347

    .line 553
    :cond_33f
    const-string v8, "AK8973"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4ed

    .line 572
    :cond_347
    :goto_347
    const/4 v8, 0x5

    if-eq p1, v8, :cond_34e

    const/16 v8, 0x8

    if-ne p1, v8, :cond_3d1

    .line 573
    :cond_34e
    if-eqz v3, :cond_3d1

    .line 574
    const/4 v7, 0x1

    .line 575
    .restart local v7       #success:Z
    const/4 v0, 0x0

    .line 576
    .local v0, ST2:I
    const/4 v8, 0x4

    aget v8, v3, v8

    const/4 v9, 0x6

    aget v9, v3, v9

    const/16 v10, 0x8

    aget v10, v3, v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/modules/SensorCalculator;->checkSpecMagneticADC(III)Ljava/lang/String;

    move-result-object v6

    .line 579
    .local v6, specResult:Ljava/lang/String;
    const-string v8, "AK8963C_MANAGER"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36a

    .line 580
    const/16 v0, 0x10

    .line 583
    :cond_36a
    const/4 v8, 0x3

    aget v8, v3, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_537

    .line 584
    const/4 v7, 0x0

    .line 593
    :cond_371
    :goto_371
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    .line 594
    if-eqz v7, :cond_554

    .line 595
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "OK"

    aput-object v10, v8, v9

    .line 598
    :goto_37f
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 599
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x6

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 600
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x8

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 605
    .end local v0           #ST2:I
    .end local v6           #specResult:Ljava/lang/String;
    .end local v7           #success:Z
    :cond_3d1
    const/4 v8, 0x6

    if-eq p1, v8, :cond_3d8

    const/16 v8, 0x8

    if-ne p1, v8, :cond_455

    .line 606
    :cond_3d8
    if-eqz v3, :cond_455

    .line 607
    const/4 v7, 0x1

    .line 608
    .restart local v7       #success:Z
    const/16 v8, 0xf

    aget v8, v3, v8

    const/16 v9, 0x11

    aget v9, v3, v9

    const/16 v10, 0x13

    aget v10, v3, v10

    invoke-static {v8, v9, v10}, Lcom/sec/factory/modules/SensorCalculator;->checkSpecMagneticSelf(III)Ljava/lang/String;

    move-result-object v6

    .line 610
    .restart local v6       #specResult:Ljava/lang/String;
    const/16 v8, 0xe

    aget v8, v3, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_55d

    .line 611
    const/4 v7, 0x0

    .line 618
    :cond_3f3
    :goto_3f3
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    .line 619
    if-eqz v7, :cond_571

    .line 620
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "OK"

    aput-object v10, v8, v9

    .line 623
    :goto_401
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xf

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 624
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x11

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 625
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x13

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 629
    .end local v6           #specResult:Ljava/lang/String;
    .end local v7           #success:Z
    :cond_455
    return-object v5

    .line 486
    .restart local v7       #success:Z
    :cond_456
    const/4 v8, 0x4

    aget v8, v2, v8

    if-ltz v8, :cond_462

    const/4 v8, 0x4

    aget v8, v2, v8

    const/16 v9, 0xff

    if-le v8, v9, :cond_465

    .line 488
    :cond_462
    const/4 v7, 0x0

    goto/16 :goto_2ee

    .line 489
    :cond_465
    const/4 v8, 0x5

    aget v8, v2, v8

    if-nez v8, :cond_498

    const/4 v8, 0x6

    aget v8, v2, v8

    if-nez v8, :cond_498

    const/4 v8, 0x7

    aget v8, v2, v8

    if-nez v8, :cond_498

    const/16 v8, 0x8

    aget v8, v2, v8

    if-nez v8, :cond_498

    const/16 v8, 0x9

    aget v8, v2, v8

    if-nez v8, :cond_498

    const/16 v8, 0xa

    aget v8, v2, v8

    if-nez v8, :cond_498

    const/16 v8, 0xb

    aget v8, v2, v8

    if-nez v8, :cond_498

    const/16 v8, 0xc

    aget v8, v2, v8

    if-nez v8, :cond_498

    const/16 v8, 0xd

    aget v8, v2, v8

    if-eqz v8, :cond_49b

    .line 494
    :cond_498
    const/4 v7, 0x0

    goto/16 :goto_2ee

    .line 495
    :cond_49b
    const/16 v8, 0xe

    aget v8, v2, v8

    if-gez v8, :cond_2ee

    const/16 v8, 0xe

    aget v8, v2, v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_2ee

    .line 497
    const/4 v7, 0x0

    goto/16 :goto_2ee

    .line 504
    :cond_4ab
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "NG"

    aput-object v10, v8, v9

    .line 505
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "0"

    aput-object v10, v8, v9

    goto/16 :goto_303

    .line 517
    :cond_4bb
    const/16 v8, 0x12

    aget v8, v2, v8

    if-eqz v8, :cond_4c9

    const/16 v8, 0x12

    aget v8, v2, v8

    const/16 v9, 0xff

    if-ne v8, v9, :cond_4cc

    .line 521
    :cond_4c9
    const/4 v7, 0x0

    goto/16 :goto_31c

    .line 522
    :cond_4cc
    const/16 v8, 0x13

    aget v8, v2, v8

    if-eqz v8, :cond_4da

    const/16 v8, 0x13

    aget v8, v2, v8

    const/16 v9, 0xff

    if-ne v8, v9, :cond_31c

    .line 526
    :cond_4da
    const/4 v7, 0x0

    goto/16 :goto_31c

    .line 533
    :cond_4dd
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "NG"

    aput-object v10, v8, v9

    .line 534
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "0"

    aput-object v10, v8, v9

    goto/16 :goto_331

    .line 554
    .end local v7           #success:Z
    :cond_4ed
    const-string v8, "AK8975"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4fd

    const-string v8, "AK8963C_MANAGER"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_347

    .line 556
    :cond_4fd
    if-eqz v2, :cond_347

    .line 557
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    .line 558
    const/16 v8, 0x15

    aget v8, v2, v8

    if-nez v8, :cond_528

    .line 559
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "OK"

    aput-object v10, v8, v9

    .line 560
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v8, v9

    .line 565
    :goto_518
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    const/4 v9, 0x2

    const-string v10, "0"

    aput-object v10, v8, v9

    .line 566
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    const/4 v9, 0x3

    const-string v10, "0"

    aput-object v10, v8, v9

    goto/16 :goto_347

    .line 562
    :cond_528
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "NG"

    aput-object v10, v8, v9

    .line 563
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "0"

    aput-object v10, v8, v9

    goto :goto_518

    .line 585
    .restart local v0       #ST2:I
    .restart local v6       #specResult:Ljava/lang/String;
    .restart local v7       #success:Z
    :cond_537
    const/16 v8, 0xa

    aget v8, v3, v8

    if-eq v8, v0, :cond_540

    .line 586
    const/4 v7, 0x0

    goto/16 :goto_371

    .line 587
    :cond_540
    const-string v8, "OK"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_371

    .line 588
    const/4 v7, 0x0

    .line 589
    const-string v8, "SensorReadManager"

    const-string v9, "returnMagneticExpansion_Asahi"

    const-string v10, "ADC specResult : false"

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_371

    .line 597
    :cond_554
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "NG"

    aput-object v10, v8, v9

    goto/16 :goto_37f

    .line 612
    .end local v0           #ST2:I
    :cond_55d
    const-string v8, "OK"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f3

    .line 613
    const/4 v7, 0x0

    .line 614
    const-string v8, "SensorReadManager"

    const-string v9, "returnMagneticExpansion_Asahi"

    const-string v10, "Self specResult : false"

    invoke-static {v8, v9, v10}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f3

    .line 622
    :cond_571
    iget-object v8, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "NG"

    aput-object v10, v8, v9

    goto/16 :goto_401
.end method

.method public returnMagneticExpansion_Yamaha(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;
    .registers 12
    .parameter "testNo"

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 633
    new-array v0, v9, [I

    .line 634
    .local v0, parameter1:[I
    new-array v1, v9, [I

    .line 635
    .local v1, parameter2:[I
    new-array v2, v9, [I

    .line 636
    .local v2, parameter3:[I
    new-instance v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    invoke-direct {v3, p0}, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;-><init>(Lcom/sec/factory/modules/SensorReadManager;)V

    .line 639
    .local v3, returnData:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;
    if-ne p1, v7, :cond_62

    .line 640
    aput v7, v0, v6

    .line 641
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 643
    if-eqz v1, :cond_32

    .line 644
    new-array v4, v8, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    .line 645
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_55

    .line 646
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 647
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v7

    .line 805
    :cond_32
    :goto_32
    if-ne p1, v8, :cond_54

    .line 806
    aput v8, v0, v6

    .line 807
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 809
    if-eqz v1, :cond_54

    .line 810
    new-array v4, v8, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    .line 811
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_235

    .line 812
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 813
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v7

    .line 821
    :cond_54
    :goto_54
    return-object v3

    .line 649
    :cond_55
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    .line 650
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v7

    goto :goto_32

    .line 656
    :cond_62
    if-ne p1, v9, :cond_9a

    .line 657
    aput v7, v0, v6

    .line 658
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 660
    aput v9, v0, v6

    .line 661
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 663
    if-eqz v1, :cond_32

    .line 664
    new-array v4, v8, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    .line 665
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_93

    .line 666
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 670
    :goto_88
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    goto :goto_32

    .line 668
    :cond_93
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    goto :goto_88

    .line 675
    :cond_9a
    if-eq p1, v8, :cond_32

    .line 687
    if-ne p1, v5, :cond_f3

    .line 688
    aput v7, v0, v6

    .line 689
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 691
    aput v9, v0, v6

    .line 692
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 694
    aput v5, v0, v6

    .line 695
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 697
    if-eqz v1, :cond_32

    .line 698
    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    .line 699
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_ec

    .line 700
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 705
    :goto_cc
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 706
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    aget v5, v1, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 707
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    aget v5, v1, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    goto/16 :goto_32

    .line 702
    :cond_ec
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    goto :goto_cc

    .line 712
    :cond_f3
    const/4 v4, 0x5

    if-ne p1, v4, :cond_14e

    .line 713
    aput v7, v0, v6

    .line 714
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 716
    aput v9, v0, v6

    .line 717
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 719
    aput v5, v0, v6

    .line 720
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 722
    const/4 v4, 0x5

    aput v4, v0, v6

    .line 723
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 725
    if-eqz v1, :cond_32

    .line 726
    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    .line 727
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_147

    .line 728
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 733
    :goto_12f
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 734
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v8

    .line 735
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v9

    goto/16 :goto_32

    .line 730
    :cond_147
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    goto :goto_12f

    .line 740
    :cond_14e
    const/4 v4, 0x6

    if-ne p1, v4, :cond_1bc

    .line 741
    aput v7, v0, v6

    .line 742
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 744
    aput v9, v0, v6

    .line 745
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 747
    aput v5, v0, v6

    .line 748
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 750
    const/4 v4, 0x5

    aput v4, v0, v6

    .line 751
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 753
    const/4 v4, 0x6

    aput v4, v0, v6

    .line 754
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 756
    if-eqz v1, :cond_32

    .line 757
    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    .line 758
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_1b5

    .line 759
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 764
    :goto_195
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 765
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    aget v5, v1, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 766
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    aget v5, v1, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    goto/16 :goto_32

    .line 761
    :cond_1b5
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    goto :goto_195

    .line 771
    :cond_1bc
    const/4 v4, 0x7

    if-ne p1, v4, :cond_32

    .line 772
    aput v7, v0, v6

    .line 773
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 775
    aput v9, v0, v6

    .line 776
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 778
    aput v5, v0, v6

    .line 779
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 781
    const/4 v4, 0x5

    aput v4, v0, v6

    .line 782
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 784
    const/4 v4, 0x6

    aput v4, v0, v6

    .line 785
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 787
    const/4 v4, 0x7

    aput v4, v0, v6

    .line 788
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v1, v2}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    move-result v4

    iput v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    .line 790
    if-eqz v1, :cond_32

    .line 791
    new-array v4, v5, [Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    .line 792
    iget v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mReturnValue:I

    if-ltz v4, :cond_22e

    .line 793
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v6

    .line 798
    :goto_20e
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    aget v5, v1, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 799
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    aget v5, v1, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 800
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    aget v5, v1, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    goto/16 :goto_32

    .line 795
    :cond_22e
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    goto :goto_20e

    .line 815
    :cond_235
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v6

    .line 816
    iget-object v4, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v7

    goto/16 :goto_54
.end method

.method public returnProximity()[F
    .registers 4

    .prologue
    .line 361
    const-string v0, "SensorReadManager"

    const-string v1, "returnProximity"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Proximity:[F

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->dataCheck([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Proximity:[F

    return-object v0
.end method

.method public returnTemperature()[F
    .registers 4

    .prologue
    .line 368
    const-string v0, "SensorReadManager"

    const-string v1, "returnTemperature"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Temperature:[F

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadManager;->dataCheck([F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Temperature:[F

    return-object v0
.end method

.method public sensorOff()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 249
    const-string v1, "SensorReadManager"

    const-string v2, "sensorOff"

    const-string v3, "Sensor Off"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_15

    .line 252
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 254
    :cond_15
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 255
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorListener:Lcom/sec/factory/modules/SensorReadManager$SensorListener;

    .line 256
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 257
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mBarometerSensor:Landroid/hardware/Sensor;

    .line 258
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mGyroscopeSensor:Landroid/hardware/Sensor;

    .line 259
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mLightSensor:Landroid/hardware/Sensor;

    .line 260
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mMagneticSensor:Landroid/hardware/Sensor;

    .line 261
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mProximitySensor:Landroid/hardware/Sensor;

    .line 262
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mTemperatureSensor:Landroid/hardware/Sensor;

    .line 263
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mHumiditySensor:Landroid/hardware/Sensor;

    .line 265
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Accelerometer:[F

    .line 266
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Barometer:[F

    .line 267
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Gyro:[F

    .line 268
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Light:[F

    .line 269
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Magnetic:[F

    .line 270
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Proximity:[F

    .line 271
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Temperature:[F

    .line 272
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Humidity:[F

    .line 274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3a
    iget v1, p0, Lcom/sec/factory/modules/SensorReadManager;->SENSOR_ON_ARRAY_LENGTH:I

    if-ge v0, v1, :cond_46

    .line 275
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadManager;->mSensorOn:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 276
    :cond_46
    return-void
.end method
