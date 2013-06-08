.class public Lcom/sec/factory/modules/SensorDeviceInfo;
.super Ljava/lang/Object;
.source "SensorDeviceInfo.java"


# static fields
.field private static DUMMY:I

.field public static final TARGET_FILE:I

.field public static final TARGET_XML:I

.field public static final TYPE_ACCELEROMETER:I

.field public static final TYPE_BAROMETER:I

.field public static final TYPE_GEOMAGNETIC:I

.field public static final TYPE_GRIP:I

.field public static final TYPE_GYRO:I

.field public static final TYPE_HUMIDITY:I

.field public static final TYPE_LIGHT:I

.field public static final TYPE_PROXIMITY:I

.field public static final TYPE_TEMPERATURE:I

.field private static mSensorNameFileAccelerometer:Ljava/lang/String;

.field private static mSensorNameFileBarometer:Ljava/lang/String;

.field private static mSensorNameFileGeomagnetic:Ljava/lang/String;

.field private static mSensorNameFileGrip:Ljava/lang/String;

.field private static mSensorNameFileGyro:Ljava/lang/String;

.field private static mSensorNameFileHumidity:Ljava/lang/String;

.field private static mSensorNameFileLight:Ljava/lang/String;

.field private static mSensorNameFileProximity:Ljava/lang/String;

.field private static mSensorNameFileTemperature:Ljava/lang/String;

.field private static mSensorNameXMLAccelerometer:Ljava/lang/String;

.field private static mSensorNameXMLBarometer:Ljava/lang/String;

.field private static mSensorNameXMLGeomagnetic:Ljava/lang/String;

.field private static mSensorNameXMLGrip:Ljava/lang/String;

.field private static mSensorNameXMLGyro:Ljava/lang/String;

.field private static mSensorNameXMLHumidity:Ljava/lang/String;

.field private static mSensorNameXMLLight:Ljava/lang/String;

.field private static mSensorNameXMLProximity:Ljava/lang/String;

