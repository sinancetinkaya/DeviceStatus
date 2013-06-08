.class public Lcom/sec/factory/modules/SensorReadFile;
.super Ljava/lang/Object;
.source "SensorReadFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/modules/SensorReadFile$Info;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final DEBUG:Z

.field private final INFO_ARRAY_INDEX_ACCELEROMETER:I

.field private final INFO_ARRAY_INDEX_ACCELEROMETER_CAL:I

.field private final INFO_ARRAY_INDEX_ACCELEROMETER_INTPIN:I

.field private final INFO_ARRAY_INDEX_ACCELEROMETER_N_ANGLE:I

.field private final INFO_ARRAY_INDEX_ACCELEROMETER_SELF:I

.field private final INFO_ARRAY_INDEX_BAROMETER_EEPROM:I

.field private final INFO_ARRAY_INDEX_GYRO_POWER:I

.field private final INFO_ARRAY_INDEX_GYRO_SELFTEST:I

.field private final INFO_ARRAY_INDEX_GYRO_TEMPERATURE:I

.field private final INFO_ARRAY_INDEX_LIGHT_ADC:I

.field private final INFO_ARRAY_INDEX_LIGHT_RGBW:I

.field private final INFO_ARRAY_INDEX_MAGNETIC_ADC:I

.field private final INFO_ARRAY_INDEX_MAGNETIC_DAC:I

.field private final INFO_ARRAY_INDEX_MAGNETIC_POWER_OFF:I

.field private final INFO_ARRAY_INDEX_MAGNETIC_POWER_ON:I

.field private final INFO_ARRAY_INDEX_MAGNETIC_SELF:I

.field private final INFO_ARRAY_INDEX_MAGNETIC_STATUS:I

.field private final INFO_ARRAY_INDEX_MAGNETIC_TEMP:I

.field private final INFO_ARRAY_INDEX_PROXIMITY_ADC:I

.field private final INFO_ARRAY_INDEX_PROXIMITY_AVG:I

.field private final INFO_ARRAY_INDEX_PROXIMITY_OFFSET:I

.field private final INFO_ARRAY_LENGTH:I

.field private SENSOR_READ_INTERVAL:I

.field private dummy:I

.field private mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

.field private mIsLoop:Z

