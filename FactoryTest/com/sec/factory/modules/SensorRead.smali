.class public Lcom/sec/factory/modules/SensorRead;
.super Ljava/lang/Object;
.source "SensorRead.java"


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final DEBUG:Z

.field private final RETURN_DATA_ARRAY_SIZE_MAX:I

.field private mFeature_Gyroscope:Ljava/lang/String;

.field private mFeature_Magnetic:Ljava/lang/String;

.field private mReturnData:[Ljava/lang/String;

.field private mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

.field private mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

.field private mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

.field private mTemp_Float:[F

.field private mTemp_Int:[I

.field private mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

.field private mTemp_String:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "SensorRead"

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->CLASS_NAME:Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/SensorRead;->DEBUG:Z

    .line 19
    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    .line 20
    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    .line 21
    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

    .line 29
    iput v1, p0, Lcom/sec/factory/modules/SensorRead;->RETURN_DATA_ARRAY_SIZE_MAX:I

    .line 31
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    .line 37
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GYRO:I

    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Gyroscope:Ljava/lang/String;

    .line 39
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GEOMAGNETIC:I

    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    .line 44
    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    .line 45
    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    return-void
.end method

.method private dataCheck([Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "data"

    .prologue
    .line 1590
    const-string v2, ""

    .line 1591
    .local v2, result:Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1592
    .local v1, length:I
    const-string v3, "SensorRead"

    const-string v4, "dataCheck"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    if-eqz p1, :cond_55

    .line 1594
    const/4 v0, 0x0

    .local v0, i:I
    :goto_26
    add-int/lit8 v3, v1, 0x1

    if-ge v0, v3, :cond_55

    .line 1595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1596
    if-ge v0, v1, :cond_52

    .line 1597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1594
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1601
    .end local v0           #i:I
    :cond_55
    return-object v2
.end method

.method private replaceData([Ljava/lang/String;)V
    .registers 8
    .parameter "data"

    .prologue
    .line 1605
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1606
    .local v1, length:I
    if-eqz p1, :cond_1d

    .line 1607
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    add-int/lit8 v2, v1, 0x1

    if-ge v0, v2, :cond_1d

    .line 1608
    aget-object v2, p1, v0

    const-string v3, ","

    const-string v4, "."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 1607
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1611
    .end local v0           #i:I
    :cond_1d
    const-string v2, "SensorRead"

    const-string v3, "replaceData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    return-void
.end method


# virtual methods
.method public SensorOff()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v0, :cond_15

    .line 62
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorReadFile;->sensorOff()V

    .line 63
    iput-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    .line 64
    const-string v0, "SensorRead"

    const-string v1, "SensorOff"

    const-string v2, "File"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_15
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v0, :cond_29

    .line 68
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorReadManager;->sensorOff()V

    .line 69
    iput-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    .line 70
    const-string v0, "SensorRead"

    const-string v1, "SensorOff"

    const-string v2, "Manager"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_29
    return-void
.end method

.method public SensorOff_Intent(I)V
    .registers 5
    .parameter "sensorID"

    .prologue
    .line 75
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__CP_ACCELEROMETER:I

    if-eq p1, v0, :cond_8

    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    if-ne p1, v0, :cond_21

    .line 77
    :cond_8
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

    if-eqz v0, :cond_21

    .line 78
    const-string v0, "SensorRead"

    const-string v1, "SensorOff_Intent"

    const-string v2, "SensorOff_Intent"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__GRIP:I

    if-ne p1, v0, :cond_22

    .line 80
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorReadIntent;->sensorOff()V

    .line 84
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

    .line 87
    :cond_21
    return-void

    .line 82
    :cond_22
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__CP_ACCELEROMETER:I

    if-ne p1, v0, :cond_1e

    .line 83
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorReadIntent;->disableReceiver_CPsAccelerometer()V

    goto :goto_1e
.end method

.method public SensorOn(Landroid/content/Context;Landroid/hardware/SensorManager;[I[I[I)V
    .registers 7
    .parameter "context"
    .parameter "sm"
    .parameter "idManager"
    .parameter "idFile"
    .parameter "idIntent"

    .prologue
    .line 52
    if-eqz p3, :cond_9

    .line 53
    new-instance v0, Lcom/sec/factory/modules/SensorReadManager;

    invoke-direct {v0, p3, p2}, Lcom/sec/factory/modules/SensorReadManager;-><init>([ILandroid/hardware/SensorManager;)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    .line 54
    :cond_9
    if-eqz p4, :cond_12

    .line 55
    new-instance v0, Lcom/sec/factory/modules/SensorReadFile;

    invoke-direct {v0, p4}, Lcom/sec/factory/modules/SensorReadFile;-><init>([I)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    .line 56
    :cond_12
    if-eqz p5, :cond_1b

    .line 57
    new-instance v0, Lcom/sec/factory/modules/SensorReadIntent;

    invoke-direct {v0, p1, p5}, Lcom/sec/factory/modules/SensorReadIntent;-><init>(Landroid/content/Context;[I)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

    .line 58
    :cond_1b
    return-void
.end method

.method public getAccelermeterCal(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 349
    if-ne p1, v4, :cond_b

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_b

    .line 377
    :cond_a
    :goto_a
    return-object v0

    .line 351
    :cond_b
    if-ne p1, v6, :cond_a

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_a

    .line 352
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_CAL:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_83

    .line 354
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v0, v0

    if-gt v0, v4, :cond_30

    .line 355
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 359
    :cond_30
    const-string v0, "SensorRead"

    const-string v1, "getAccelermeterCal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "4"

    aput-object v1, v0, v5

    .line 362
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v4

    .line 363
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v6

    .line 364
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v0, v1

    .line 365
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v0, v1

    .line 375
    const-string v0, "SensorRead"

    const-string v1, "getAccelermeterCal"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto :goto_a

    .line 368
    :cond_83
    const-string v1, "SensorRead"

    const-string v2, "getAccelermeterCal"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public getAccelermeterIntpin(I)[Ljava/lang/String;
    .registers 12
    .parameter "target"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 384
    const-string v1, "2"

    .line 385
    .local v1, INTPIN_ENABLE:Ljava/lang/String;
    const-string v0, "0"

    .line 386
    .local v0, INTPIN_DISABLE:Ljava/lang/String;
    if-ne p1, v8, :cond_f

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v4, :cond_f

    .line 418
    :cond_e
    :goto_e
    return-object v3

    .line 388
    :cond_f
    if-ne p1, v9, :cond_e

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v4, :cond_e

    .line 389
    const-string v4, "ACCEL_SENSOR_INTPIN"

    invoke-static {v4, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 391
    const-wide/16 v4, 0x12c

    :try_start_1f
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_76

    .line 397
    :goto_22
    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v5, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_INTPIN:I

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 398
    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v4, :cond_7b

    .line 400
    const-string v3, "SensorRead"

    const-string v4, "getAccelermeterIntpin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "2"

    aput-object v4, v3, v7

    .line 403
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "None"

    aput-object v4, v3, v8

    .line 404
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v3, v9

    .line 405
    const-string v3, "ACCEL_SENSOR_INTPIN"

    invoke-static {v3, v0}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 416
    :cond_66
    const-string v3, "SensorRead"

    const-string v4, "getAccelermeterIntpin"

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto :goto_e

    .line 392
    :catch_76
    move-exception v2

    .line 394
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_22

    .line 408
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_7b
    const-string v4, "SensorRead"

    const-string v5, "getAccelermeterIntpin"

    const-string v6, "null"

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getAccelermeterSelf(I)[Ljava/lang/String;
    .registers 8
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 324
    invoke-virtual {p0, p1}, Lcom/sec/factory/modules/SensorRead;->getAccelermeterXYZ(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v0, :cond_6f

    .line 326
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    .line 327
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v5

    .line 328
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    .line 329
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v3

    .line 330
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v5

    .line 331
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/sec/factory/modules/SensorCalculator;->getResultAccelerometerSelf(III)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 340
    const-string v0, "SensorRead"

    const-string v1, "getAccelermeterSelf"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :goto_6e
    return-object v0

    .line 335
    :cond_6f
    const-string v0, "SensorRead"

    const-string v1, "getAccelermeterSelf"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    goto :goto_6e
.end method

.method public getAccelermeterXYZ(I)[Ljava/lang/String;
    .registers 12
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 119
    if-ne p1, v6, :cond_146

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v3, :cond_146

    .line 120
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v3}, Lcom/sec/factory/modules/SensorReadManager;->returnAccelermeter()[F

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    .line 122
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    if-eqz v3, :cond_13c

    .line 124
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v3, "4"

    aput-object v3, v2, v8

    .line 126
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v3, "None"

    aput-object v3, v2, v6

    .line 128
    const-wide/16 v0, 0x0

    .line 129
    .local v0, changeBit:D
    const-string v2, "SENSOR_TEST_ACC_BIT"

    invoke-static {v2}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 130
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZ"

    const-string v4, " bitCount(feature) : Unknown"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerRawDataWeight_Spec()F

    move-result v2

    float-to-double v0, v2

    .line 136
    :goto_5e
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Weight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "IS_SENSOR_TEST_ACC_REVERSE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 151
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v4, v4, v6

    float-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-int v4, v4

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 152
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v4, v4, v8

    float-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-int v4, v4

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 157
    :goto_c0
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v5, v5, v7

    float-to-double v5, v5

    mul-double/2addr v5, v0

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 182
    .end local v0           #changeBit:D
    :goto_df
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZ"

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :cond_ee
    :goto_ee
    return-object v2

    .line 133
    .restart local v0       #changeBit:D
    :cond_ef
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZ"

    const-string v4, " bitCount(feature) : Known"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerRawDataWeight_Feature()F

    move-result v2

    float-to-double v0, v2

    goto/16 :goto_5e

    .line 154
    :cond_ff
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v4, v4, v8

    float-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 155
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v4, v4, v6

    float-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    goto :goto_c0

    .line 160
    .end local v0           #changeBit:D
    :cond_13c
    const-string v3, "SensorRead"

    const-string v4, "getAccelermeterXYZ"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ee

    .line 163
    :cond_146
    if-ne p1, v7, :cond_ee

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v3, :cond_ee

    .line 164
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v4, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER:I

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 165
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v3, :cond_19e

    .line 167
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v3, "4"

    aput-object v3, v2, v8

    .line 169
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v3, "None"

    aput-object v3, v2, v6

    .line 170
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v8

    aput-object v3, v2, v7

    .line 171
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v6

    aput-object v3, v2, v9

    .line 172
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v2, v3

    goto/16 :goto_df

    .line 175
    :cond_19e
    const-string v3, "SensorRead"

    const-string v4, "getAccelermeterXYZ"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ee
.end method

.method public getAccelermeterXYZnAngle(I)[Ljava/lang/String;
    .registers 15
    .parameter "target"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 192
    invoke-virtual {p0, p1}, Lcom/sec/factory/modules/SensorRead;->getAccelermeterXYZ(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 193
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v2, :cond_218

    .line 194
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v10

    .line 195
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v9

    .line 196
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v8

    .line 197
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    invoke-static {v2}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerAngle([I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 203
    :cond_47
    if-ne p1, v9, :cond_21c

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v2, :cond_21c

    .line 204
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v2}, Lcom/sec/factory/modules/SensorReadManager;->returnAccelermeter()[F

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    .line 205
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    if-eqz v2, :cond_215

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v2, :cond_215

    .line 206
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v3, "10"

    aput-object v3, v2, v10

    .line 207
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v3, "None"

    aput-object v3, v2, v9

    .line 208
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v4, v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 209
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    .line 210
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    .line 211
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v10

    aput-object v4, v2, v3

    .line 212
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v9

    aput-object v4, v2, v3

    .line 213
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v8

    aput-object v4, v2, v3

    .line 214
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v5, v5, v10

    iget-object v6, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v6, v6, v9

    iget-object v7, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerAngleMagnitude(FFF)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 217
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerAngleDeviation(F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 219
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v3, 0xa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v5, v5, v10

    iget-object v6, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v6, v6, v9

    invoke-static {v5, v6}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerAngleXY(FF)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 222
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZnAngle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coordinates_x :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", coordinates_y :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    aget-object v5, v5, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", coordinates_z :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    aget-object v5, v5, v12

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZnAngle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X_Angle :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Y_Angle :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", z_Angle :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZnAngle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "magnitude :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviation :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZnAngle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XY_value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_215
    :goto_215
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :goto_217
    return-object v2

    .line 198
    :cond_218
    if-eq p1, v11, :cond_47

    .line 201
    const/4 v2, 0x0

    goto :goto_217

    .line 235
    :cond_21c
    if-ne p1, v8, :cond_2b9

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v2, :cond_2b9

    .line 236
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v2, :cond_2ad

    .line 237
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v3, "7"

    aput-object v3, v2, v10

    .line 238
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v3, "None"

    aput-object v3, v2, v9

    .line 239
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v4, v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 240
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    .line 241
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    .line 242
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v10

    aput-object v4, v2, v3

    .line 243
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v9

    aput-object v4, v2, v3

    .line 244
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v8

    aput-object v4, v2, v3

    .line 246
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZNAngle"

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_215

    .line 249
    :cond_2ad
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZnAngle"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v2, 0x0

    goto/16 :goto_217

    .line 255
    :cond_2b9
    if-ne p1, v11, :cond_506

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

    if-eqz v2, :cond_506

    .line 256
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

    invoke-virtual {v2}, Lcom/sec/factory/modules/SensorReadIntent;->returnCPsAccelerometerData()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    .line 257
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    if-eqz v2, :cond_2d3

    .line 258
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    invoke-static {v2}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerAngle([I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 261
    :cond_2d3
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    if-eqz v2, :cond_4fa

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v2, :cond_4fa

    .line 263
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZnAngle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTemp_Float.length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v3, "10"

    aput-object v3, v2, v10

    .line 267
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v3, "None"

    aput-object v3, v2, v9

    .line 268
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v4, v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 269
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    .line 270
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    .line 271
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v10

    aput-object v4, v2, v3

    .line 272
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v9

    aput-object v4, v2, v3

    .line 273
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v8

    aput-object v4, v2, v3

    .line 274
    const-wide/16 v0, 0x0

    .line 275
    .local v0, changeBit:D
    const-string v2, "12"

    const-string v3, "SENSOR_TEST_ACC_BIT"

    invoke-static {v3}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f6

    .line 276
    const-wide v0, 0x405a1f58d0fac687L

    .line 280
    :goto_385
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    if-nez v2, :cond_38d

    .line 281
    new-array v2, v11, [F

    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    .line 284
    :cond_38d
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    const/high16 v3, -0x4080

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v4, v4, v9

    int-to-double v4, v4

    div-double/2addr v4, v0

    double-to-float v4, v4

    mul-float/2addr v3, v4

    aput v3, v2, v10

    .line 285
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    const/high16 v3, -0x4080

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v4, v4, v10

    int-to-double v4, v4

    div-double/2addr v4, v0

    double-to-float v4, v4

    mul-float/2addr v3, v4

    aput v3, v2, v9

    .line 286
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v3, v3, v8

    int-to-double v3, v3

    div-double/2addr v3, v0

    double-to-float v3, v3

    aput v3, v2, v8

    .line 288
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v5, v5, v10

    iget-object v6, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v6, v6, v9

    iget-object v7, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v7, v7, v8

    invoke-static {v5, v6, v7}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerAngleMagnitude(FFF)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 291
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerAngleDeviation(F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 293
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v3, 0xa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v5, v5, v10

    iget-object v6, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v6, v6, v9

    invoke-static {v5, v6}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerAngleXY(FF)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 295
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZnAngle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP: coordinates_x :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", coordinates_y :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    aget-object v5, v5, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", coordinates_z :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    aget-object v5, v5, v12

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZnAngle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP: X_Angle :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Y_Angle :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", z_Angle :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZnAngle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP: magnitude :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deviation :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZnAngle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CP: XY_value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_215

    .line 278
    :cond_4f6
    const-wide/high16 v0, 0x4038

    goto/16 :goto_385

    .line 309
    .end local v0           #changeBit:D
    :cond_4fa
    const-string v2, "SensorRead"

    const-string v3, "getAccelermeterXYZnAngle"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v2, 0x0

    goto/16 :goto_217

    .line 315
    :cond_506
    const/4 v2, 0x0

    goto/16 :goto_217
.end method

.method public getBarometer(I)[Ljava/lang/String;
    .registers 10
    .parameter "target"

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 425
    if-ne p1, v5, :cond_9a

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v2, :cond_9a

    .line 426
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v2}, Lcom/sec/factory/modules/SensorReadManager;->returnBarometer()[F

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    .line 427
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    if-eqz v2, :cond_90

    .line 429
    const-string v1, "SensorRead"

    const-string v2, "getBarometer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, format:Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v1, v7

    .line 432
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v2, "None"

    aput-object v2, v1, v5

    .line 433
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v2, v2, v7

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 434
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v3, v3, v5

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 435
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v3, v3, v6

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 446
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/factory/modules/SensorRead;->replaceData([Ljava/lang/String;)V

    .line 449
    const-string v1, "SensorRead"

    const-string v2, "getBarometer"

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    .end local v0           #format:Ljava/text/DecimalFormat;
    :cond_8f
    :goto_8f
    return-object v1

    .line 438
    :cond_90
    const-string v2, "SensorRead"

    const-string v3, "getBarometer"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    .line 441
    :cond_9a
    if-ne p1, v6, :cond_8f

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v2, :cond_8f

    goto :goto_8f
.end method

.method public getBarometerEEPROM(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 458
    if-ne p1, v5, :cond_b

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_b

    .line 480
    :cond_a
    :goto_a
    return-object v0

    .line 460
    :cond_b
    if-ne p1, v6, :cond_a

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_a

    .line 461
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____BAROMETER_EEPROM:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_60

    .line 464
    const-string v0, "SensorRead"

    const-string v1, "getBarometerEEPROM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v4

    .line 467
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v5

    .line 468
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v6

    .line 478
    const-string v0, "SensorRead"

    const-string v1, "getBarometerEEPROM"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto :goto_a

    .line 471
    :cond_60
    const-string v1, "SensorRead"

    const-string v2, "getBarometerEEPROM"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getGrip(I)[Ljava/lang/String;
    .registers 10
    .parameter "target"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 490
    if-ne p1, v4, :cond_c

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_c

    .line 514
    :cond_b
    :goto_b
    return-object v0

    .line 492
    :cond_c
    if-ne p1, v5, :cond_12

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-nez v1, :cond_b

    .line 494
    :cond_12
    if-ne p1, v7, :cond_b

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

    if-eqz v1, :cond_b

    .line 495
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

    invoke-virtual {v1}, Lcom/sec/factory/modules/SensorReadIntent;->returnGrip()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    .line 496
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    if-eqz v1, :cond_a9

    .line 498
    const-string v0, "SensorRead"

    const-string v1, "getGrip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "3"

    aput-object v1, v0, v6

    .line 500
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 501
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 502
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Int:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 512
    const-string v0, "SensorRead"

    const-string v1, "getGyro"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto/16 :goto_b

    .line 505
    :cond_a9
    const-string v1, "SensorRead"

    const-string v2, "getGrip"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public getGyro(I)[Ljava/lang/String;
    .registers 10
    .parameter "target"

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x42652ee0

    .line 521
    if-ne p1, v5, :cond_b2

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_b2

    .line 522
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1}, Lcom/sec/factory/modules/SensorReadManager;->returnGyro()[F

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    .line 523
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    if-eqz v1, :cond_a8

    .line 525
    const-string v0, "SensorRead"

    const-string v1, "getGyro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "4"

    aput-object v1, v0, v7

    .line 528
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v5

    .line 529
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v2, v2, v7

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 530
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v3, v3, v5

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 531
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v3, v3, v6

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 543
    const-string v0, "SensorRead"

    const-string v1, "getGyro"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :cond_a7
    :goto_a7
    return-object v0

    .line 534
    :cond_a8
    const-string v1, "SensorRead"

    const-string v2, "getGyro"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 537
    :cond_b2
    if-ne p1, v6, :cond_a7

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_a7

    goto :goto_a7
.end method

.method public getGyroExpansion(I)[Ljava/lang/String;
    .registers 10
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 581
    if-ne p1, v5, :cond_171

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v2, :cond_171

    .line 582
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v2}, Lcom/sec/factory/modules/SensorReadManager;->returnGyroExpansion()Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;

    move-result-object v0

    .line 583
    .local v0, returnValue:Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;
    iget-object v2, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    if-eqz v2, :cond_149

    iget-object v2, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mData:[S

    if-eqz v2, :cond_149

    iget-object v2, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    if-eqz v2, :cond_149

    .line 585
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v2, "10"

    aput-object v2, v1, v7

    .line 586
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mReturnValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 587
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 588
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 589
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 590
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mData:[S

    aget-short v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 591
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mData:[S

    aget-short v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 592
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mData:[S

    aget-short v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 593
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 594
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 595
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 614
    const-string v1, "SensorRead"

    const-string v2, "getGyroExpansion"

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    .end local v0           #returnValue:Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;
    :cond_148
    :goto_148
    return-object v1

    .line 599
    .restart local v0       #returnValue:Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;
    :cond_149
    iget-object v2, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    if-nez v2, :cond_156

    .line 600
    const-string v2, "SensorRead"

    const-string v3, "getGyroExpansion"

    const-string v4, "Noise Bias null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_156
    iget-object v2, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mData:[S

    if-nez v2, :cond_163

    .line 602
    const-string v2, "SensorRead"

    const-string v3, "getGyroExpansion"

    const-string v4, "Data null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_163
    iget-object v2, v0, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    if-nez v2, :cond_148

    .line 604
    const-string v2, "SensorRead"

    const-string v3, "getGyroExpansion"

    const-string v4, "RMS null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_148

    .line 608
    .end local v0           #returnValue:Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;
    :cond_171
    if-ne p1, v6, :cond_148

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v2, :cond_148

    goto :goto_148
.end method

.method public getGyroPower(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 552
    if-ne p1, v5, :cond_b

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_b

    .line 573
    :cond_a
    :goto_a
    return-object v0

    .line 554
    :cond_b
    if-ne p1, v6, :cond_a

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_a

    .line 555
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_POWER:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 556
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_60

    .line 558
    const-string v0, "SensorRead"

    const-string v1, "getGyroPower"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v4

    .line 560
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v5

    .line 561
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v6

    .line 571
    const-string v0, "SensorRead"

    const-string v1, "getGyroPower"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto :goto_a

    .line 564
    :cond_60
    const-string v1, "SensorRead"

    const-string v2, "getGyroPower"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getGyroSelf(I)[Ljava/lang/String;
    .registers 16
    .parameter "target"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x6

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 652
    if-ne p1, v11, :cond_123

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v5, :cond_123

    .line 653
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v5}, Lcom/sec/factory/modules/SensorReadManager;->returnGyroExpansion()Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;

    move-result-object v2

    .line 654
    .local v2, returnValue:Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;
    iget-object v5, v2, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    if-eqz v5, :cond_107

    iget-object v5, v2, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    if-eqz v5, :cond_107

    .line 655
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v6, "7"

    aput-object v6, v5, v10

    .line 656
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mReturnValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 657
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 658
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    aget v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    .line 659
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 660
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 661
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    aget v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 662
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v6, 0x7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 663
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v6, "STMICRO_SMARTPHONE"

    if-eq v5, v6, :cond_e9

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v6, "STMICRO_TABLET"

    if-ne v5, v6, :cond_f7

    .line 665
    :cond_e9
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v6, "8"

    aput-object v6, v5, v10

    .line 666
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v6, 0x8

    const-string v7, ""

    aput-object v7, v5, v6

    .line 724
    .end local v2           #returnValue:Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;
    :cond_f7
    :goto_f7
    const-string v5, "SensorRead"

    const-string v6, "getGyroSelf"

    iget-object v7, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :goto_106
    return-object v5

    .line 671
    .restart local v2       #returnValue:Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;
    :cond_107
    iget-object v5, v2, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mNoiseBias:[F

    if-nez v5, :cond_114

    .line 672
    const-string v5, "SensorRead"

    const-string v6, "getGyroSelf"

    const-string v7, "Noise Bias null"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_114
    iget-object v5, v2, Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;->mRMSValue:[F

    if-nez v5, :cond_121

    .line 674
    const-string v5, "SensorRead"

    const-string v6, "getGyroSelf"

    const-string v7, "RMS null"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_121
    const/4 v5, 0x0

    goto :goto_106

    .line 678
    .end local v2           #returnValue:Lcom/sec/factory/modules/SensorReadManager$GyroExpansionData;
    :cond_123
    if-ne p1, v9, :cond_30c

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v5, :cond_30c

    .line 679
    const-string v1, ""

    .line 680
    .local v1, resultValue:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v6, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_SELFTEST:I

    invoke-virtual {v5, v6}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 681
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v5, :cond_300

    .line 683
    const-string v5, "SensorRead"

    const-string v6, "getGyroSelf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v5, v5, v12

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_264

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_264

    .line 685
    const-string v1, "0"

    .line 688
    :goto_171
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v6, "7"

    aput-object v6, v5, v10

    .line 689
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 690
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 691
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    .line 692
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 693
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v8, v8, v13

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 694
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 695
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v6, 0x7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 696
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v6, "STMICRO_SMARTPHONE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_268

    .line 697
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v6, "8"

    aput-object v6, v5, v10

    .line 698
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v6, 0x8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v8, v8, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    goto/16 :goto_f7

    .line 687
    :cond_264
    const-string v1, "-1"

    goto/16 :goto_171

    .line 699
    :cond_268
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v6, "STMICRO_TABLET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 700
    const-string v5, "SensorRead"

    const-string v6, "getGyroSelfTest"

    const-string v7, "FEATURE TABLET(CAL)"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v6, "8"

    aput-object v6, v5, v10

    .line 702
    const-string v4, ""

    .line 704
    .local v4, zerocalResult:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2fd

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2fd

    .line 705
    const-string v4, "0"

    .line 708
    :goto_2a1
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 709
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/16 v6, 0x8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    const/16 v9, 0xa

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 710
    const-string v3, ""

    .line 711
    .local v3, rst:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2da
    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_f7

    .line 712
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_2da

    .line 707
    .end local v0           #i:I
    .end local v3           #rst:Ljava/lang/String;
    :cond_2fd
    const-string v4, "-1"

    goto :goto_2a1

    .line 717
    .end local v4           #zerocalResult:Ljava/lang/String;
    :cond_300
    const-string v5, "SensorRead"

    const-string v6, "getGyroSelfTest"

    const-string v7, "null"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v5, 0x0

    goto/16 :goto_106

    .line 721
    .end local v1           #resultValue:Ljava/lang/String;
    :cond_30c
    const/4 v5, 0x0

    goto/16 :goto_106
.end method

.method public getGyroTemperature(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 623
    if-ne p1, v5, :cond_b

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_b

    .line 644
    :cond_a
    :goto_a
    return-object v0

    .line 625
    :cond_b
    if-ne p1, v6, :cond_a

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_a

    .line 626
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_TEMPERATURE:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 627
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_60

    .line 629
    const-string v0, "SensorRead"

    const-string v1, "getGyroTemperature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v4

    .line 631
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v5

    .line 632
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v6

    .line 642
    const-string v0, "SensorRead"

    const-string v1, "getGyroTemperature"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto :goto_a

    .line 635
    :cond_60
    const-string v1, "SensorRead"

    const-string v2, "getGyroTemperature"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getHumidity(I)[Ljava/lang/String;
    .registers 10
    .parameter "target"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1562
    if-ne p1, v6, :cond_71

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v2, :cond_71

    .line 1563
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v2}, Lcom/sec/factory/modules/SensorReadManager;->returnHumidity()[F

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    .line 1564
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    if-eqz v2, :cond_67

    .line 1566
    const-string v1, "SensorRead"

    const-string v2, "getHumidity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1568
    .local v0, format:Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v2, "2"

    aput-object v2, v1, v5

    .line 1569
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v2, "None"

    aput-object v2, v1, v6

    .line 1570
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v2, v2, v5

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 1582
    const-string v1, "SensorRead"

    const-string v2, "getHumidity"

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    .end local v0           #format:Ljava/text/DecimalFormat;
    :cond_66
    :goto_66
    return-object v1

    .line 1573
    :cond_67
    const-string v2, "SensorRead"

    const-string v3, "getHumidity"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 1576
    :cond_71
    if-ne p1, v7, :cond_66

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v2, :cond_66

    goto :goto_66
.end method

.method public getLight(I)[Ljava/lang/String;
    .registers 10
    .parameter "target"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 733
    const/16 v2, 0x10

    new-array v0, v2, [Ljava/lang/String;

    .line 734
    .local v0, mReturnData:[Ljava/lang/String;
    if-ne p1, v6, :cond_6f

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v2, :cond_6f

    .line 735
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v2}, Lcom/sec/factory/modules/SensorReadManager;->returnLight()[F

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    .line 736
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    if-eqz v2, :cond_64

    .line 738
    const-string v1, "SensorRead"

    const-string v2, "getLight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v1, "2"

    aput-object v1, v0, v5

    .line 740
    const-string v1, "None"

    aput-object v1, v0, v6

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 753
    const-string v1, "SensorRead"

    const-string v2, "getLight"

    invoke-direct {p0, v0}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .end local v0           #mReturnData:[Ljava/lang/String;
    :goto_63
    return-object v0

    .line 744
    .restart local v0       #mReturnData:[Ljava/lang/String;
    :cond_64
    const-string v2, "SensorRead"

    const-string v3, "getLight"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 745
    goto :goto_63

    .line 747
    :cond_6f
    if-ne p1, v7, :cond_77

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v2, :cond_77

    move-object v0, v1

    .line 748
    goto :goto_63

    :cond_77
    move-object v0, v1

    .line 750
    goto :goto_63
.end method

.method public getLightADC(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 790
    if-ne p1, v5, :cond_b

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_b

    .line 811
    :cond_a
    :goto_a
    return-object v0

    .line 792
    :cond_b
    if-ne p1, v6, :cond_a

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_a

    .line 793
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_ADC:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 794
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 796
    const-string v0, "SensorRead"

    const-string v1, "getLightADC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v4

    .line 798
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v5

    .line 799
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 809
    const-string v0, "SensorRead"

    const-string v1, "getLightADC"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto :goto_a

    .line 802
    :cond_73
    const-string v1, "SensorRead"

    const-string v2, "getLightADC"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getLightCCT(I)[Ljava/lang/String;
    .registers 8
    .parameter "target"

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 762
    if-ne p1, v4, :cond_74

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_74

    .line 763
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1}, Lcom/sec/factory/modules/SensorReadManager;->returnLight()[F

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    .line 764
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    if-eqz v1, :cond_6a

    .line 766
    const-string v0, "SensorRead"

    const-string v1, "getLightCCT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2"

    aput-object v2, v0, v1

    .line 768
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v4

    .line 769
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 781
    const-string v0, "SensorRead"

    const-string v1, "getLightCCT"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :cond_69
    :goto_69
    return-object v0

    .line 772
    :cond_6a
    const-string v1, "SensorRead"

    const-string v2, "getLightCCT"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 775
    :cond_74
    if-ne p1, v5, :cond_69

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_69

    goto :goto_69
.end method

.method public getLightRGBW(I)[Ljava/lang/String;
    .registers 10
    .parameter "target"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 818
    if-ne p1, v4, :cond_c

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_c

    .line 842
    :cond_b
    :goto_b
    return-object v0

    .line 820
    :cond_c
    if-ne p1, v5, :cond_b

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_b

    .line 821
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____LIGHT_RGBW:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 822
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_c8

    .line 824
    const-string v0, "SensorRead"

    const-string v1, "getLightRGBW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "5"

    aput-object v1, v0, v6

    .line 826
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v4

    .line 827
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 828
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 829
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 830
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 840
    const-string v0, "SensorRead"

    const-string v1, "getLightRGBW"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto/16 :goto_b

    .line 833
    :cond_c8
    const-string v1, "SensorRead"

    const-string v2, "getLightRGBW"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public getMagnetic(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 849
    if-ne p1, v4, :cond_ac

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_ac

    .line 850
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1}, Lcom/sec/factory/modules/SensorReadManager;->returnMagnetic()[F

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    .line 852
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    if-eqz v1, :cond_a2

    .line 854
    const-string v0, "SensorRead"

    const-string v1, "getMagnetic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "4"

    aput-object v1, v0, v6

    .line 856
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v4

    .line 857
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 858
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 859
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 870
    const-string v0, "SensorRead"

    const-string v1, "getMagnetic"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :cond_a1
    :goto_a1
    return-object v0

    .line 862
    :cond_a2
    const-string v1, "SensorRead"

    const-string v2, "getMagnetic"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    .line 865
    :cond_ac
    if-ne p1, v5, :cond_a1

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_a1

    goto :goto_a1
.end method

.method public getMagneticADC(I)[Ljava/lang/String;
    .registers 14
    .parameter "target"

    .prologue
    const/16 v11, -0x7d0

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1245
    if-ne p1, v7, :cond_116

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v3, :cond_116

    .line 1246
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8963"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8963C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8963C_MANAGER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8973"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8975"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 1251
    :cond_3e
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Asahi(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    .line 1265
    :cond_47
    :goto_47
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    if-eqz v3, :cond_10b

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v3, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    if-eqz v3, :cond_10b

    .line 1267
    const-string v3, "SensorRead"

    const-string v4, "getMagneticADC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v6, v6, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "4"

    aput-object v4, v3, v9

    .line 1270
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    aget-object v4, v4, v9

    aput-object v4, v3, v7

    .line 1271
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 1272
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    aget-object v4, v4, v8

    aput-object v4, v3, v10

    .line 1273
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v5, v5, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mADC:[Ljava/lang/String;

    aget-object v5, v5, v10

    aput-object v5, v3, v4

    .line 1317
    :goto_9f
    const-string v3, "SensorRead"

    const-string v4, "getMagneticADC"

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :goto_ae
    return-object v3

    .line 1253
    :cond_af
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "YAS529"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d7

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "YAS530"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d7

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "YAS530C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d7

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "YAS532"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 1257
    :cond_d7
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Yamaha(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_47

    .line 1259
    :cond_e2
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "HSCDTD004"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_100

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "HSCDTD004A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_100

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "HSCDTD006A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1262
    :cond_100
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Alps(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_47

    .line 1276
    :cond_10b
    const-string v3, "SensorRead"

    const-string v4, "getMagneticADC"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    const/4 v3, 0x0

    goto :goto_ae

    .line 1279
    :cond_116
    if-ne p1, v8, :cond_1f2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v3, :cond_1f2

    .line 1280
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v4, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 1281
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v3, :cond_1e6

    .line 1283
    const-string v3, "SensorRead"

    const-string v4, "getMagneticADC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "HSCDTD004"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_165

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "HSCDTD004A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_165

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "HSCDTD006A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bd

    .line 1288
    :cond_165
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1289
    .local v0, x:I
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1290
    .local v1, y:I
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1291
    .local v2, z:I
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "4"

    aput-object v4, v3, v9

    .line 1292
    if-gt v11, v0, :cond_1b6

    const/16 v3, 0x7d0

    if-gt v0, v3, :cond_1b6

    if-gt v11, v1, :cond_1b6

    const/16 v3, 0x7d0

    if-gt v1, v3, :cond_1b6

    if-gt v11, v2, :cond_1b6

    const/16 v3, 0x7d0

    if-gt v2, v3, :cond_1b6

    .line 1295
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "OK"

    aput-object v4, v3, v7

    .line 1298
    :goto_19b
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v9

    aput-object v4, v3, v8

    .line 1299
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v3, v10

    .line 1300
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v5, v5, v8

    aput-object v5, v3, v4

    goto/16 :goto_9f

    .line 1297
    :cond_1b6
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "NG"

    aput-object v4, v3, v7

    goto :goto_19b

    .line 1302
    .end local v0           #x:I
    .end local v1           #y:I
    .end local v2           #z:I
    :cond_1bd
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "4"

    aput-object v4, v3, v9

    .line 1303
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v9

    aput-object v4, v3, v7

    .line 1304
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 1305
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v8

    aput-object v4, v3, v10

    .line 1306
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v5, v5, v10

    aput-object v5, v3, v4

    goto/16 :goto_9f

    .line 1310
    :cond_1e6
    const-string v3, "SensorRead"

    const-string v4, "getMagneticADC"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const/4 v3, 0x0

    goto/16 :goto_ae

    .line 1314
    :cond_1f2
    const/4 v3, 0x0

    goto/16 :goto_ae
.end method

.method public getMagneticDAC(I)[Ljava/lang/String;
    .registers 14
    .parameter "target"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1151
    if-ne p1, v8, :cond_111

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v3, :cond_111

    .line 1152
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8963"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8963C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8963C_MANAGER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8973"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8975"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 1157
    :cond_3d
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v3, v10}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Asahi(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    .line 1171
    :cond_45
    :goto_45
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    if-eqz v3, :cond_106

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v3, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    if-eqz v3, :cond_106

    .line 1173
    const-string v3, "SensorRead"

    const-string v4, "getMagneticDAC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v6, v6, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "4"

    aput-object v4, v3, v7

    .line 1176
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 1177
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    aget-object v4, v4, v8

    aput-object v4, v3, v9

    .line 1178
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    aget-object v4, v4, v9

    aput-object v4, v3, v11

    .line 1179
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v4, v4, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mDAC:[Ljava/lang/String;

    aget-object v4, v4, v11

    aput-object v4, v3, v10

    .line 1236
    :goto_9c
    const-string v3, "SensorRead"

    const-string v4, "getMagneticDAC"

    iget-object v5, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :goto_ab
    return-object v3

    .line 1159
    :cond_ac
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "YAS529"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d4

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "YAS530"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d4

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "YAS530C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d4

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "YAS532"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 1163
    :cond_d4
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v3, v10}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Yamaha(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_45

    .line 1165
    :cond_de
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "HSCDTD004"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fc

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "HSCDTD004A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fc

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "HSCDTD006A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1168
    :cond_fc
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v3, v10}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Alps(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_45

    .line 1182
    :cond_106
    const-string v3, "SensorRead"

    const-string v4, "getMagneticDAC"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const/4 v3, 0x0

    goto :goto_ab

    .line 1185
    :cond_111
    if-ne p1, v9, :cond_24e

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v3, :cond_24e

    .line 1186
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v4, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_DAC:I

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 1187
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v3, :cond_242

    .line 1189
    const-string v3, "SensorRead"

    const-string v4, "getMagneticDAC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8963"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16a

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8963C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16a

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8963C_MANAGER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16a

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "AK8975"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19f

    .line 1194
    :cond_16a
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "4"

    aput-object v4, v3, v7

    .line 1195
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 1196
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, "OK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_198

    .line 1197
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v9

    .line 1201
    :goto_18a
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v3, v11

    .line 1202
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v3, v10

    goto/16 :goto_9c

    .line 1199
    :cond_198
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v3, v9

    goto :goto_18a

    .line 1203
    :cond_19f
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "HSCDTD004"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1bd

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "HSCDTD004A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1bd

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v4, "HSCDTD006A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21a

    .line 1207
    :cond_1bd
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1208
    .local v0, x:I
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1209
    .local v1, y:I
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1210
    .local v2, z:I
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "4"

    aput-object v4, v3, v7

    .line 1211
    const/16 v3, -0x7d0

    if-gt v3, v0, :cond_213

    const/16 v3, 0x7d0

    if-gt v0, v3, :cond_213

    const/16 v3, -0x7d0

    if-gt v3, v1, :cond_213

    const/16 v3, 0x7d0

    if-gt v1, v3, :cond_213

    const/16 v3, -0x7d0

    if-gt v3, v2, :cond_213

    const/16 v3, 0x7d0

    if-gt v2, v3, :cond_213

    .line 1214
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "OK"

    aput-object v4, v3, v8

    .line 1217
    :goto_1f9
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v3, v9

    .line 1218
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v8

    aput-object v4, v3, v11

    .line 1219
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v9

    aput-object v4, v3, v10

    goto/16 :goto_9c

    .line 1216
    :cond_213
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "NG"

    aput-object v4, v3, v8

    goto :goto_1f9

    .line 1221
    .end local v0           #x:I
    .end local v1           #y:I
    .end local v2           #z:I
    :cond_21a
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v4, "4"

    aput-object v4, v3, v7

    .line 1222
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 1223
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v8

    aput-object v4, v3, v9

    .line 1224
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v9

    aput-object v4, v3, v11

    .line 1225
    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v4, v4, v11

    aput-object v4, v3, v10

    goto/16 :goto_9c

    .line 1229
    :cond_242
    const-string v3, "SensorRead"

    const-string v4, "getMagneticDAC"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const/4 v3, 0x0

    goto/16 :goto_ab

    .line 1233
    :cond_24e
    const/4 v3, 0x0

    goto/16 :goto_ab
.end method

.method public getMagneticOffsetH(I)[Ljava/lang/String;
    .registers 10
    .parameter "target"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1389
    if-ne p1, v4, :cond_9a

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_9a

    .line 1390
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS530C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS532"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1392
    :cond_1f
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Yamaha(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    .line 1395
    :cond_28
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    if-eqz v1, :cond_90

    .line 1397
    const-string v0, "SensorRead"

    const-string v1, "getMagneticOffsetH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v3, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "4"

    aput-object v1, v0, v6

    .line 1400
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    aget-object v1, v1, v6

    aput-object v1, v0, v4

    .line 1401
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v5

    .line 1402
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v7

    .line 1403
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v2, v2, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mOffset_H:[Ljava/lang/String;

    aget-object v2, v2, v7

    aput-object v2, v0, v1

    .line 1415
    const-string v0, "SensorRead"

    const-string v1, "getMagneticOffsetH"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :cond_8f
    :goto_8f
    return-object v0

    .line 1406
    :cond_90
    const-string v1, "SensorRead"

    const-string v2, "getMagneticOffsetH"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    .line 1409
    :cond_9a
    if-ne p1, v5, :cond_8f

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_8f

    goto :goto_8f
.end method

.method public getMagneticPowerOff(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 934
    if-ne p1, v6, :cond_fb

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_fb

    .line 935
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8963"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8963C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8963C_MANAGER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8973"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8975"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 940
    :cond_3c
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Asahi(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    .line 955
    :cond_44
    :goto_44
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    if-eqz v1, :cond_f1

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    if-eqz v1, :cond_f1

    .line 957
    const-string v0, "SensorRead"

    const-string v1, "getMagneticPowerOff"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v3, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v5

    .line 960
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v6

    .line 961
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOff:[Ljava/lang/String;

    aget-object v1, v1, v6

    aput-object v1, v0, v4

    .line 985
    :goto_87
    const-string v0, "SensorRead"

    const-string v1, "getMagneticPowerOff"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :cond_96
    :goto_96
    return-object v0

    .line 942
    :cond_97
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS529"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS530"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS530C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS532"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 946
    :cond_bf
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Yamaha(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_44

    .line 948
    :cond_c9
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "HSCDTD004"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e7

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "HSCDTD004A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e7

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "HSCDTD006A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 951
    :cond_e7
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Alps(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_44

    .line 964
    :cond_f1
    const-string v1, "SensorRead"

    const-string v2, "getMagneticPowerOff"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    .line 967
    :cond_fb
    if-ne p1, v4, :cond_96

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_96

    .line 968
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_POWER_OFF:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 969
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_142

    .line 971
    const-string v0, "SensorRead"

    const-string v1, "getMagneticPowerOff"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v5

    .line 974
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v6

    .line 975
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v4

    goto/16 :goto_87

    .line 978
    :cond_142
    const-string v1, "SensorRead"

    const-string v2, "getMagneticPowerOff"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_96
.end method

.method public getMagneticPowerOn(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 878
    if-ne p1, v4, :cond_fb

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_fb

    .line 879
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8963"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8963C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8963C_MANAGER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8973"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8975"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 884
    :cond_3c
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Asahi(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    .line 899
    :cond_44
    :goto_44
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    if-eqz v1, :cond_f1

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    if-eqz v1, :cond_f1

    .line 901
    const-string v0, "SensorRead"

    const-string v1, "getMagneticPowerOn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v3, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v5

    .line 904
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v4

    .line 905
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mPowerOn:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v6

    .line 928
    :goto_87
    const-string v0, "SensorRead"

    const-string v1, "getMagneticPowerOn"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :cond_96
    :goto_96
    return-object v0

    .line 886
    :cond_97
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS529"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS530"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS530C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS532"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 890
    :cond_bf
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Yamaha(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_44

    .line 892
    :cond_c9
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "HSCDTD004"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e7

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "HSCDTD004A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e7

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "HSCDTD006A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 895
    :cond_e7
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Alps(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_44

    .line 908
    :cond_f1
    const-string v1, "SensorRead"

    const-string v2, "getMagneticPowerOn"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    .line 911
    :cond_fb
    if-ne p1, v6, :cond_96

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_96

    .line 912
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_POWER_ON:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 913
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_142

    .line 915
    const-string v0, "SensorRead"

    const-string v1, "getMagneticPowerOn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v5

    .line 917
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v4

    .line 918
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v6

    goto/16 :goto_87

    .line 921
    :cond_142
    const-string v1, "SensorRead"

    const-string v2, "getMagneticPowerOn"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_96
.end method

.method public getMagneticSelf(I)[Ljava/lang/String;
    .registers 10
    .parameter "target"

    .prologue
    const/4 v2, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1326
    if-ne p1, v4, :cond_112

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v0, :cond_112

    .line 1327
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "AK8963"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "AK8963C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "AK8963C_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "AK8973"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "AK8975"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1332
    :cond_3d
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v0, v2}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Asahi(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    .line 1346
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v0, v0, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    if-eqz v0, :cond_107

    .line 1348
    const-string v0, "SensorRead"

    const-string v1, "getMagneticSelf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v3, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "4"

    aput-object v1, v0, v6

    .line 1351
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    aget-object v1, v1, v6

    aput-object v1, v0, v4

    .line 1352
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v5

    .line 1353
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v7

    .line 1354
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v2, v2, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mSelf:[Ljava/lang/String;

    aget-object v2, v2, v7

    aput-object v2, v0, v1

    .line 1379
    :goto_9d
    const-string v0, "SensorRead"

    const-string v1, "getMagneticSelf"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :goto_ac
    return-object v0

    .line 1334
    :cond_ad
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "YAS529"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "YAS530"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "YAS530C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "YAS532"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 1338
    :cond_d5
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v0, v2}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Yamaha(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_45

    .line 1340
    :cond_df
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "HSCDTD004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "HSCDTD004A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "HSCDTD006A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1343
    :cond_fd
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v0, v2}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Alps(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_45

    .line 1357
    :cond_107
    const-string v0, "SensorRead"

    const-string v1, "getMagneticSelf"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const/4 v0, 0x0

    goto :goto_ac

    .line 1360
    :cond_112
    if-ne p1, v5, :cond_178

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v0, :cond_178

    .line 1361
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_SELF:I

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 1362
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v0, :cond_16c

    .line 1364
    const-string v0, "SensorRead"

    const-string v1, "getMagneticSelf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "4"

    aput-object v1, v0, v6

    .line 1366
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v6

    aput-object v1, v0, v4

    .line 1367
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v5

    .line 1368
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v7

    .line 1369
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v2, v2, v7

    aput-object v2, v0, v1

    goto/16 :goto_9d

    .line 1372
    :cond_16c
    const-string v0, "SensorRead"

    const-string v1, "getMagneticSelf"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const/4 v0, 0x0

    goto/16 :goto_ac

    .line 1376
    :cond_178
    const/4 v0, 0x0

    goto/16 :goto_ac
.end method

.method public getMagneticStatus(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 994
    if-ne p1, v5, :cond_fc

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_fc

    .line 995
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8963"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8963C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8963C_MANAGER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8973"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8975"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 1000
    :cond_3d
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1, v3}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Asahi(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    .line 1014
    :cond_45
    :goto_45
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    if-eqz v1, :cond_f2

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    if-eqz v1, :cond_f2

    .line 1016
    const-string v0, "SensorRead"

    const-string v1, "getMagneticStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v3, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v4

    .line 1019
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v5

    .line 1020
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mStatus:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v6

    .line 1057
    :goto_88
    const-string v0, "SensorRead"

    const-string v1, "getMagneticStatus"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :cond_97
    :goto_97
    return-object v0

    .line 1002
    :cond_98
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS529"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS530"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS530C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS532"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 1006
    :cond_c0
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1, v3}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Yamaha(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_45

    .line 1008
    :cond_ca
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "HSCDTD004"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "HSCDTD004A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "HSCDTD006A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1011
    :cond_e8
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1, v3}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Alps(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_45

    .line 1023
    :cond_f2
    const-string v1, "SensorRead"

    const-string v2, "getMagneticStatus"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_97

    .line 1026
    :cond_fc
    if-ne p1, v6, :cond_97

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_97

    .line 1027
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_STATUS:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 1028
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_19c

    .line 1030
    const-string v0, "SensorRead"

    const-string v1, "getMagneticStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "HSCDTD004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "HSCDTD004A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b

    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "HSCDTD006A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 1034
    :cond_14b
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v4

    .line 1035
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 1036
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "OK"

    aput-object v1, v0, v5

    .line 1039
    :goto_163
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v6

    goto/16 :goto_88

    .line 1038
    :cond_16d
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "NG"

    aput-object v1, v0, v5

    goto :goto_163

    .line 1041
    :cond_174
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v4

    .line 1042
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v5

    .line 1043
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 1044
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v6

    goto/16 :goto_88

    .line 1046
    :cond_194
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v6

    goto/16 :goto_88

    .line 1050
    :cond_19c
    const-string v1, "SensorRead"

    const-string v2, "getMagneticStatus"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_97
.end method

.method public getMagneticTemperature(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 1067
    if-ne p1, v6, :cond_d6

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_d6

    .line 1068
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8973"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1069
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Asahi(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    .line 1092
    :goto_1c
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    if-eqz v1, :cond_cc

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mTemperature:[Ljava/lang/String;

    if-eqz v1, :cond_cc

    .line 1094
    const-string v0, "SensorRead"

    const-string v1, "getMagneticTemperature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v3, v3, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mTemperature:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v5

    .line 1097
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mTemperature:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v6

    .line 1098
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    iget-object v1, v1, Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;->mTemperature:[Ljava/lang/String;

    aget-object v1, v1, v6

    aput-object v1, v0, v4

    .line 1142
    :goto_5f
    const-string v0, "SensorRead"

    const-string v1, "getMagneticTemperature"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :cond_6e
    :goto_6e
    return-object v0

    .line 1071
    :cond_6f
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS529"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1072
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Yamaha(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto :goto_1c

    .line 1074
    :cond_82
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "HSCDTD004"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a0

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "HSCDTD004A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a0

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "HSCDTD006A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 1077
    :cond_a0
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/SensorReadManager;->returnMagneticExpansion_Alps(I)Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Magnetic:Lcom/sec/factory/modules/SensorReadManager$MagneticExpansionData;

    goto/16 :goto_1c

    .line 1085
    :cond_aa
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v5

    .line 1086
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "OK"

    aput-object v1, v0, v6

    .line 1087
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v4

    .line 1089
    const-string v0, "SensorRead"

    const-string v1, "getMagneticTemperature"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto :goto_6e

    .line 1101
    :cond_cc
    const-string v1, "SensorRead"

    const-string v2, "getMagneticTemperature"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 1106
    :cond_d6
    if-ne p1, v4, :cond_6e

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_6e

    .line 1107
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "AK8973"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f0

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mFeature_Magnetic:Ljava/lang/String;

    const-string v2, "YAS529"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 1109
    :cond_f0
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_TEMPERATURE:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 1111
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_144

    .line 1113
    const-string v0, "SensorRead"

    const-string v1, "getMagneticTemperature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v5

    .line 1116
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v6

    .line 1117
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto/16 :goto_5f

    .line 1120
    :cond_144
    const-string v1, "SensorRead"

    const-string v2, "getMagneticTemperature"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6e

    .line 1129
    :cond_14f
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v5

    .line 1130
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v6

    .line 1131
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v4

    .line 1133
    const-string v0, "SensorRead"

    const-string v1, "getMagneticTemperature"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto/16 :goto_6e
.end method

.method public getProximity(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1424
    if-ne p1, v5, :cond_74

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_74

    .line 1425
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v1}, Lcom/sec/factory/modules/SensorReadManager;->returnProximity()[F

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    .line 1428
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    if-eqz v1, :cond_6a

    .line 1430
    const-string v0, "SensorRead"

    const-string v1, "getProximity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v4

    .line 1432
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v5

    .line 1433
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1445
    const-string v0, "SensorRead"

    const-string v1, "getProximity"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    :cond_69
    :goto_69
    return-object v0

    .line 1436
    :cond_6a
    const-string v1, "SensorRead"

    const-string v2, "getProximity"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 1439
    :cond_74
    if-ne p1, v6, :cond_69

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_69

    goto :goto_69
.end method

.method public getProximityADC(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1454
    if-ne p1, v5, :cond_b

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_b

    .line 1475
    :cond_a
    :goto_a
    return-object v0

    .line 1456
    :cond_b
    if-ne p1, v6, :cond_a

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_a

    .line 1457
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_ADC:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 1458
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_60

    .line 1460
    const-string v0, "SensorRead"

    const-string v1, "getProximityADC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v4

    .line 1462
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v5

    .line 1463
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v6

    .line 1473
    const-string v0, "SensorRead"

    const-string v1, "getProximityADC"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto :goto_a

    .line 1466
    :cond_60
    const-string v1, "SensorRead"

    const-string v2, "getProximityADC"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getProximityAVG(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1482
    if-ne p1, v5, :cond_b

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_b

    .line 1503
    :cond_a
    :goto_a
    return-object v0

    .line 1484
    :cond_b
    if-ne p1, v6, :cond_a

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_a

    .line 1485
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_AVG:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 1486
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_60

    .line 1488
    const-string v0, "SensorRead"

    const-string v1, "getProximityAVG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "2"

    aput-object v1, v0, v4

    .line 1490
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v5

    .line 1491
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, v6

    .line 1501
    const-string v0, "SensorRead"

    const-string v1, "getProximityAVG"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto :goto_a

    .line 1494
    :cond_60
    const-string v1, "SensorRead"

    const-string v2, "getProximityAVG"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getProximityOffset(I)[Ljava/lang/String;
    .registers 9
    .parameter "target"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 1510
    if-ne p1, v4, :cond_b

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v1, :cond_b

    .line 1532
    :cond_a
    :goto_a
    return-object v0

    .line 1512
    :cond_b
    if-ne p1, v6, :cond_a

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v1, :cond_a

    .line 1513
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____PROXIMITY_OFFSET:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/SensorReadFile;->returnData(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    .line 1514
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    if-eqz v1, :cond_69

    .line 1516
    const-string v0, "SensorRead"

    const-string v1, "getProximityOffset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "3"

    aput-object v1, v0, v5

    .line 1518
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v4

    .line 1519
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v1, v1, v5

    aput-object v1, v0, v6

    .line 1520
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_String:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v0, v1

    .line 1530
    const-string v0, "SensorRead"

    const-string v1, "getProximityOffset"

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    goto :goto_a

    .line 1523
    :cond_69
    const-string v1, "SensorRead"

    const-string v2, "getProximityOffset"

    const-string v3, "null"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getTemperature(I)[Ljava/lang/String;
    .registers 10
    .parameter "target"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1536
    if-ne p1, v6, :cond_71

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v2, :cond_71

    .line 1537
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v2}, Lcom/sec/factory/modules/SensorReadManager;->returnTemperature()[F

    move-result-object v2

    iput-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    .line 1538
    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    if-eqz v2, :cond_67

    .line 1540
    const-string v1, "SensorRead"

    const-string v2, "getTemperature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1542
    .local v0, format:Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v2, "2"

    aput-object v2, v1, v5

    .line 1543
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    const-string v2, "None"

    aput-object v2, v1, v6

    .line 1544
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mTemp_Float:[F

    aget v2, v2, v5

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 1556
    const-string v1, "SensorRead"

    const-string v2, "getTemperature"

    iget-object v3, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/factory/modules/SensorRead;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    iget-object v1, p0, Lcom/sec/factory/modules/SensorRead;->mReturnData:[Ljava/lang/String;

    .end local v0           #format:Ljava/text/DecimalFormat;
    :cond_66
    :goto_66
    return-object v1

    .line 1547
    :cond_67
    const-string v2, "SensorRead"

    const-string v3, "getTemperature"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 1550
    :cond_71
    if-ne p1, v7, :cond_66

    iget-object v2, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v2, :cond_66

    goto :goto_66
.end method

.method public isSensorOn(I)Z
    .registers 5
    .parameter "sensorID"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    if-eqz v0, :cond_13

    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MIN:I

    if-gt v0, p1, :cond_13

    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_COUNT:I

    if-ge p1, v0, :cond_13

    .line 98
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadManager:Lcom/sec/factory/modules/SensorReadManager;

    invoke-virtual {v0, p1}, Lcom/sec/factory/modules/SensorReadManager;->isSensorOn(I)Z

    move-result v0

    .line 109
    :goto_12
    return v0

    .line 99
    :cond_13
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v0, :cond_29

    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_COUNT:I

    if-gt v0, p1, :cond_29

    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_COUNT:I

    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____COUNT:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_29

    .line 102
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    invoke-virtual {v0, p1}, Lcom/sec/factory/modules/SensorReadFile;->isSensorOn(I)Z

    move-result v0

    goto :goto_12

    .line 103
    :cond_29
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

    if-eqz v0, :cond_3f

    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_COUNT:I

    sget v1, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____COUNT:I

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_3f

    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MAX:I

    if-gt p1, v0, :cond_3f

    .line 106
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadIntent:Lcom/sec/factory/modules/SensorReadIntent;

    invoke-virtual {v0, p1}, Lcom/sec/factory/modules/SensorReadIntent;->isSensorOn(I)Z

    move-result v0

    goto :goto_12

    .line 108
    :cond_3f
    const-string v0, "SensorRead"

    const-string v1, "SensorOn"

    const-string v2, "null / ID unknown"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public setLoop_ReadFile()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    if-eqz v0, :cond_9

    .line 91
    iget-object v0, p0, Lcom/sec/factory/modules/SensorRead;->mSensorReadFile:Lcom/sec/factory/modules/SensorReadFile;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorReadFile;->startLoop()V

    .line 92
    :cond_9
    return-void
.end method
