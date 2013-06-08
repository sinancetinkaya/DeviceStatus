.class public Lcom/sec/factory/modules/SensorCalculator;
.super Ljava/lang/Object;
.source "SensorCalculator.java"


# static fields
.field private static RESULT_VALUE_NG:Ljava/lang/String;

.field private static RESULT_VALUE_NOTSUPPORTED:Ljava/lang/String;

.field private static RESULT_VALUE_OK:Ljava/lang/String;

.field private static mAccelerometerRawDataWeight:F

.field private static mSensorSpec:Lcom/sec/factory/modules/SensorSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "OK"

    sput-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_OK:Ljava/lang/String;

    .line 16
    const-string v0, "NG"

    sput-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    .line 17
    const-string v0, "None"

    sput-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NOTSUPPORTED:Ljava/lang/String;

    .line 23
    const/high16 v0, -0x4080

    sput v0, Lcom/sec/factory/modules/SensorCalculator;->mAccelerometerRawDataWeight:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSpecMagneticADC(III)Ljava/lang/String;
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 169
    const-string v1, "SensorCalculator"

    const-string v2, "checkSpecMagneticADC"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v1}, Lcom/sec/factory/modules/SensorSpec;->getSpecGeomagnetic_ADC()Lcom/sec/factory/modules/SensorSpec$Range;

    move-result-object v1

    const-string v2, "MagneticADC"

    invoke-static {v1, v2}, Lcom/sec/factory/modules/SensorCalculator;->specLog(Lcom/sec/factory/modules/SensorSpec$Range;Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v1}, Lcom/sec/factory/modules/SensorSpec;->getSpecGeomagnetic_ADC()Lcom/sec/factory/modules/SensorSpec$Range;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/sec/factory/modules/SensorCalculator;->getResult(IIILcom/sec/factory/modules/SensorSpec$Range;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public static checkSpecMagneticDAC(III)Ljava/lang/String;
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 159
    const-string v1, "SensorCalculator"

    const-string v2, "checkSpecMagneticDAC"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v1, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v1}, Lcom/sec/factory/modules/SensorSpec;->getSpecGeomagnetic_DAC()Lcom/sec/factory/modules/SensorSpec$Range;

    move-result-object v1

    const-string v2, "MagneticDAC"

    invoke-static {v1, v2}, Lcom/sec/factory/modules/SensorCalculator;->specLog(Lcom/sec/factory/modules/SensorSpec$Range;Ljava/lang/String;)V

    .line 163
    sget-object v1, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v1}, Lcom/sec/factory/modules/SensorSpec;->getSpecGeomagnetic_DAC()Lcom/sec/factory/modules/SensorSpec$Range;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/sec/factory/modules/SensorCalculator;->getResult(IIILcom/sec/factory/modules/SensorSpec$Range;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public static checkSpecMagneticSelf(III)Ljava/lang/String;
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 189
    const-string v1, "SensorCalculator"

    const-string v2, "checkSpecMagneticSelf"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v1}, Lcom/sec/factory/modules/SensorSpec;->getSpecGeomagnetic_Self()Lcom/sec/factory/modules/SensorSpec$Range;

    move-result-object v1

    const-string v2, "MagneticSelf"

    invoke-static {v1, v2}, Lcom/sec/factory/modules/SensorCalculator;->specLog(Lcom/sec/factory/modules/SensorSpec$Range;Ljava/lang/String;)V

    .line 193
    sget-object v1, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v1}, Lcom/sec/factory/modules/SensorSpec;->getSpecGeomagnetic_Self()Lcom/sec/factory/modules/SensorSpec$Range;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/sec/factory/modules/SensorCalculator;->getResult(IIILcom/sec/factory/modules/SensorSpec$Range;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public static getAccelerometerAngle([I)[Ljava/lang/String;
    .registers 10
    .parameter "data"

    .prologue
    const v8, 0x42652ee1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 81
    .local v0, angle:[Ljava/lang/String;
    aget v2, p0, v5

    aget v3, p0, v5

    mul-int/2addr v2, v3

    aget v3, p0, v6

    aget v4, p0, v6

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aget v3, p0, v7

    aget v4, p0, v7

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 90
    .local v1, realg:F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v5

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v6

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v7

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v8

    const/high16 v4, 0x42b4

    sub-float/2addr v3, v4

    const/high16 v4, -0x4080

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 95
    return-object v0
.end method

.method public static getAccelerometerAngleDeviation(F)F
    .registers 2
    .parameter "magnitude"

    .prologue
    .line 103
    const v0, 0x411ce80a

    sub-float v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static getAccelerometerAngleMagnitude(FFF)F
    .registers 5
    .parameter "xValue"
    .parameter "yValue"
    .parameter "zValue"

    .prologue
    .line 99
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getAccelerometerAngleXY(FF)I
    .registers 6
    .parameter "xValue"
    .parameter "yValue"

    .prologue
    .line 107
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static getAccelerometerRawDataWeight(I)F
    .registers 5
    .parameter "bitCount"

    .prologue
    .line 43
    const-wide/high16 v0, 0x4000

    add-int/lit8 v2, p0, -0x2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x411ce80a

    div-float/2addr v0, v1

    return v0
.end method

.method public static getAccelerometerRawDataWeight_Feature()F
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 63
    sget v1, Lcom/sec/factory/modules/SensorCalculator;->mAccelerometerRawDataWeight:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_20

    .line 64
    const-string v1, "SENSOR_TEST_ACC_BIT"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, bit:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 66
    const-string v1, "SensorCalculator"

    const-string v2, "getAccelerometerRawDataWeight_Feature"

    const-string v3, " bitCount(feature) : None => return 0"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sput v4, Lcom/sec/factory/modules/SensorCalculator;->mAccelerometerRawDataWeight:F

    .line 76
    :cond_20
    :goto_20
    sget v1, Lcom/sec/factory/modules/SensorCalculator;->mAccelerometerRawDataWeight:F

    return v1

    .line 70
    :cond_23
    const-string v1, "SensorCalculator"

    const-string v2, "getAccelerometerRawDataWeight_Feature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " bitCount(feature) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerRawDataWeight(I)F

    move-result v1

    sput v1, Lcom/sec/factory/modules/SensorCalculator;->mAccelerometerRawDataWeight:F

    goto :goto_20
.end method

.method public static getAccelerometerRawDataWeight_Spec()F
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 47
    sget v0, Lcom/sec/factory/modules/SensorCalculator;->mAccelerometerRawDataWeight:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3f

    .line 48
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorSpec;->getSpecAccel()Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 49
    const-string v0, "SensorCalculator"

    const-string v1, "getAccelerometerRawDataWeight_Spec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitCount(Spec) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v3}, Lcom/sec/factory/modules/SensorSpec;->getSpecAccel()Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    move-result-object v3

    iget v3, v3, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mBitCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorSpec;->getSpecAccel()Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    move-result-object v0

    iget v0, v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mBitCount:I

    invoke-static {v0}, Lcom/sec/factory/modules/SensorCalculator;->getAccelerometerRawDataWeight(I)F

    move-result v0

    sput v0, Lcom/sec/factory/modules/SensorCalculator;->mAccelerometerRawDataWeight:F

    .line 59
    :cond_3f
    :goto_3f
    sget v0, Lcom/sec/factory/modules/SensorCalculator;->mAccelerometerRawDataWeight:F

    return v0

    .line 54
    :cond_42
    const-string v0, "SensorCalculator"

    const-string v1, "getAccelerometerRawDataWeight_Spec"

    const-string v2, "bitCount(Spec) : None => return 0"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sput v3, Lcom/sec/factory/modules/SensorCalculator;->mAccelerometerRawDataWeight:F

    goto :goto_3f
.end method

.method private static getResult(IIILcom/sec/factory/modules/SensorSpec$Range;)Ljava/lang/String;
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "range"

    .prologue
    .line 203
    if-eqz p3, :cond_1b4

    .line 204
    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRangeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_61

    .line 205
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "mRangeCount : 1"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_X:Z

    if-eqz v0, :cond_2a

    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Max:I

    invoke-static {p0, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 209
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "Fail - X"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    .line 288
    :goto_29
    return-object v0

    .line 213
    :cond_2a
    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_Y:Z

    if-eqz v0, :cond_44

    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Max:I

    invoke-static {p1, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_44

    .line 215
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "Fail - Y"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    goto :goto_29

    .line 219
    :cond_44
    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_Z:Z

    if-eqz v0, :cond_5e

    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Max:I

    invoke-static {p2, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 221
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "Fail - Z"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    goto :goto_29

    .line 224
    :cond_5e
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_OK:Ljava/lang/String;

    goto :goto_29

    .line 225
    :cond_61
    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRangeCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a7

    .line 226
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "mRangeCount : 2"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_X:Z

    if-eqz v0, :cond_97

    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange2_X:Z

    if-eqz v0, :cond_97

    .line 229
    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Max:I

    invoke-static {p0, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_d5

    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_X_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_X_Max:I

    invoke-static {p0, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 231
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "[All] Fail - X"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    goto :goto_29

    .line 234
    :cond_97
    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_X:Z

    if-eqz v0, :cond_b6

    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange2_X:Z

    if-nez v0, :cond_b6

    .line 235
    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Max:I

    invoke-static {p0, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 236
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "[Range1] Fail - X"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    goto/16 :goto_29

    .line 239
    :cond_b6
    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_X:Z

    if-nez v0, :cond_d5

    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange2_X:Z

    if-eqz v0, :cond_d5

    .line 240
    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_X_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_X_Max:I

    invoke-static {p0, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 241
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "[Range2] Fail - X"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    goto/16 :goto_29

    .line 246
    :cond_d5
    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_Y:Z

    if-eqz v0, :cond_fe

    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange2_Y:Z

    if-eqz v0, :cond_fe

    .line 247
    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Max:I

    invoke-static {p1, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_13c

    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Y_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Y_Max:I

    invoke-static {p1, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_13c

    .line 249
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "[All] Fail - Y"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    goto/16 :goto_29

    .line 252
    :cond_fe
    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_Y:Z

    if-eqz v0, :cond_11d

    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange2_Y:Z

    if-nez v0, :cond_11d

    .line 253
    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Max:I

    invoke-static {p1, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_13c

    .line 254
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "[Range1] Fail - Y"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    goto/16 :goto_29

    .line 257
    :cond_11d
    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_Y:Z

    if-nez v0, :cond_13c

    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange2_Y:Z

    if-eqz v0, :cond_13c

    .line 258
    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Y_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Y_Max:I

    invoke-static {p1, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_13c

    .line 259
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "[Range2] Fail - Y"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    goto/16 :goto_29

    .line 264
    :cond_13c
    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_Z:Z

    if-eqz v0, :cond_165

    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange2_Z:Z

    if-eqz v0, :cond_165

    .line 265
    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Max:I

    invoke-static {p2, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_1a3

    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Z_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Z_Max:I

    invoke-static {p2, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_1a3

    .line 267
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "[All] Fail - Z"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    goto/16 :goto_29

    .line 270
    :cond_165
    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_Z:Z

    if-eqz v0, :cond_184

    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange2_Z:Z

    if-nez v0, :cond_184

    .line 271
    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Max:I

    invoke-static {p2, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_1a3

    .line 272
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "[Range1] Fail - Z"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    goto/16 :goto_29

    .line 275
    :cond_184
    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_Z:Z

    if-nez v0, :cond_1a3

    iget-boolean v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange2_Z:Z

    if-eqz v0, :cond_1a3

    .line 276
    iget v0, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Z_Min:I

    iget v1, p3, Lcom/sec/factory/modules/SensorSpec$Range;->mRange2_Z_Max:I

    invoke-static {p2, v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->isSpecIn(III)Z

    move-result v0

    if-nez v0, :cond_1a3

    .line 277
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "[Range2] Fail - Z"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NG:Ljava/lang/String;

    goto/16 :goto_29

    .line 281
    :cond_1a3
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_OK:Ljava/lang/String;

    goto/16 :goto_29

    .line 283
    :cond_1a7
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "mRangeCount : Unknown"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NOTSUPPORTED:Ljava/lang/String;

    goto/16 :goto_29

    .line 287
    :cond_1b4
    const-string v0, "SensorCalculator"

    const-string v1, "getResult"

    const-string v2, "Fail - Spec null"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->RESULT_VALUE_NOTSUPPORTED:Ljava/lang/String;

    goto/16 :goto_29
.end method

.method public static getResultAccelerometerSelf(III)Ljava/lang/String;
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 112
    sget-object v2, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v2}, Lcom/sec/factory/modules/SensorSpec;->getSpecAccel()Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    move-result-object v2

    const-string v3, "AccelSelf"

    invoke-static {v2, v3}, Lcom/sec/factory/modules/SensorCalculator;->specLog(Lcom/sec/factory/modules/SensorSpec$Accelerometer;Ljava/lang/String;)V

    .line 114
    sget-object v2, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v2}, Lcom/sec/factory/modules/SensorSpec;->getSpecAccel()Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    move-result-object v1

    .line 115
    .local v1, spec:Lcom/sec/factory/modules/SensorSpec$Accelerometer;
    const-string v0, ""

    .line 116
    .local v0, returnValue:Ljava/lang/String;
    if-eqz v1, :cond_1ad

    .line 117
    iget-object v2, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget-boolean v2, v2, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_X:Z

    if-eqz v2, :cond_144

    .line 118
    iget-object v2, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget v2, v2, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Min:I

    if-lt p0, v2, :cond_27

    iget-object v2, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget v2, v2, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Max:I

    if-ge v2, p0, :cond_12f

    .line 119
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_3a
    const-string v2, "SensorCalculator"

    const-string v3, "getResultAccelerometerSelf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget v5, v5, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Min:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget v5, v5, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Max:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_70
    iget-object v2, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget-boolean v2, v2, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_Y:Z

    if-eqz v2, :cond_16e

    .line 128
    iget-object v2, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget v2, v2, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Min:I

    if-lt p1, v2, :cond_82

    iget-object v2, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget v2, v2, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Max:I

    if-ge v2, p1, :cond_159

    .line 129
    :cond_82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_95
    const-string v2, "SensorCalculator"

    const-string v3, "getResultAccelerometerSelf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget v5, v5, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Min:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget v5, v5, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Max:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_cb
    iget-object v2, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget-boolean v2, v2, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_Z:Z

    if-eqz v2, :cond_198

    .line 138
    iget-object v2, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget v2, v2, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Min:I

    if-lt p2, v2, :cond_dd

    iget-object v2, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget v2, v2, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Max:I

    if-ge v2, p2, :cond_183

    .line 139
    :cond_dd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_f0
    const-string v2, "SensorCalculator"

    const-string v3, "getResultAccelerometerSelf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget v5, v5, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Min:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    iget v5, v5, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Max:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_126
    const-string v2, "SensorCalculator"

    const-string v3, "getResultAccelerometerSelf"

    invoke-static {v2, v3, v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 151
    :goto_12e
    return-object v2

    .line 121
    :cond_12f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    .line 125
    :cond_144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_70

    .line 131
    :cond_159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_95

    .line 135
    :cond_16e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_cb

    .line 141
    :cond_183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f0

    .line 145
    :cond_198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_126

    .line 150
    :cond_1ad
    const-string v2, "SensorCalculator"

    const-string v3, "getResultAccelerometerSelf"

    const-string v4, "FFF - Spec null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "FFF"

    goto/16 :goto_12e
.end method

.method public static initialize()V
    .registers 3

    .prologue
    .line 28
    const-string v0, "SensorCalculator"

    const-string v1, "initialize"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/sec/factory/modules/SensorSpec;

    invoke-direct {v0}, Lcom/sec/factory/modules/SensorSpec;-><init>()V

    sput-object v0, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    .line 32
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorSpec;->getSpecAccel()Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    move-result-object v0

    const-string v1, "AccelSelf"

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->specLog(Lcom/sec/factory/modules/SensorSpec$Accelerometer;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorSpec;->getSpecGeomagnetic_DAC()Lcom/sec/factory/modules/SensorSpec$Range;

    move-result-object v0

    const-string v1, "MagneticDAC"

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->specLog(Lcom/sec/factory/modules/SensorSpec$Range;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorSpec;->getSpecGeomagnetic_ADC()Lcom/sec/factory/modules/SensorSpec$Range;

    move-result-object v0

    const-string v1, "MagneticADC"

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->specLog(Lcom/sec/factory/modules/SensorSpec$Range;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorSpec;->getSpecGeomagnetic_ADC2()Lcom/sec/factory/modules/SensorSpec$Range;

    move-result-object v0

    const-string v1, "MagneticADC2"

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->specLog(Lcom/sec/factory/modules/SensorSpec$Range;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/sec/factory/modules/SensorCalculator;->mSensorSpec:Lcom/sec/factory/modules/SensorSpec;

    invoke-virtual {v0}, Lcom/sec/factory/modules/SensorSpec;->getSpecGeomagnetic_Self()Lcom/sec/factory/modules/SensorSpec$Range;

    move-result-object v0

    const-string v1, "MagneticSelf"

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorCalculator;->specLog(Lcom/sec/factory/modules/SensorSpec$Range;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private static isSpecIn(III)Z
    .registers 7
    .parameter "value"
    .parameter "rangeMin"
    .parameter "rangeMax"

    .prologue
    .line 295
    if-gt p1, p0, :cond_3a

    if-gt p0, p2, :cond_3a

    .line 296
    const-string v0, "SensorCalculator"

    const-string v1, "isSpecIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pass => ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x1

    .line 302
    :goto_39
    return v0

    .line 300
    :cond_3a
    const-string v0, "SensorCalculator"

    const-string v1, "isSpecIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail => ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private static specLog(Lcom/sec/factory/modules/SensorSpec$Accelerometer;Ljava/lang/String;)V
    .registers 3
    .parameter "data"
    .parameter "name"

    .prologue
    .line 332
    if-eqz p0, :cond_8

    .line 333
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;->mRange:Lcom/sec/factory/modules/SensorSpec$Range;

    invoke-static {v0, p1}, Lcom/sec/factory/modules/SensorCalculator;->specLog(Lcom/sec/factory/modules/SensorSpec$Range;Ljava/lang/String;)V

    .line 336
    :goto_7
    return-void

    .line 335
    :cond_8
    const/4 v0, 0x0

    check-cast v0, Lcom/sec/factory/modules/SensorSpec$Range;

    invoke-static {v0, p1}, Lcom/sec/factory/modules/SensorCalculator;->specLog(Lcom/sec/factory/modules/SensorSpec$Range;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static specLog(Lcom/sec/factory/modules/SensorSpec$Range;Ljava/lang/String;)V
    .registers 5
    .parameter "data"
    .parameter "name"

    .prologue
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, message:Ljava/lang/String;
    if-eqz p0, :cond_ec

    .line 311
    iget-boolean v1, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_X:Z

    if-eqz v1, :cond_b0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Min:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_X_Max:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_4a
    iget-boolean v1, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_X:Z

    if-eqz v1, :cond_c4

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Y("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Min:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Y_Max:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_79
    iget-boolean v1, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mIsSupportRange1_X:Z

    if-eqz v1, :cond_d8

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Z("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Min:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/factory/modules/SensorSpec$Range;->mRange1_Z_Max:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_a8
    const-string v1, "SensorCalculator"

    const-string v2, "specLog"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void

    .line 314
    :cond_b0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X(not supported) , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    .line 319
    :cond_c4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Y(not supported) , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    .line 324
    :cond_d8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Z(not supported)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a8

    .line 326
    :cond_ec
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a8
.end method
