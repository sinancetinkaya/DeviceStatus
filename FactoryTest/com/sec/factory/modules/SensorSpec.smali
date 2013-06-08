.class public Lcom/sec/factory/modules/SensorSpec;
.super Ljava/lang/Object;
.source "SensorSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/modules/SensorSpec$Light;,
        Lcom/sec/factory/modules/SensorSpec$Proximity;,
        Lcom/sec/factory/modules/SensorSpec$Range;,
        Lcom/sec/factory/modules/SensorSpec$Accelerometer;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private RANGE_MAX_INTEGER:I

.field private RANGE_MIN_INTEGER:I

.field private mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

.field private mFeature_Accelerometer:Ljava/lang/String;

.field private mFeature_Light:Ljava/lang/String;

.field private mFeature_Magnetic:Ljava/lang/String;

.field private mFeature_Proximity:Ljava/lang/String;

.field private mLight:Lcom/sec/factory/modules/SensorSpec$Light;

.field private mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

.field private mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

.field private mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

.field private mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

.field private mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "SensorSpec"

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->CLASS_NAME:Ljava/lang/String;

    .line 98
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    .line 99
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MIN_INTEGER:I

    .line 106
    iput-object v1, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    .line 107
    iput-object v1, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 108
    iput-object v1, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 109
    iput-object v1, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 110
    iput-object v1, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 111
    iput-object v1, p0, Lcom/sec/factory/modules/SensorSpec;->mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;

    .line 112
    iput-object v1, p0, Lcom/sec/factory/modules/SensorSpec;->mLight:Lcom/sec/factory/modules/SensorSpec$Light;

    .line 118
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_ACCELEROMETER:I

    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    .line 120
    const-string v0, "SensorSpec"

    const-string v1, "SensorSpec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFeature_Accelerometer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/sec/factory/modules/SensorSpec;->setSpecAccel()V

    .line 124
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GEOMAGNETIC:I

    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    .line 126
    const-string v0, "SensorSpec"

    const-string v1, "SensorSpec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFeature_Magnetic : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/sec/factory/modules/SensorSpec;->setSpecMagnetic()V

    .line 130
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_PROXIMITY:I

    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    .line 132
    const-string v0, "SensorSpec"

    const-string v1, "SensorSpec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFeature_Proximity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/sec/factory/modules/SensorSpec;->setSpecProximity()V

    .line 136
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_LIGHT:I

    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    .line 138
    const-string v0, "SensorSpec"

    const-string v1, "SensorSpec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFeature_Light : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Light:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/sec/factory/modules/SensorSpec;->setSpecLight()V

    .line 140
    return-void
.end method