.field private mModuleSensorIDArray:[I

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>([I)V
    .registers 5
    .parameter "moduleSensorID"

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "SensorReadFile"

    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadFile;->CLASS_NAME:Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/SensorReadFile;->DEBUG:Z

    .line 30
    iput v2, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    .line 31
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_ACCELEROMETER:I

    .line 32
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_ACCELEROMETER_N_ANGLE:I

    .line 33
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_ACCELEROMETER_SELF:I

    .line 34
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_ACCELEROMETER_CAL:I

    .line 35
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_ACCELEROMETER_INTPIN:I

    .line 36
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_BAROMETER_EEPROM:I

    .line 37
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_GYRO_POWER:I

    .line 38
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_GYRO_TEMPERATURE:I

    .line 39
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_GYRO_SELFTEST:I

    .line 40
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_LIGHT_ADC:I

    .line 41
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_LIGHT_RGBW:I

    .line 42
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_POWER_ON:I

    .line 43
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_POWER_OFF:I

    .line 44
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_STATUS:I

    .line 45
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_TEMP:I

    .line 46
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_DAC:I

    .line 47
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_ADC:I

    .line 48
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_SELF:I

    .line 49
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_PROXIMITY_ADC:I

    .line 50
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_PROXIMITY_AVG:I

    .line 51
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_PROXIMITY_OFFSET:I

    .line 52
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->dummy:I

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_LENGTH:I

    .line 53
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_LENGTH:I

    new-array v0, v0, [Lcom/sec/factory/modules/SensorReadFile$Info;

    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    .line 59
    iput-boolean v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mIsLoop:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadFile;->mTimer:Ljava/util/Timer;

    .line 61
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/factory/modules/SensorReadFile;->SENSOR_READ_INTERVAL:I

    .line 66
    const-string v0, "SensorReadFile"

    const-string v1, "SensorReadFile"

    const-string v2, "Sensor On"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    .line 68
    invoke-direct {p0}, Lcom/sec/factory/modules/SensorReadFile;->init()V

    .line 69
    return-void
.end method

.method private ConverterID(I)I
    .registers 4
    .parameter "moduleSensorID"

    .prologue
    .line 384
    const/4 v0, -0x1

    .line 386
    .local v0, infoArrayIndex:I
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    if-ne p1, v1, :cond_8

    .line 387
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_ACCELEROMETER:I

    .line 429
    :cond_7
    :goto_7
    return v0

    .line 388
    :cond_8
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_N_ANGLE:I

    if-ne p1, v1, :cond_f

    .line 389
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_ACCELEROMETER_N_ANGLE:I

    goto :goto_7

    .line 390
    :cond_f
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_SELF:I

    if-ne p1, v1, :cond_16

    .line 391
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_ACCELEROMETER_SELF:I

    goto :goto_7

    .line 392
    :cond_16
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_CAL:I

    if-ne p1, v1, :cond_1d

    .line 393
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_ACCELEROMETER_CAL:I

    goto :goto_7

    .line 394
    :cond_1d
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_INTPIN:I

    if-ne p1, v1, :cond_24

    .line 395
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_ACCELEROMETER_INTPIN:I

    goto :goto_7

    .line 396
    :cond_24
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____BAROMETER_EEPROM:I

    if-ne p1, v1, :cond_2b

    .line 397
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_BAROMETER_EEPROM:I

    goto :goto_7

    .line 398
    :cond_2b
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_POWER:I

    if-ne p1, v1, :cond_32

    .line 399
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_GYRO_POWER:I

    goto :goto_7

    .line 400
    :cond_32
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_TEMPERATURE:I

    if-ne p1, v1, :cond_39

    .line 401
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_GYRO_TEMPERATURE:I

    goto :goto_7

    .line 402
    :cond_39
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_SELFTEST:I

    if-ne p1, v1, :cond_40

    .line 403
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_GYRO_SELFTEST:I

    goto :goto_7

    .line 404
    :cond_40
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_ADC:I

    if-ne p1, v1, :cond_47

    .line 405
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_LIGHT_ADC:I

    goto :goto_7

    .line 406
    :cond_47
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_RGBW:I

    if-ne p1, v1, :cond_4e

    .line 407
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_LIGHT_RGBW:I

    goto :goto_7

    .line 408
    :cond_4e
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_POWER_ON:I

    if-ne p1, v1, :cond_55

    .line 409
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_POWER_ON:I

    goto :goto_7

    .line 410
    :cond_55
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_POWER_OFF:I

    if-ne p1, v1, :cond_5c

    .line 411
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_POWER_OFF:I

    goto :goto_7

    .line 412
    :cond_5c
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_STATUS:I

    if-ne p1, v1, :cond_63

    .line 413
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_STATUS:I

    goto :goto_7

    .line 414
    :cond_63
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_TEMPERATURE:I

    if-ne p1, v1, :cond_6a

    .line 415
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_TEMP:I

    goto :goto_7

    .line 416
    :cond_6a
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_DAC:I

    if-ne p1, v1, :cond_71

    .line 417
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_DAC:I

    goto :goto_7

    .line 418
    :cond_71
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    if-ne p1, v1, :cond_78

    .line 419
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_ADC:I

    goto :goto_7

    .line 420
    :cond_78
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_SELF:I

    if-ne p1, v1, :cond_7f

    .line 421
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_MAGNETIC_SELF:I

    goto :goto_7

    .line 422
    :cond_7f
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_ADC:I

    if-ne p1, v1, :cond_86

    .line 423
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_PROXIMITY_ADC:I

    goto :goto_7

    .line 424
    :cond_86
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_AVG:I

    if-ne p1, v1, :cond_8e

    .line 425
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_PROXIMITY_AVG:I

    goto/16 :goto_7

    .line 426
    :cond_8e
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_OFFSET:I

    if-ne p1, v1, :cond_7

    .line 427
    iget v0, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_INDEX_PROXIMITY_OFFSET:I

    goto/16 :goto_7
.end method

.method private checkSpec(II)V
    .registers 11
    .parameter "moduleSensorID"
    .parameter "infoArrayIndex"

    .prologue
    const/4 v7, 0x0

    .line 350
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/factory/modules/SensorReadFile;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    .line 352
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b4

    .line 353
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    aget-object v0, v4, v7

    .line 354
    .local v0, specResult:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 355
    .local v1, x:I
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 356
    .local v2, y:I
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 358
    .local v3, z:I
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 359
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    const-string v5, "OK"

    aput-object v5, v4, v7

    .line 360
    :cond_79
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 361
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    const-string v5, "NG"

    aput-object v5, v4, v7

    .line 363
    :cond_8b
    sget v4, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_DAC:I

    if-ne p1, v4, :cond_b5

    .line 364
    invoke-static {v1, v2, v3}, Lcom/sec/factory/modules/SensorCalculator;->checkSpecMagneticDAC(III)Ljava/lang/String;

    move-result-object v0

    .line 371
    :cond_93
    :goto_93
    const-string v4, "OK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    const-string v4, "NG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 373
    :cond_a3
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    aput-object v0, v4, v7

    .line 374
    const-string v4, "SensorReadFile"

    const-string v5, "checkSpec"

    const-string v6, "<Write> specResult"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .end local v0           #specResult:Ljava/lang/String;
    .end local v1           #x:I
    .end local v2           #y:I
    .end local v3           #z:I
    :cond_b4
    :goto_b4
    return-void

    .line 365
    .restart local v0       #specResult:Ljava/lang/String;
    .restart local v1       #x:I
    .restart local v2       #y:I
    .restart local v3       #z:I
    :cond_b5
    sget v4, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    if-ne p1, v4, :cond_be

    .line 366
    invoke-static {v1, v2, v3}, Lcom/sec/factory/modules/SensorCalculator;->checkSpecMagneticADC(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_93

    .line 367
    :cond_be
    sget v4, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_SELF:I

    if-ne p1, v4, :cond_93

    .line 368
    invoke-static {v1, v2, v3}, Lcom/sec/factory/modules/SensorCalculator;->checkSpecMagneticSelf(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_93

    .line 376
    :cond_c7
    const-string v4, "SensorReadFile"

    const-string v5, "checkSpec"

    const-string v6, "<Write> default"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4
.end method

.method private dataCheck([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "data"

    .prologue
    .line 435
    const-string v1, ""

    .line 436
    .local v1, result:Ljava/lang/String;
    if-eqz p1, :cond_36

    .line 437
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_38

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_33

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 443
    .end local v0           #i:I
    :cond_36
    const-string v1, "Data : null"

    .line 446
    :cond_38
    return-object v1
.end method

.method private init()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 83
    const-string v2, "SensorReadFile"

    const-string v3, "init"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INFO_ARRAY_LENGTH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_LENGTH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v1, -0x1

    .line 87
    .local v1, infoArrayIndex:I
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    if-eqz v2, :cond_307

    .line 88
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_310

    .line 90
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    if-ne v2, v3, :cond_af

    .line 91
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 92
    if-ge v6, v1, :cond_45

    .line 93
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____ACCELEROMETER"

    const-string v5, "ACCEL_SENSOR_RAW"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 202
    :cond_45
    :goto_45
    if-ge v6, v1, :cond_2fc

    iget v2, p0, Lcom/sec/factory/modules/SensorReadFile;->INFO_ARRAY_LENGTH:I

    if-ge v1, v2, :cond_2fc

    .line 203
    const-string v2, "SensorReadFile"

    const-string v3, "init"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mInfo - mName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/sec/factory/modules/SensorReadFile$Info;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v2, "SensorReadFile"

    const-string v3, "init"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mInfo - mFilePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/sec/factory/modules/SensorReadFile$Info;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "SensorReadFile"

    const-string v3, "init"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mInfo - mIsExistFile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/sec/factory/modules/SensorReadFile$Info;->mIsExistFile:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_ab
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_23

    .line 95
    :cond_af
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_N_ANGLE:I

    if-ne v2, v3, :cond_ce

    .line 96
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_N_ANGLE:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 97
    if-ge v6, v1, :cond_45

    .line 98
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____ACCELEROMETER_N_ANGLE"

    const-string v5, "ACCEL_SENSOR_RAW"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 100
    :cond_ce
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_SELF:I

    if-ne v2, v3, :cond_ed

    .line 101
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_SELF:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 102
    if-ge v6, v1, :cond_45

    .line 103
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____ACCELEROMETER_SELF"

    const-string v5, "ACCEL_SENSOR_RAW"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 105
    :cond_ed
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_CAL:I

    if-ne v2, v3, :cond_10c

    .line 106
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_CAL:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 107
    if-ge v6, v1, :cond_45

    .line 108
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____ACCELEROMETER_CAL"

    const-string v5, "ACCEL_SENSOR_CAL"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 110
    :cond_10c
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_INTPIN:I

    if-ne v2, v3, :cond_12b

    .line 111
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_INTPIN:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 112
    if-ge v6, v1, :cond_45

    .line 113
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____ACCELEROMETER_INTPIN"

    const-string v5, "ACCEL_SENSOR_INTPIN"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 117
    :cond_12b
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____BAROMETER_EEPROM:I

    if-ne v2, v3, :cond_14a

    .line 118
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____BAROMETER_EEPROM:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 119
    if-ge v6, v1, :cond_45

    .line 120
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____BAROMETER_EEPROM"

    const-string v5, "BAROME_EEPROM"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 124
    :cond_14a
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_POWER:I

    if-ne v2, v3, :cond_169

    .line 125
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_POWER:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 126
    if-ge v6, v1, :cond_45

    .line 127
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____GYRO_POWER"

    const-string v5, "GYRO_SENSOR_POWER_ON"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 129
    :cond_169
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_TEMPERATURE:I

    if-ne v2, v3, :cond_188

    .line 130
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_TEMPERATURE:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 131
    if-ge v6, v1, :cond_45

    .line 132
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____GYRO_TEMPERATURE"

    const-string v5, "GYRO_SENSOR_TEMP"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 134
    :cond_188
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_SELFTEST:I

    if-ne v2, v3, :cond_1a7

    .line 135
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_SELFTEST:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 136
    if-ge v6, v1, :cond_45

    .line 137
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____GYRO_SELF"

    const-string v5, "GYRO_SENSOR_SELFTEST"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 141
    :cond_1a7
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_ADC:I

    if-ne v2, v3, :cond_1c6

    .line 142
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_ADC:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 143
    if-ge v6, v1, :cond_45

    .line 144
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____LIGHT_ADC"

    const-string v5, "LIGHT_SENSOR_RAW"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 146
    :cond_1c6
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_RGBW:I

    if-ne v2, v3, :cond_1e5

    .line 147
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_RGBW:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 148
    if-ge v6, v1, :cond_45

    .line 149
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____LIGHT_ADC"

    const-string v5, "LIGHT_SENSOR_RAW"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 153
    :cond_1e5
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_POWER_ON:I

    if-ne v2, v3, :cond_204

    .line 154
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_POWER_ON:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 155
    if-ge v6, v1, :cond_45

    .line 156
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____MAGNETIC_POWER_ON"

    const-string v5, "GEOMAGNETIC_SENSOR_POWER"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 158
    :cond_204
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_STATUS:I

    if-ne v2, v3, :cond_223

    .line 159
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_STATUS:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 160
    if-ge v6, v1, :cond_45

    .line 161
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____MAGNETIC_STATUS"

    const-string v5, "GEOMAGNETIC_SENSOR_STATUS"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 163
    :cond_223
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_TEMPERATURE:I

    if-ne v2, v3, :cond_242

    .line 164
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_TEMPERATURE:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 165
    if-ge v6, v1, :cond_45

    .line 166
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____MAGNETIC_TEMPERATURE"

    const-string v5, "GEOMAGNETIC_SENSOR_TEMP"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 168
    :cond_242
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_DAC:I

    if-ne v2, v3, :cond_261

    .line 169
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_DAC:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 170
    if-ge v6, v1, :cond_45

    .line 171
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____MAGNETIC_DAC"

    const-string v5, "GEOMAGNETIC_SENSOR_DAC"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 173
    :cond_261
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    if-ne v2, v3, :cond_280

    .line 174
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 175
    if-ge v6, v1, :cond_45

    .line 176
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____MAGNETIC_ADC"

    const-string v5, "GEOMAGNETIC_SENSOR_ADC"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 178
    :cond_280
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_SELF:I

    if-ne v2, v3, :cond_29f

    .line 179
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_SELF:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 180
    if-ge v6, v1, :cond_45

    .line 181
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____MAGNETIC_SELF"

    const-string v5, "GEOMAGNETIC_SENSOR_SELFTEST"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 185
    :cond_29f
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_ADC:I

    if-ne v2, v3, :cond_2be

    .line 186
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_ADC:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 187
    if-ge v6, v1, :cond_45

    .line 188
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____PROXIMITY_ADC"

    const-string v5, "PROXI_SENSOR_ADC"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 190
    :cond_2be
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_AVG:I

    if-ne v2, v3, :cond_2dd

    .line 191
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_AVG:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 192
    if-ge v6, v1, :cond_45

    .line 193
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____PROXIMITY_AVG"

    const-string v5, "PROXI_SENSOR_ADC_AVG"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 195
    :cond_2dd
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_OFFSET:I

    if-ne v2, v3, :cond_45

    .line 196
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_OFFSET:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v1

    .line 197
    if-ge v6, v1, :cond_45

    .line 198
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    new-instance v3, Lcom/sec/factory/modules/SensorReadFile$Info;

    const-string v4, "ID_FILE____PROXIMITY_OFFSET"

    const-string v5, "PROXI_SENSOR_OFFSET"

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/factory/modules/SensorReadFile$Info;-><init>(Lcom/sec/factory/modules/SensorReadFile;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    goto/16 :goto_45

    .line 210
    :cond_2fc
    const-string v2, "SensorReadFile"

    const-string v3, "init"

    const-string v4, "ID : Unknown"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ab

    .line 214
    .end local v0           #i:I
    :cond_307
    const-string v2, "SensorReadFile"

    const-string v3, "init"

    const-string v4, "mModuleSensorIDArray null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_310
    return-void
.end method


# virtual methods
.method public getSensorReadData()V
    .registers 9

    .prologue
    .line 276
    const-string v3, ""

    .line 277
    .local v3, mTemp:Ljava/lang/String;
    const/4 v2, -0x1

    .line 278
    .local v2, infoArrayIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    array-length v4, v4

    if-ge v1, v4, :cond_69

    .line 279
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    if-eqz v4, :cond_15

    .line 280
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mModuleSensorIDArray:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v2

    .line 282
    :cond_15
    const/4 v4, -0x1

    if-ge v4, v2, :cond_4a

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    if-eqz v4, :cond_4a

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, v2

    if-eqz v4, :cond_4a

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mIsExistFile:Z

    if-eqz v4, :cond_4a

    .line 284
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    if-eqz v4, :cond_4a

    .line 285
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    if-eqz v3, :cond_4a

    :try_start_3a
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    if-eqz v4, :cond_4a

    .line 288
    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, v2

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4a} :catch_4d

    .line 278
    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 289
    :catch_4d
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SensorReadFile"

    const-string v5, "SensorReadThread-run"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execption : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 295
    .end local v0           #e:Ljava/lang/Exception;
    :cond_69
    return-void
.end method

.method public isSensorOn(I)Z
    .registers 4
    .parameter "moduleSensorID"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v0

    .line 220
    .local v0, infoArrayIndex:I
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    .line 221
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/sec/factory/modules/SensorReadFile$Info;->mIsExistFile:Z

    .line 223
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public returnData(I)[Ljava/lang/String;
    .registers 8
    .parameter "moduleSensorID"

    .prologue
    const/4 v3, -0x1

    .line 313
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/SensorReadFile;->ConverterID(I)I

    move-result v0

    .line 315
    .local v0, infoArrayIndex:I
    iget-boolean v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mIsLoop:Z

    if-eqz v2, :cond_3e

    .line 343
    :cond_9
    :goto_9
    const-string v2, "SensorReadFile"

    const-string v3, "returnData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/sec/factory/modules/SensorReadFile$Info;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/factory/modules/SensorReadFile;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    return-object v2

    .line 318
    :cond_3e
    const-string v1, ""

    .line 319
    .local v1, mTemp:Ljava/lang/String;
    if-ge v3, v0, :cond_7f

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/sec/factory/modules/SensorReadFile$Info;->mIsExistFile:Z

    if-eqz v2, :cond_7f

    .line 321
    const-string v2, "SensorReadFile"

    const-string v3, "returnData"

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/sec/factory/modules/SensorReadFile$Info;->mFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_9

    .line 324
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v2, v2, v0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    .line 326
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_DAC:I

    if-eq p1, v2, :cond_7b

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    if-eq p1, v2, :cond_7b

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_SELF:I

    if-ne p1, v2, :cond_9

    .line 329
    :cond_7b
    invoke-direct {p0, p1, v0}, Lcom/sec/factory/modules/SensorReadFile;->checkSpec(II)V

    goto :goto_9

    .line 332
    :cond_7f
    if-ge v3, v0, :cond_9

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/sec/factory/modules/SensorReadFile$Info;->mIsExistFile:Z

    if-nez v2, :cond_9

    .line 334
    const-string v2, "SensorReadFile"

    const-string v3, "read no file"

    iget-object v4, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadFile$Info;->mName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v1, "0"

    .line 336
    if-eqz v1, :cond_9

    .line 337
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadFile;->mInfo:[Lcom/sec/factory/modules/SensorReadFile$Info;

    aget-object v2, v2, v0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/factory/modules/SensorReadFile$Info;->mBuffer_SensorValue:[Ljava/lang/String;

    goto/16 :goto_9
.end method

.method public sensorOff()V
    .registers 4

    .prologue
    .line 72
    const-string v0, "SensorReadFile"

    const-string v1, "sensorOff"

    const-string v2, "Sensor Off"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadFile;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1e

    .line 74
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadFile;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadFile;->mTimer:Ljava/util/Timer;

    .line 76
    const-string v0, "SensorReadFile"

    const-string v1, "mTimer canceled"

    const-string v2, "..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1e
    return-void
.end method

.method public startLoop()V
    .registers 7

    .prologue
    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/SensorReadFile;->mIsLoop:Z

    .line 299
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadFile;->mTimer:Ljava/util/Timer;

    .line 300
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadFile;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/factory/modules/SensorReadFile$1;

    invoke-direct {v1, p0}, Lcom/sec/factory/modules/SensorReadFile$1;-><init>(Lcom/sec/factory/modules/SensorReadFile;)V

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/sec/factory/modules/SensorReadFile;->SENSOR_READ_INTERVAL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 310
    return-void
.end method
