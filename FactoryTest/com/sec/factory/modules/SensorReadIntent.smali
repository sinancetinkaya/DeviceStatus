.class public Lcom/sec/factory/modules/SensorReadIntent;
.super Ljava/lang/Object;
.source "SensorReadIntent.java"


# instance fields
.field private final ACCELERMETER_INTENT_ACTION_READ:Ljava/lang/String;

.field private final ACCELERMETER_INTENT_ACTION_STOP:Ljava/lang/String;

.field private final ACCEL_COUNT_MAX:I

.field private final CLASS_NAME:Ljava/lang/String;

.field private final CP_INTENT_ACTION_READ:Ljava/lang/String;

.field private final DEBUG:Z

.field private DUMMY:I

.field private final GRIP_COUNT_MAX:I

.field private final GRIP_INTENT_ACTION_READ:Ljava/lang/String;

.field private final GRIP_INTENT_ACTION_READ_LTE:Ljava/lang/String;

.field private final GRIP_INTENT_ACTION_READ_OTHER:Ljava/lang/String;

.field private final GRIP_INTENT_ACTION_STOP:Ljava/lang/String;

.field private final GRIP_VALUE__INTENT_EXTRA_NAME:Ljava/lang/String;

.field private final GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_1:Ljava/lang/String;

.field private final GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_1N2:Ljava/lang/String;

.field private final GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_1N2N3:Ljava/lang/String;

.field private final GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_1N3:Ljava/lang/String;

.field private final GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_2:Ljava/lang/String;

.field private final GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_2N3:Ljava/lang/String;

.field private final GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_3:Ljava/lang/String;

.field private final GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_HC_0000:Ljava/lang/String;

.field private final GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_HC_0100:Ljava/lang/String;

.field private final GRIP_VALUE__INTENT_EXTRA_VALUE__RELEASE_ALL:Ljava/lang/String;

.field private final SENSOR_ON_ARRAY_INDEX_GRIP:I

.field private final SENSOR_ON_ARRAY_LENGTH:I