.method private setSpecAccel()V
    .registers 13

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    .line 219
    :goto_7
    return-void

    .line 152
    :cond_8
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "BOSCH_SMB380"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 153
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0xa

    const/16 v3, -0x34

    const/16 v4, 0x34

    const/16 v5, -0x34

    const/16 v6, 0x34

    const/16 v7, 0xc0

    const/16 v8, 0x140

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto :goto_7

    .line 156
    :cond_2d
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "BOSCH_BMA250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 157
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0xa

    const/16 v3, -0x34

    const/16 v4, 0x34

    const/16 v5, -0x34

    const/16 v6, 0x34

    const/16 v7, 0xbe

    const/16 v8, 0x142

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto :goto_7

    .line 160
    :cond_52
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "BOSCH_BMA022"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 161
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0xa

    const/16 v3, -0x34

    const/16 v4, 0x34

    const/16 v5, -0x34

    const/16 v6, 0x34

    const/16 v7, 0xb9

    const/16 v8, 0x147

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto :goto_7

    .line 164
    :cond_77
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "BOSCH_BMA023"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 165
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0xa

    const/16 v3, -0x38

    const/16 v4, 0x38

    const/16 v5, -0x38

    const/16 v6, 0x38

    const/16 v7, 0xb5

    const/16 v8, 0x14b

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7

    .line 168
    :cond_9d
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "BOSCH_BMA222"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 169
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0x8

    const/16 v3, -0xf

    const/16 v4, 0xf

    const/16 v5, -0xf

    const/16 v6, 0xf

    const/16 v7, 0x2c

    const/16 v8, 0x54

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7

    .line 172
    :cond_c2
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "BOSCH_BMA220"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 173
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/4 v2, 0x6

    const/4 v3, -0x6

    const/4 v4, 0x6

    const/4 v5, -0x6

    const/4 v6, 0x6

    const/16 v7, 0x9

    const/16 v8, 0x17

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7

    .line 175
    :cond_e2
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "BOSCH_BMA254"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 176
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0xc

    const/16 v3, -0xb5

    const/16 v4, 0xb5

    const/16 v5, -0xb5

    const/16 v6, 0xb5

    const/16 v7, 0x312

    const/16 v8, 0x4ee

    const/4 v9, 0x0

    const/16 v10, 0x64

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7

    .line 180
    :cond_108
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "STMICRO_KR3DH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 181
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0xc

    const/16 v3, -0x66

    const/16 v4, 0x66

    const/16 v5, -0x66

    const/16 v6, 0x66

    const/16 v7, 0x351

    const/16 v8, 0x4af

    const/4 v9, 0x0

    const/16 v10, 0x64

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7

    .line 184
    :cond_12e
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "STMICRO_K3DH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 185
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0xc

    const/16 v3, -0x9a

    const/16 v4, 0x9a

    const/16 v5, -0x9a

    const/16 v6, 0x9a

    const/16 v7, 0x31e

    const/16 v8, 0x4e2

    const/4 v9, 0x0

    const/16 v10, 0x64

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7

    .line 188
    :cond_154
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "STMICRO_KR3DM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 189
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0x8

    const/16 v3, -0xc

    const/16 v4, 0xc

    const/16 v5, -0xc

    const/16 v6, 0xc

    const/16 v7, 0x30

    const/16 v8, 0x50

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7

    .line 192
    :cond_179
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "STMICRO_LSM330DLC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 194
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0xc

    const/16 v3, -0x9a

    const/16 v4, 0x9a

    const/16 v5, -0x9a

    const/16 v6, 0x9a

    const/16 v7, 0x31e

    const/16 v8, 0x4e2

    const/4 v9, 0x0

    const/16 v10, 0x64

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7

    .line 198
    :cond_19f
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "KIONIX_KXUD9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    .line 199
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0xc

    const/16 v3, -0x97

    const/16 v4, 0x97

    const/16 v5, -0x97

    const/16 v6, 0x97

    const/16 v7, 0x282

    const/16 v8, 0x3e4

    const/4 v9, 0x0

    const/16 v10, 0x64

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7

    .line 202
    :cond_1c5
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "KIONIX_KXTF9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 203
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0xc

    const/16 v3, -0x85

    const/16 v4, 0x85

    const/16 v5, -0x85

    const/16 v6, 0x85

    const/16 v7, 0x34e

    const/16 v8, 0x4b2

    const/4 v9, 0x0

    const/16 v10, 0x64

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7

    .line 207
    :cond_1eb
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "INVENSENSE_MPU6050"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_211

    .line 208
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0x10

    const/16 v3, -0x806

    const/16 v4, 0x806

    const/16 v5, -0x806

    const/16 v6, 0x806

    const/16 v7, 0x33f6

    const/16 v8, 0x4c0a

    const/4 v9, 0x0

    const/16 v10, 0x640

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7

    .line 211
    :cond_211
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Accelerometer:Ljava/lang/String;

    const-string v1, "INVENSENSE_MPU6051"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_237

    .line 212
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    const/16 v2, 0x10

    const/16 v3, -0x806

    const/16 v4, 0x806

    const/16 v5, -0x806

    const/16 v6, 0x806

    const/16 v7, 0x33f6

    const/16 v8, 0x4c0a

    const/4 v9, 0x0

    const/16 v10, 0x640

    const/4 v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/sec/factory/modules/SensorSpec$Accelerometer;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7

    .line 216
    :cond_237
    const-string v0, "SensorSpec"

    const-string v1, "setSpecAccel"

    const-string v2, "feature : Unknown => return null"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    goto/16 :goto_7
.end method