.field private static mSensorNameXMLTemperature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 10
    const/4 v0, 0x0

    sput v0, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    .line 11
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    .line 12
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    .line 13
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_ACCELEROMETER:I

    .line 14
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_BAROMETER:I

    .line 15
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GEOMAGNETIC:I

    .line 16
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GRIP:I

    .line 17
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GYRO:I

    .line 18
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_LIGHT:I

    .line 19
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_PROXIMITY:I

    .line 20
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_TEMPERATURE:I

    .line 21
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorDeviceInfo;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_HUMIDITY:I

    .line 23
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLAccelerometer:Ljava/lang/String;

    .line 24
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLBarometer:Ljava/lang/String;

    .line 25
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLGeomagnetic:Ljava/lang/String;

    .line 26
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLGrip:Ljava/lang/String;

    .line 27
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLGyro:Ljava/lang/String;

    .line 28
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLLight:Ljava/lang/String;

    .line 29
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLProximity:Ljava/lang/String;

    .line 30
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLTemperature:Ljava/lang/String;

    .line 31
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLHumidity:Ljava/lang/String;

    .line 32
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileAccelerometer:Ljava/lang/String;

    .line 33
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileBarometer:Ljava/lang/String;

    .line 34
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileGeomagnetic:Ljava/lang/String;

    .line 35
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileGrip:Ljava/lang/String;

    .line 36
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileGyro:Ljava/lang/String;

    .line 37
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileLight:Ljava/lang/String;

    .line 38
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileProximity:Ljava/lang/String;

    .line 39
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileTemperature:Ljava/lang/String;

    .line 40
    sput-object v2, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileHumidity:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSensorName(II)Ljava/lang/String;
    .registers 7
    .parameter "sensorType"
    .parameter "readTarget"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 46
    .local v0, returnSensorName:Ljava/lang/String;
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    if-ne p1, v1, :cond_aa

    .line 48
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_ACCELEROMETER:I

    if-ne p0, v1, :cond_36

    .line 49
    sget-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLAccelerometer:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 50
    const-string v1, "SENSOR_NAME_ACCELEROMETER"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLAccelerometer:Ljava/lang/String;

    .line 51
    :cond_15
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLAccelerometer:Ljava/lang/String;

    .line 159
    :goto_17
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    if-ne p1, v1, :cond_154

    .line 160
    const-string v1, "SensorDeviceInfo"

    const-string v2, "getSensorName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML => return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_35
    :goto_35
    return-object v0

    .line 54
    :cond_36
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_BAROMETER:I

    if-ne p0, v1, :cond_3d

    .line 55
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLBarometer:Ljava/lang/String;

    goto :goto_17

    .line 58
    :cond_3d
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GEOMAGNETIC:I

    if-ne p0, v1, :cond_50

    .line 59
    sget-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLGeomagnetic:Ljava/lang/String;

    if-nez v1, :cond_4d

    .line 60
    const-string v1, "SENSOR_NAME_MAGNETIC"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLGeomagnetic:Ljava/lang/String;

    .line 61
    :cond_4d
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLGeomagnetic:Ljava/lang/String;

    goto :goto_17

    .line 64
    :cond_50
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GRIP:I

    if-ne p0, v1, :cond_57

    .line 65
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLGrip:Ljava/lang/String;

    goto :goto_17

    .line 68
    :cond_57
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GYRO:I

    if-ne p0, v1, :cond_6a

    .line 69
    sget-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLGyro:Ljava/lang/String;

    if-nez v1, :cond_67

    .line 70
    const-string v1, "SENSOR_NAME_GYROSCOPE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLGyro:Ljava/lang/String;

    .line 71
    :cond_67
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLGyro:Ljava/lang/String;

    goto :goto_17

    .line 74
    :cond_6a
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_LIGHT:I

    if-ne p0, v1, :cond_7d

    .line 75
    sget-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLLight:Ljava/lang/String;

    if-nez v1, :cond_7a

    .line 76
    const-string v1, "SENSOR_NAME_LIGHT"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLLight:Ljava/lang/String;

    .line 77
    :cond_7a
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLLight:Ljava/lang/String;

    goto :goto_17

    .line 80
    :cond_7d
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_PROXIMITY:I

    if-ne p0, v1, :cond_90

    .line 81
    sget-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLProximity:Ljava/lang/String;

    if-nez v1, :cond_8d

    .line 82
    const-string v1, "SENSOR_NAME_PROXIMITY"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLProximity:Ljava/lang/String;

    .line 83
    :cond_8d
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLProximity:Ljava/lang/String;

    goto :goto_17

    .line 86
    :cond_90
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_TEMPERATURE:I

    if-ne p0, v1, :cond_97

    .line 87
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLTemperature:Ljava/lang/String;

    goto :goto_17

    .line 90
    :cond_97
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_HUMIDITY:I

    if-ne p0, v1, :cond_9f

    .line 91
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameXMLHumidity:Ljava/lang/String;

    goto/16 :goto_17

    .line 95
    :cond_9f
    const-string v1, "SensorDeviceInfo"

    const-string v2, "getSensorName"

    const-string v3, "TARGET_XML - sensorType : Unknown"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 100
    :cond_aa
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    if-ne p1, v1, :cond_149

    .line 102
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_ACCELEROMETER:I

    if-ne p0, v1, :cond_c2

    .line 103
    sget-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileAccelerometer:Ljava/lang/String;

    if-nez v1, :cond_be

    .line 104
    const-string v1, "ACCEL_SENSOR_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileAccelerometer:Ljava/lang/String;

    .line 105
    :cond_be
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileAccelerometer:Ljava/lang/String;

    goto/16 :goto_17

    .line 108
    :cond_c2
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_BAROMETER:I

    if-ne p0, v1, :cond_d6

    .line 109
    sget-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileBarometer:Ljava/lang/String;

    if-nez v1, :cond_d2

    .line 110
    const-string v1, "BAROMETER_SENSOR_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileBarometer:Ljava/lang/String;

    .line 111
    :cond_d2
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileBarometer:Ljava/lang/String;

    goto/16 :goto_17

    .line 114
    :cond_d6
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GEOMAGNETIC:I

    if-ne p0, v1, :cond_ea

    .line 115
    sget-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileGeomagnetic:Ljava/lang/String;

    if-nez v1, :cond_e6

    .line 116
    const-string v1, "GEOMAGNETIC_SENSOR_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileGeomagnetic:Ljava/lang/String;

    .line 117
    :cond_e6
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileGeomagnetic:Ljava/lang/String;

    goto/16 :goto_17

    .line 120
    :cond_ea
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GRIP:I

    if-ne p0, v1, :cond_f2

    .line 121
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileGrip:Ljava/lang/String;

    goto/16 :goto_17

    .line 124
    :cond_f2
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GYRO:I

    if-ne p0, v1, :cond_106

    .line 125
    sget-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileGyro:Ljava/lang/String;

    if-nez v1, :cond_102

    .line 126
    const-string v1, "GYRO_SENSOR_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileGyro:Ljava/lang/String;

    .line 127
    :cond_102
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileGyro:Ljava/lang/String;

    goto/16 :goto_17

    .line 130
    :cond_106
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_LIGHT:I

    if-ne p0, v1, :cond_11a

    .line 131
    sget-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileLight:Ljava/lang/String;

    if-nez v1, :cond_116

    .line 132
    const-string v1, "LIGHT_SENSOR_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileLight:Ljava/lang/String;

    .line 133
    :cond_116
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileLight:Ljava/lang/String;

    goto/16 :goto_17

    .line 136
    :cond_11a
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_PROXIMITY:I

    if-ne p0, v1, :cond_12e

    .line 137
    sget-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileProximity:Ljava/lang/String;

    if-nez v1, :cond_12a

    .line 138
    const-string v1, "PROXI_SENSOR_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileProximity:Ljava/lang/String;

    .line 139
    :cond_12a
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileProximity:Ljava/lang/String;

    goto/16 :goto_17

    .line 142
    :cond_12e
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_TEMPERATURE:I

    if-ne p0, v1, :cond_136

    .line 143
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileTemperature:Ljava/lang/String;

    goto/16 :goto_17

    .line 146
    :cond_136
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_HUMIDITY:I

    if-ne p0, v1, :cond_13e

    .line 147
    sget-object v0, Lcom/sec/factory/modules/SensorDeviceInfo;->mSensorNameFileHumidity:Ljava/lang/String;

    goto/16 :goto_17

    .line 151
    :cond_13e
    const-string v1, "SensorDeviceInfo"

    const-string v2, "getSensorName"

    const-string v3, "TARGET_FILE - sensorType : Unknown"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 156
    :cond_149
    const-string v1, "SensorDeviceInfo"

    const-string v2, "getSensorName"

    const-string v3, "readTarget : Unknown"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 161
    :cond_154
    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_FILE:I

    if-ne p1, v1, :cond_35

    .line 162
    const-string v1, "SensorDeviceInfo"

    const-string v2, "getSensorName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File => return : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35
.end method