.field private count_Grip:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBuffer_SensorValue_CPsAccelerometer:[I

.field private mBuffer_SensorValue_Grip:[I

.field private mContext:Landroid/content/Context;

.field private mModuleSensorIDArray:[I

.field private mSensorOn:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;[I)V
    .registers 11
    .parameter "context"
    .parameter "moduleSensorID"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v2, "SensorReadIntent"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->CLASS_NAME:Ljava/lang/String;

    .line 15
    iput-boolean v7, p0, Lcom/sec/factory/modules/SensorReadIntent;->DEBUG:Z

    .line 20
    iput v6, p0, Lcom/sec/factory/modules/SensorReadIntent;->DUMMY:I

    .line 21
    iget v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->DUMMY:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/factory/modules/SensorReadIntent;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->SENSOR_ON_ARRAY_INDEX_GRIP:I

    .line 23
    iget v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->DUMMY:I

    iput v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->SENSOR_ON_ARRAY_LENGTH:I

    .line 24
    iget v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->SENSOR_ON_ARRAY_LENGTH:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mSensorOn:[Z

    .line 30
    const-string v2, "com.sec.android.app.factorytest"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->CP_INTENT_ACTION_READ:Ljava/lang/String;

    .line 31
    const-string v2, "030005"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_INTENT_ACTION_READ:Ljava/lang/String;

    .line 32
    const-string v2, "03000b"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_INTENT_ACTION_READ_LTE:Ljava/lang/String;

    .line 33
    const-string v2, "07000b"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_INTENT_ACTION_READ_OTHER:Ljava/lang/String;

    .line 34
    const-string v2, "07000c"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->ACCELERMETER_INTENT_ACTION_READ:Ljava/lang/String;

    .line 41
    const-string v2, "com.android.samsungtest.GripTestStop"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_INTENT_ACTION_STOP:Ljava/lang/String;

    .line 42
    const-string v2, "COMMAND"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_VALUE__INTENT_EXTRA_NAME:Ljava/lang/String;

    .line 43
    const-string v2, "010000000000"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_1:Ljava/lang/String;

    .line 46
    const-string v2, "000001000000"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_2:Ljava/lang/String;

    .line 49
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_3:Ljava/lang/String;

    .line 51
    const-string v2, "010001000000"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_1N2:Ljava/lang/String;

    .line 56
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_1N3:Ljava/lang/String;

    .line 58
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_2N3:Ljava/lang/String;

    .line 60
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_1N2N3:Ljava/lang/String;

    .line 62
    const-string v2, "000000000000"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_VALUE__INTENT_EXTRA_VALUE__RELEASE_ALL:Ljava/lang/String;

    .line 68
    const-string v2, "0100"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_HC_0100:Ljava/lang/String;

    .line 69
    const-string v2, "0000"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_VALUE__INTENT_EXTRA_VALUE__DETECT_SENSOR_HC_0000:Ljava/lang/String;

    .line 76
    const-string v2, "com.android.samsungtest.CpAccelermeterOff"

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->ACCELERMETER_INTENT_ACTION_STOP:Ljava/lang/String;

    .line 77
    iput v5, p0, Lcom/sec/factory/modules/SensorReadIntent;->ACCEL_COUNT_MAX:I

    .line 80
    iput v5, p0, Lcom/sec/factory/modules/SensorReadIntent;->GRIP_COUNT_MAX:I

    .line 84
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    .line 85
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_CPsAccelerometer:[I

    .line 209
    new-instance v2, Lcom/sec/factory/modules/SensorReadIntent$1;

    invoke-direct {v2, p0}, Lcom/sec/factory/modules/SensorReadIntent$1;-><init>(Lcom/sec/factory/modules/SensorReadIntent;)V

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    const-string v2, "SensorReadIntent"

    const-string v3, "SensorReadIntent"

    const-string v4, "Sensor On"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadIntent;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mModuleSensorIDArray:[I

    .line 95
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    .line 98
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_CPsAccelerometer:[I

    .line 100
    const/4 v1, -0x1

    .line 102
    .local v1, sensorOnArrayIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8f
    iget v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->SENSOR_ON_ARRAY_LENGTH:I

    if-ge v0, v2, :cond_9a

    .line 103
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mSensorOn:[Z

    aput-boolean v6, v2, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 105
    :cond_9a
    const/4 v0, 0x0

    :goto_9b
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mModuleSensorIDArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_e8

    .line 106
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    if-ne v2, v3, :cond_d3

    .line 107
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mSensorOn:[Z

    iget v3, p0, Lcom/sec/factory/modules/SensorReadIntent;->SENSOR_ON_ARRAY_INDEX_GRIP:I

    aget-boolean v2, v2, v3

    if-nez v2, :cond_c9

    .line 108
    const-string v2, "SensorReadIntent"

    const-string v3, "SensorReadIntent"

    const-string v4, "Grip Sensor"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadIntent;->ConverterID(I)I

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mSensorOn:[Z

    aput-boolean v7, v2, v1

    .line 121
    invoke-direct {p0}, Lcom/sec/factory/modules/SensorReadIntent;->registerReceiver_Grip()V

    .line 105
    :cond_c6
    :goto_c6
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 124
    :cond_c9
    const-string v2, "SensorReadIntent"

    const-string v3, "SensorReadIntent"

    const-string v4, "Grip Sensor - On"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c6

    .line 127
    :cond_d3
    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mModuleSensorIDArray:[I

    aget v2, v2, v0

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__CP_ACCELEROMETER:I

    if-ne v2, v3, :cond_c6

    .line 128
    const-string v2, "SensorReadIntent"

    const-string v3, "SensorReadIntent"

    const-string v4, "CP Accelerometer Sensor - On"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/sec/factory/modules/SensorReadIntent;->registerReceiver_CPAccelerometer()V

    goto :goto_c6

    .line 135
    :cond_e8
    return-void
.end method

.method private ConverterID(I)I
    .registers 4
    .parameter "moduleSensorID"

    .prologue
    .line 361
    const/4 v0, -0x1

    .line 362
    .local v0, sensorOnArrayIndex:I
    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    if-ne p1, v1, :cond_7

    .line 363
    iget v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->SENSOR_ON_ARRAY_INDEX_GRIP:I

    .line 366
    :cond_7
    return v0
.end method

.method static synthetic access$000(Lcom/sec/factory/modules/SensorReadIntent;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/SensorReadIntent;->setValueGrip(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/factory/modules/SensorReadIntent;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/SensorReadIntent;->setValueCPsAccelerometerData(Ljava/lang/String;)V

    return-void
.end method

.method private dataCheck([I)Ljava/lang/String;
    .registers 6
    .parameter "data"

    .prologue
    .line 372
    const-string v1, ""

    .line 373
    .local v1, result:Ljava/lang/String;
    if-eqz p1, :cond_36

    .line 374
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_38

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_33

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 380
    .end local v0           #i:I
    :cond_36
    const-string v1, "Data : null"

    .line 383
    :cond_38
    return-object v1
.end method

.method private registerReceiver_CPAccelerometer()V
    .registers 4

    .prologue
    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.factorytest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "com.android.samsungtest.CpAccelermeterOff"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    return-void
.end method

.method private registerReceiver_Grip()V
    .registers 4

    .prologue
    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.factorytest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "com.android.samsungtest.GripTestStop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadIntent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    return-void
.end method

.method private setValueCPsAccelerometerData(Ljava/lang/String;)V
    .registers 13
    .parameter "value"

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x1

    const/16 v9, 0x10

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, xData:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x6

    const/16 v5, 0x8

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, yData:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    const/16 v5, 0xc

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    const/16 v5, 0xa

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, zData:Ljava/lang/String;
    const-string v3, "SensorReadIntent"

    const-string v4, "setValueCPsAccelerometerData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xData=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "],yData=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "],zData=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_CPsAccelerometer:[I

    invoke-static {v1, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-short v4, v4

    mul-int/lit8 v4, v4, -0x1

    aput v4, v3, v8

    .line 338
    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_CPsAccelerometer:[I

    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-short v4, v4

    mul-int/lit8 v4, v4, -0x1

    aput v4, v3, v10

    .line 340
    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_CPsAccelerometer:[I

    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-short v4, v4

    aput v4, v3, v7

    .line 341
    const-string v3, "SensorReadIntent"

    const-string v4, "setValueCPsAccelerometerData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_CPsAccelerometer:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "],y=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_CPsAccelerometer:[I

    aget v6, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "],z=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_CPsAccelerometer:[I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method private setValueGrip(Ljava/lang/String;)V
    .registers 9
    .parameter "value"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 254
    const-string v0, "SensorReadIntent"

    const-string v1, "setValueGrip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/16 v0, 0x22

    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->count_Grip:I

    .line 258
    const-string v0, "010000000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 259
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v4

    .line 260
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v5

    .line 261
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v6

    .line 308
    :goto_45
    iget v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->count_Grip:I

    if-ne v0, v5, :cond_65

    .line 309
    const-string v0, "010000000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "000001000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 311
    :cond_59
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v4

    .line 312
    :cond_5d
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v5

    .line 313
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v6

    .line 315
    :cond_65
    return-void

    .line 262
    :cond_66
    const-string v0, "000001000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 263
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v4

    .line 264
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v5

    .line 265
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v6

    goto :goto_45

    .line 266
    :cond_7b
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 267
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v4

    .line 268
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v5

    .line 269
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v6

    goto :goto_45

    .line 270
    :cond_90
    const-string v0, "010001000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 271
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v4

    .line 272
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v5

    .line 273
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v6

    goto :goto_45

    .line 274
    :cond_a5
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 275
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v4

    .line 276
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v5

    .line 277
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v6

    goto :goto_45

    .line 278
    :cond_ba
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 279
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v4

    .line 280
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v5

    .line 281
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v6

    goto/16 :goto_45

    .line 282
    :cond_d0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 283
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v4

    .line 284
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v5

    .line 285
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v6

    goto/16 :goto_45

    .line 286
    :cond_e6
    const-string v0, "000000000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 287
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v4

    .line 288
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v5

    .line 289
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v6

    goto/16 :goto_45

    .line 293
    :cond_fc
    const-string v0, "0100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 294
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v4

    .line 295
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v5

    .line 296
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v6

    goto/16 :goto_45

    .line 297
    :cond_112
    const-string v0, "0000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 298
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v5, v0, v4

    .line 299
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v5

    .line 300
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    aput v4, v0, v6

    goto/16 :goto_45

    .line 305
    :cond_128
    const-string v0, "SensorReadIntent"

    const-string v1, "setValueGrip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_45
.end method

.method private unregisterReceiver_CPAccelerometer()V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    .line 203
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    :cond_b
    return-void
.end method

.method private unregisterReceiver_Grip()V
    .registers 4

    .prologue
    .line 189
    const-string v0, "SensorReadIntent"

    const-string v1, "unregisterReceiver_Grip"

    const-string v2, "unregisterReceiver_Grip"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_14

    .line 191
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    :cond_14
    return-void
.end method


# virtual methods
.method public disableReceiver_CPsAccelerometer()V
    .registers 4

    .prologue
    .line 165
    const-string v0, "SensorReadIntent"

    const-string v1, "disableBroadcastReceiverCPsAccelerometer"

    const-string v2, "CP\'s Acceler... OFF"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_CPsAccelerometer:[I

    .line 167
    invoke-direct {p0}, Lcom/sec/factory/modules/SensorReadIntent;->unregisterReceiver_CPAccelerometer()V

    .line 168
    return-void
.end method

.method public isSensorOn(I)Z
    .registers 4
    .parameter "moduleSensorID"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/SensorReadIntent;->ConverterID(I)I

    move-result v0

    .line 176
    .local v0, sensorOnArrayIndex:I
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadIntent;->mSensorOn:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public returnCPsAccelerometerData()[I
    .registers 4

    .prologue
    .line 349
    const-string v0, "SensorReadIntent"

    const-string v1, "returnCPsAccelerometerData"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_CPsAccelerometer:[I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadIntent;->dataCheck([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_CPsAccelerometer:[I

    return-object v0
.end method

.method public returnGrip()[I
    .registers 4

    .prologue
    .line 321
    const-string v0, "SensorReadIntent"

    const-string v1, "returnGrip"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorReadIntent;->dataCheck([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    return-object v0
.end method

.method public sensorOff()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 138
    const-string v1, "SensorReadIntent"

    const-string v2, "sensorOff"

    const-string v3, "Grip Sensor Off"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadIntent;->mModuleSensorIDArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 140
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadIntent;->mModuleSensorIDArray:[I

    aget v1, v1, v0

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    if-ne v1, v2, :cond_26

    .line 141
    const-string v1, "SensorReadIntent"

    const-string v2, "sensorOff"

    const-string v3, "Grip Sensor"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadIntent;->mBuffer_SensorValue_Grip:[I

    .line 151
    invoke-direct {p0}, Lcom/sec/factory/modules/SensorReadIntent;->unregisterReceiver_Grip()V

    .line 139
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 157
    :cond_29
    const/4 v0, 0x0

    :goto_2a
    iget v1, p0, Lcom/sec/factory/modules/SensorReadIntent;->SENSOR_ON_ARRAY_LENGTH:I

    if-ge v0, v1, :cond_36

    .line 158
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadIntent;->mSensorOn:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 160
    :cond_36
    iput-object v4, p0, Lcom/sec/factory/modules/SensorReadIntent;->mModuleSensorIDArray:[I

    .line 161
    return-void
.end method