.method private setSpecLight()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Light:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 414
    iput-object v4, p0, Lcom/sec/factory/modules/SensorSpec;->mLight:Lcom/sec/factory/modules/SensorSpec$Light;

    .line 451
    :goto_9
    return-void

    .line 420
    :cond_a
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Light:Ljava/lang/String;

    const-string v1, "SHARP_GP2AP002S00F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 421
    iput-object v4, p0, Lcom/sec/factory/modules/SensorSpec;->mLight:Lcom/sec/factory/modules/SensorSpec$Light;

    goto :goto_9

    .line 423
    :cond_17
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Light:Ljava/lang/String;

    const-string v1, "SHARP_GP2AP002A00F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 424
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Light;

    invoke-direct {v0, p0, v2, v2, v2}, Lcom/sec/factory/modules/SensorSpec$Light;-><init>(Lcom/sec/factory/modules/SensorSpec;IZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mLight:Lcom/sec/factory/modules/SensorSpec$Light;

    goto :goto_9

    .line 426
    :cond_29
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Light:Ljava/lang/String;

    const-string v1, "SHARP_GP2AP030A00F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 427
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Light;

    invoke-direct {v0, p0, v2, v2, v2}, Lcom/sec/factory/modules/SensorSpec$Light;-><init>(Lcom/sec/factory/modules/SensorSpec;IZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mLight:Lcom/sec/factory/modules/SensorSpec$Light;

    goto :goto_9

    .line 430
    :cond_3b
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Light:Ljava/lang/String;

    const-string v1, "CAPELLA_CM3663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 431
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Light;

    invoke-direct {v0, p0, v2, v2, v2}, Lcom/sec/factory/modules/SensorSpec$Light;-><init>(Lcom/sec/factory/modules/SensorSpec;IZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mLight:Lcom/sec/factory/modules/SensorSpec$Light;

    goto :goto_9

    .line 433
    :cond_4d
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Light:Ljava/lang/String;

    const-string v1, "CAPELLA_CM36691"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 434
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Light;

    invoke-direct {v0, p0, v2, v3, v3}, Lcom/sec/factory/modules/SensorSpec$Light;-><init>(Lcom/sec/factory/modules/SensorSpec;IZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mLight:Lcom/sec/factory/modules/SensorSpec$Light;

    goto :goto_9

    .line 436
    :cond_5f
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Light:Ljava/lang/String;

    const-string v1, "CAPELLA_CM36651"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 437
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Light;

    invoke-direct {v0, p0, v3, v3, v2}, Lcom/sec/factory/modules/SensorSpec$Light;-><init>(Lcom/sec/factory/modules/SensorSpec;IZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mLight:Lcom/sec/factory/modules/SensorSpec$Light;

    goto :goto_9

    .line 440
    :cond_71
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Light:Ljava/lang/String;

    const-string v1, "TAOS_TMD2672x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 441
    iput-object v4, p0, Lcom/sec/factory/modules/SensorSpec;->mLight:Lcom/sec/factory/modules/SensorSpec$Light;

    goto :goto_9

    .line 443
    :cond_7e
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Light:Ljava/lang/String;

    const-string v1, "TAOS_TMD2771x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 444
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Light;

    invoke-direct {v0, p0, v2, v2, v2}, Lcom/sec/factory/modules/SensorSpec$Light;-><init>(Lcom/sec/factory/modules/SensorSpec;IZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mLight:Lcom/sec/factory/modules/SensorSpec$Light;

    goto/16 :goto_9

    .line 446
    :cond_91
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Light:Ljava/lang/String;

    const-string v1, "TAOS_TMD2772x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 447
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Light;

    invoke-direct {v0, p0, v2, v2, v2}, Lcom/sec/factory/modules/SensorSpec$Light;-><init>(Lcom/sec/factory/modules/SensorSpec;IZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mLight:Lcom/sec/factory/modules/SensorSpec$Light;

    goto/16 :goto_9

    .line 450
    :cond_a4
    iput-object v4, p0, Lcom/sec/factory/modules/SensorSpec;->mLight:Lcom/sec/factory/modules/SensorSpec$Light;

    goto/16 :goto_9
.end method

.method private setSpecMagnetic()V
    .registers 16

    .prologue
    const/16 v8, 0xcc

    const/16 v6, 0x1e

    const/16 v5, -0x1e

    const/4 v14, 0x0

    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 223
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 224
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 225
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 226
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 369
    :goto_14
    return-void

    .line 232
    :cond_15
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "AK8963"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 233
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 234
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v2, -0x1964

    const/16 v3, 0x1964

    const/16 v4, -0x1964

    const/16 v5, 0x1964

    const/16 v6, -0x1964

    const/16 v7, 0x1964

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 235
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 236
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v2, -0xc8

    const/16 v3, 0xc8

    const/16 v4, -0xc8

    const/16 v5, 0xc8

    const/16 v6, -0xc80

    const/16 v7, -0x320

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto :goto_14

    .line 239
    :cond_4c
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "AK8963C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 240
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 241
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v2, -0x1964

    const/16 v3, 0x1964

    const/16 v4, -0x1964

    const/16 v5, 0x1964

    const/16 v6, -0x1964

    const/16 v7, 0x1964

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 242
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 243
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v2, -0xc8

    const/16 v3, 0xc8

    const/16 v4, -0xc8

    const/16 v5, 0xc8

    const/16 v6, -0xc80

    const/16 v7, -0x320

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto :goto_14

    .line 246
    :cond_83
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "AK8963C_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 247
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 248
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v2, -0x1964

    const/16 v3, 0x1964

    const/16 v4, -0x1964

    const/16 v5, 0x1964

    const/16 v6, -0x1964

    const/16 v7, 0x1964

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 249
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 250
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v2, -0xc8

    const/16 v3, 0xc8

    const/16 v4, -0xc8

    const/16 v5, 0xc8

    const/16 v6, -0xc80

    const/16 v7, -0x320

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 253
    :cond_bb
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "AK8973"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 254
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v3, 0x7e

    const/16 v5, 0x7e

    const/16 v7, 0x7e

    const/16 v8, 0x80

    const/16 v9, 0xfe

    const/16 v10, 0x80

    const/16 v11, 0xfe

    const/16 v12, 0x80

    const/16 v13, 0xfe

    move-object v1, p0

    move v4, v2

    move v6, v2

    invoke-direct/range {v0 .. v13}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIIIIIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 255
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v2, 0x58

    const/16 v3, 0xa8

    const/16 v4, 0x58

    const/16 v5, 0xa8

    const/16 v6, 0x58

    const/16 v7, 0xa8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 256
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 257
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 260
    :cond_fb
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "AK8975"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 261
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 262
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v2, -0x7d0

    const/16 v3, 0x7d0

    const/16 v4, -0x7d0

    const/16 v5, 0x7d0

    const/16 v6, -0x7d0

    const/16 v7, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 263
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 264
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v2, -0x64

    const/16 v3, 0x64

    const/16 v4, -0x64

    const/16 v5, 0x64

    const/16 v6, -0x3e8

    const/16 v7, -0x12c

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 268
    :cond_133
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "YAS529"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 269
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    const/4 v5, 0x5

    const/16 v6, 0x20

    const/4 v7, 0x5

    const/16 v8, 0x20

    const/4 v9, 0x5

    const/16 v10, 0x20

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 270
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v3, 0x167

    move-object v1, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 271
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 272
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v5, 0x50

    iget v6, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    const/16 v7, 0x6b

    iget v8, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    move-object v4, p0

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 275
    :cond_172
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "YAS530"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 276
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    move-object v4, p0

    move v7, v5

    move v8, v6

    move v9, v5

    move v10, v6

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 277
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v3, 0x167

    move-object v1, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 278
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 279
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v5, 0x85

    iget v6, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    const/16 v7, 0xa0

    iget v8, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    move-object v4, p0

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 282
    :cond_1ac
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "YAS530A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 283
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    move-object v4, p0

    move v7, v5

    move v8, v6

    move v9, v5

    move v10, v6

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 284
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v3, 0x167

    move-object v1, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 285
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 286
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v5, 0x85

    iget v6, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    const/16 v7, 0xa0

    iget v8, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    move-object v4, p0

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 289
    :cond_1e6
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "YAS530C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_232

    .line 290
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    move-object v4, p0

    move v7, v5

    move v8, v6

    move v9, v5

    move v10, v6

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 291
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v3, 0x167

    move-object v1, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 292
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v5, -0x190

    const/16 v6, 0x190

    const/16 v7, -0x190

    const/16 v8, 0x190

    const/16 v9, -0x190

    const/16 v10, 0x190

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 293
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v5, 0x85

    iget v6, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    const/16 v7, 0xa0

    iget v8, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    move-object v4, p0

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 296
    :cond_232
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "YAS532"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27e

    .line 297
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    move-object v4, p0

    move v7, v5

    move v8, v6

    move v9, v5

    move v10, v6

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 298
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v3, 0x167

    move-object v1, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 299
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v5, -0x258

    const/16 v6, 0x258

    const/16 v7, -0x258

    const/16 v8, 0x258

    const/16 v9, -0x258

    const/16 v10, 0x258

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 300
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v5, 0x11

    iget v6, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    const/16 v7, 0x16

    iget v8, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    move-object v4, p0

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 303
    :cond_27e
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "YAS532B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ca

    .line 304
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    move-object v4, p0

    move v7, v5

    move v8, v6

    move v9, v5

    move v10, v6

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 305
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v3, 0x167

    move-object v1, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 306
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v5, -0x258

    const/16 v6, 0x258

    const/16 v7, -0x258

    const/16 v8, 0x258

    const/16 v9, -0x258

    const/16 v10, 0x258

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 307
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v5, 0x11

    iget v6, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    const/16 v7, 0x16

    iget v8, p0, Lcom/sec/factory/modules/SensorSpec;->RANGE_MAX_INTEGER:I

    move-object v4, p0

    move v9, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 311
    :cond_2ca
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "MMC3140MS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fc

    .line 312
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v3, 0x266

    const/16 v5, 0x266

    const/16 v7, 0x266

    move-object v1, p0

    move v2, v8

    move v4, v8

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 313
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v3, 0x266

    const/16 v5, 0x266

    const/16 v7, 0x266

    move-object v1, p0

    move v2, v8

    move v4, v8

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 314
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 315
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 318
    :cond_2fc
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "MMC3280MS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32e

    .line 319
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v3, 0x266

    const/16 v5, 0x266

    const/16 v7, 0x266

    move-object v1, p0

    move v2, v8

    move v4, v8

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 320
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v3, 0x266

    const/16 v5, 0x266

    const/16 v7, 0x266

    move-object v1, p0

    move v2, v8

    move v4, v8

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 321
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 322
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 326
    :cond_32e
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "AMOTECH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_342

    .line 327
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 328
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 329
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 330
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 334
    :cond_342
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "BMC022"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_375

    .line 335
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 336
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v5, -0x1000

    const/16 v6, 0x1000

    const/16 v7, -0x1000

    const/16 v8, 0x1000

    const/16 v9, -0x4000

    const/16 v10, 0x4000

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 337
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 338
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v6, 0xb40

    const/16 v7, 0xf00

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 341
    :cond_375
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "BMC050"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a8

    .line 342
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 343
    new-instance v3, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v5, -0x1000

    const/16 v6, 0x1000

    const/16 v7, -0x1000

    const/16 v8, 0x1000

    const/16 v9, -0x4000

    const/16 v10, 0x4000

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v3, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 344
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 345
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v6, 0xb40

    const/16 v7, 0xf00

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 349
    :cond_3a8
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "HSCDTD004A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ce

    .line 350
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 351
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v2, -0x7d0

    const/16 v3, 0x7d0

    const/16 v4, -0x7d0

    const/16 v5, 0x7d0

    const/16 v6, -0x7d0

    const/16 v7, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 352
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 353
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 356
    :cond_3ce
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Magnetic:Ljava/lang/String;

    const-string v1, "HSCDTD006A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f4

    .line 357
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 358
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Range;

    const/16 v2, -0x7d0

    const/16 v3, 0x7d0

    const/16 v4, -0x7d0

    const/16 v5, 0x7d0

    const/16 v6, -0x7d0

    const/16 v7, 0x7d0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/factory/modules/SensorSpec$Range;-><init>(Lcom/sec/factory/modules/SensorSpec;IIIIII)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 359
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 360
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14

    .line 364
    :cond_3f4
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 365
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 366
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    .line 367
    iput-object v14, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    goto/16 :goto_14
.end method

.method private setSpecProximity()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 373
    iput-object v4, p0, Lcom/sec/factory/modules/SensorSpec;->mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;

    .line 410
    :goto_9
    return-void

    .line 379
    :cond_a
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    const-string v1, "SHARP_GP2AP002S00F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 380
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Proximity;

    invoke-direct {v0, p0, v2, v2, v2}, Lcom/sec/factory/modules/SensorSpec$Proximity;-><init>(Lcom/sec/factory/modules/SensorSpec;ZZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;

    goto :goto_9

    .line 382
    :cond_1c
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    const-string v1, "SHARP_GP2AP002A00F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 383
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Proximity;

    invoke-direct {v0, p0, v2, v2, v2}, Lcom/sec/factory/modules/SensorSpec$Proximity;-><init>(Lcom/sec/factory/modules/SensorSpec;ZZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;

    goto :goto_9

    .line 385
    :cond_2e
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    const-string v1, "SHARP_GP2AP030A00F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 386
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Proximity;

    invoke-direct {v0, p0, v2, v3, v2}, Lcom/sec/factory/modules/SensorSpec$Proximity;-><init>(Lcom/sec/factory/modules/SensorSpec;ZZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;

    goto :goto_9

    .line 389
    :cond_40
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    const-string v1, "CAPELLA_CM3663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 390
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Proximity;

    invoke-direct {v0, p0, v2, v3, v2}, Lcom/sec/factory/modules/SensorSpec$Proximity;-><init>(Lcom/sec/factory/modules/SensorSpec;ZZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;

    goto :goto_9

    .line 392
    :cond_52
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    const-string v1, "CAPELLA_CM36691"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 393
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Proximity;

    invoke-direct {v0, p0, v3, v3, v3}, Lcom/sec/factory/modules/SensorSpec$Proximity;-><init>(Lcom/sec/factory/modules/SensorSpec;ZZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;

    goto :goto_9

    .line 395
    :cond_64
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    const-string v1, "CAPELLA_CM36651"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 396
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Proximity;

    invoke-direct {v0, p0, v3, v3, v2}, Lcom/sec/factory/modules/SensorSpec$Proximity;-><init>(Lcom/sec/factory/modules/SensorSpec;ZZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;

    goto :goto_9

    .line 399
    :cond_76
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    const-string v1, "TAOS_TMD2672x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 400
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Proximity;

    invoke-direct {v0, p0, v2, v3, v2}, Lcom/sec/factory/modules/SensorSpec$Proximity;-><init>(Lcom/sec/factory/modules/SensorSpec;ZZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;

    goto :goto_9

    .line 402
    :cond_88
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    const-string v1, "TAOS_TMD2771x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 403
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Proximity;

    invoke-direct {v0, p0, v2, v3, v2}, Lcom/sec/factory/modules/SensorSpec$Proximity;-><init>(Lcom/sec/factory/modules/SensorSpec;ZZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;

    goto/16 :goto_9

    .line 405
    :cond_9b
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mFeature_Proximity:Ljava/lang/String;

    const-string v1, "TAOS_TMD2772x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 406
    new-instance v0, Lcom/sec/factory/modules/SensorSpec$Proximity;

    invoke-direct {v0, p0, v2, v3, v2}, Lcom/sec/factory/modules/SensorSpec$Proximity;-><init>(Lcom/sec/factory/modules/SensorSpec;ZZZ)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;

    goto/16 :goto_9

    .line 409
    :cond_ae
    iput-object v4, p0, Lcom/sec/factory/modules/SensorSpec;->mProximity:Lcom/sec/factory/modules/SensorSpec$Proximity;

    goto/16 :goto_9
.end method


# virtual methods
.method public getSpecAccel()Lcom/sec/factory/modules/SensorSpec$Accelerometer;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mAccelerometer:Lcom/sec/factory/modules/SensorSpec$Accelerometer;

    return-object v0
.end method

.method public getSpecGeomagnetic_ADC()Lcom/sec/factory/modules/SensorSpec$Range;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC:Lcom/sec/factory/modules/SensorSpec$Range;

    return-object v0
.end method

.method public getSpecGeomagnetic_ADC2()Lcom/sec/factory/modules/SensorSpec$Range;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeADC2:Lcom/sec/factory/modules/SensorSpec$Range;

    return-object v0
.end method

.method public getSpecGeomagnetic_DAC()Lcom/sec/factory/modules/SensorSpec$Range;
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeDAC:Lcom/sec/factory/modules/SensorSpec$Range;

    return-object v0
.end method

.method public getSpecGeomagnetic_Self()Lcom/sec/factory/modules/SensorSpec$Range;
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sec/factory/modules/SensorSpec;->mMagneticRangeSelf:Lcom/sec/factory/modules/SensorSpec$Range;

    return-object v0
.end method
