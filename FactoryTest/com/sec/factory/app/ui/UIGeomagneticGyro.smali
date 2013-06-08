.class public Lcom/sec/factory/app/ui/UIGeomagneticGyro;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UIGeomagneticGyro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UIGeomagneticGyro$EmptyListener;,
        Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;
    }
.end annotation


# static fields
.field public static final WHAT_GEOMAGNETIC_FAIL:I

.field public static final WHAT_GEOMAGNETIC_PASS:I

.field public static final WHAT_GYROSCOPE_FAIL:I

.field public static final WHAT_GYROSCOPE_PASS:I


# instance fields
.field private final TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

.field private final TESTINFO_ARRAY_INDEX_GYROSCOPE:I

.field private final TESTINFO_IC_ALPS:Ljava/lang/String;

.field private final TESTINFO_IC_ASAHI:Ljava/lang/String;

.field private final TESTINFO_IC_INVENSENSE:Ljava/lang/String;

.field private final TESTINFO_IC_STMICRO_SMARTPHONE:Ljava/lang/String;

.field private final TESTINFO_IC_STMICRO_TABLET:Ljava/lang/String;

.field private final TESTINFO_IC_YAMAHA:Ljava/lang/String;

.field private dummy:I

.field private mFeature_Geomagnetic:Ljava/lang/String;

.field private mFeature_Gyroscope:Ljava/lang/String;

.field mFragment_geomagnetic_alps:Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;

.field mFragment_geomagnetic_asahi:Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;

.field mFragment_geomagnetic_yamaha:Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;

.field mFragment_gyroscope_invensense:Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;

.field mFragment_gyroscope_stmicro_smartphone:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;

.field mFragment_gyroscope_stmicro_tablet:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;

.field private mHandler:Landroid/os/Handler;

.field private mLinear_Bottom:Landroid/widget/LinearLayout;

.field private mLinear_Top:Landroid/widget/LinearLayout;

.field private mList_TestItem:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

.field private mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

.field private mSenserID:[I

.field private mSensorID_Geomagnetic_ADC:I

.field private mSensorID_Geomagnetic_ADC2:I

.field private mSensorID_Geomagnetic_DAC:I

.field private mSensorID_Geomagnetic_Initialized:I

.field private mSensorID_Geomagnetic_Released:I

.field private mSensorID_Geomagnetic_Self:I

.field private mSensorID_Geomagnetic_Status:I

.field private mSensorID_Geomagnetic_Temperature:I

.field private mSensorID_Gyrocope_Power:I

.field private mSensorID_Gyrocope_Self:I

.field private mSensorID_Gyrocope_Temperature:I

.field private mSensorID_None:I

.field private mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

.field private mView_Separator:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    sget v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_MAX:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GYROSCOPE_PASS:I

    .line 106
    sget v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_MAX:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GYROSCOPE_FAIL:I

    .line 107
    sget v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_MAX:I

    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GEOMAGNETIC_PASS:I

    .line 108
    sget v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_MAX:I

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GEOMAGNETIC_FAIL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 113
    const-string v0, "UIGeomagneticGyro"

    const/16 v1, 0x25

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 58
    const-string v0, "INVENSENSE"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_IC_INVENSENSE:Ljava/lang/String;

    .line 59
    const-string v0, "STMICRO_SMARTPHONE"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_IC_STMICRO_SMARTPHONE:Ljava/lang/String;

    .line 60
    const-string v0, "STMICRO_TABLET"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_IC_STMICRO_TABLET:Ljava/lang/String;

    .line 61
    const-string v0, "ASAHI"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_IC_ASAHI:Ljava/lang/String;

    .line 62
    const-string v0, "YAMAHA"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_IC_YAMAHA:Ljava/lang/String;

    .line 63
    const-string v0, "ALPS"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_IC_ALPS:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->dummy:I

    .line 66
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->dummy:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    .line 67
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->dummy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->dummy:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    .line 68
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->dummy:I

    new-array v0, v0, [Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSenserID:[I

    .line 83
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_SCOPE_MIN:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    .line 85
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Gyrocope_Power:I

    .line 86
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Gyrocope_Temperature:I

    .line 87
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Gyrocope_Self:I

    .line 89
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Initialized:I

    .line 90
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Status:I

    .line 91
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Temperature:I

    .line 92
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_DAC:I

    .line 93
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC:I

    .line 94
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC2:I

    .line 95
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Self:I

    .line 96
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Released:I

    .line 130
    new-instance v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro$1;-><init>(Lcom/sec/factory/app/ui/UIGeomagneticGyro;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method private GyroTestFail()V
    .registers 5

    .prologue
    .line 426
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "Gyro Test Fail"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 428
    const-string v3, "Do Not Move & Re-Test"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 429
    new-instance v2, Lcom/sec/factory/app/ui/UIGeomagneticGyro$EmptyListener;

    invoke-direct {v2, p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro$EmptyListener;-><init>(Lcom/sec/factory/app/ui/UIGeomagneticGyro;)V

    .line 430
    .local v2, pl:Landroid/content/DialogInterface$OnDismissListener;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 431
    .local v0, ad:Landroid/app/AlertDialog;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 432
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 433
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UIGeomagneticGyro;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UIGeomagneticGyro;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->checkResult(I)V

    return-void
.end method

.method private checkResult(I)V
    .registers 10
    .parameter "what"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 367
    sget v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GYROSCOPE_PASS:I

    if-ne p1, v3, :cond_43

    .line 368
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "checkResult"

    const-string v5, "WHAT_GYROSCOPE_PASS"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v3, v3, v4

    iput-boolean v6, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIsTestComplete:Z

    .line 370
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v3, v3, v4

    iput-boolean v6, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIsTestPass:Z

    .line 371
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mID:I

    invoke-direct {p0, v3, v6}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->writeNV(IZ)V

    .line 393
    :cond_2a
    :goto_2a
    const/4 v2, 0x1

    .line 394
    .local v2, isTestComplete:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_c2

    .line 395
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    aget-object v3, v3, v0

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIsTestComplete:Z

    if-nez v3, :cond_40

    .line 396
    const/4 v2, 0x0

    .line 394
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 372
    .end local v0           #i:I
    .end local v2           #isTestComplete:Z
    :cond_43
    sget v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GYROSCOPE_FAIL:I

    if-ne p1, v3, :cond_6f

    .line 373
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "checkResult"

    const-string v5, "WHAT_GYROSCOPE_FAIL"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v3, v3, v4

    iput-boolean v6, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIsTestComplete:Z

    .line 375
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v3, v3, v4

    iput-boolean v7, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIsTestPass:Z

    .line 376
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mID:I

    invoke-direct {p0, v3, v7}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->writeNV(IZ)V

    .line 377
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->GyroTestFail()V

    goto :goto_2a

    .line 381
    :cond_6f
    sget v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GEOMAGNETIC_PASS:I

    if-ne p1, v3, :cond_98

    .line 382
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "checkResult"

    const-string v5, "WHAT_GEOMAGNETIC_PASS"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v3, v3, v4

    iput-boolean v6, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIsTestComplete:Z

    .line 384
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v3, v3, v4

    iput-boolean v6, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIsTestPass:Z

    .line 385
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mID:I

    invoke-direct {p0, v3, v6}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->writeNV(IZ)V

    goto :goto_2a

    .line 386
    :cond_98
    sget v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GEOMAGNETIC_FAIL:I

    if-ne p1, v3, :cond_2a

    .line 387
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "checkResult"

    const-string v5, "WHAT_GEOMAGNETIC_FAIL"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v3, v3, v4

    iput-boolean v6, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIsTestComplete:Z

    .line 389
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v3, v3, v4

    iput-boolean v7, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIsTestPass:Z

    .line 390
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v4, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mID:I

    invoke-direct {p0, v3, v7}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->writeNV(IZ)V

    goto/16 :goto_2a

    .line 399
    .restart local v0       #i:I
    .restart local v2       #isTestComplete:Z
    :cond_c2
    if-eqz v2, :cond_f2

    .line 400
    const/4 v1, 0x1

    .line 401
    .local v1, isAllPass:Z
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "checkResult"

    const-string v5, "finish"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x0

    :goto_cf
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_e6

    .line 403
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    aget-object v3, v3, v0

    if-eqz v3, :cond_e3

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIsTestPass:Z

    if-nez v3, :cond_e3

    .line 404
    const/4 v1, 0x0

    .line 402
    :cond_e3
    add-int/lit8 v0, v0, 0x1

    goto :goto_cf

    .line 407
    :cond_e6
    if-eqz v1, :cond_f2

    .line 408
    const/16 v3, 0x25

    const/16 v4, 0x50

    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->setTestResultWithoutNV(BB)V

    .line 410
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->finishOnPassWithTimer()V

    .line 413
    .end local v1           #isAllPass:Z
    :cond_f2
    return-void
.end method

.method private getDataGeomagneticAlps()Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 616
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "getDataGeomagneticAlps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    new-instance v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;

    invoke-direct {v0}, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;-><init>()V

    .line 619
    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Initialized:I

    if-ge v1, v2, :cond_23

    .line 620
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Initialized:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 621
    iput-boolean v3, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mIsDisplay_Initialized:Z

    .line 622
    aget-object v1, v1, v4

    iput-object v1, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mInitialized:Ljava/lang/String;

    .line 625
    :cond_23
    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Status:I

    if-ge v1, v2, :cond_3b

    .line 626
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Status:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 627
    iput-boolean v3, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mIsDisplay_Status:Z

    .line 628
    aget-object v2, v1, v3

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mStatus_Result:Ljava/lang/String;

    .line 629
    aget-object v1, v1, v4

    iput-object v1, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mStatus:Ljava/lang/String;

    .line 632
    :cond_3b
    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC:I

    if-ge v1, v2, :cond_5d

    .line 633
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 634
    iput-boolean v3, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mIsDisplay_ADC:Z

    .line 635
    aget-object v2, v1, v3

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_Result:Ljava/lang/String;

    .line 636
    aget-object v2, v1, v4

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_X:Ljava/lang/String;

    .line 637
    const/4 v2, 0x3

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_Y:Ljava/lang/String;

    .line 638
    const/4 v2, 0x4

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;->mADC_Z:Ljava/lang/String;

    .line 641
    :cond_5d
    return-object v0
.end method

.method private getDataGeomagneticAsahi()Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 488
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;

    invoke-direct {v0}, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;-><init>()V

    .line 491
    .local v0, data:Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Initialized:I

    if-ge v2, v3, :cond_41

    .line 492
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Initialized:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, temp:[Ljava/lang/String;
    iput-boolean v6, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mIsDisplay_Initialized:Z

    .line 494
    aget-object v2, v1, v7

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mInitialized:Ljava/lang/String;

    .line 495
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mInitialized : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mInitialized:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .end local v1           #temp:[Ljava/lang/String;
    :cond_41
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Temperature:I

    if-ge v2, v3, :cond_91

    .line 500
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Temperature:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 501
    .restart local v1       #temp:[Ljava/lang/String;
    iput-boolean v6, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mIsDisplay_Temperature:Z

    .line 502
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mTemperature_Result:Ljava/lang/String;

    .line 503
    aget-object v2, v1, v7

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mTemperature:Ljava/lang/String;

    .line 504
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mTemperature_Result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mTemperature_Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mTemperature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mTemperature:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .end local v1           #temp:[Ljava/lang/String;
    :cond_91
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Self:I

    if-ge v2, v3, :cond_121

    .line 511
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Self:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 512
    .restart local v1       #temp:[Ljava/lang/String;
    iput-boolean v6, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mIsDisplay_Self:Z

    .line 513
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Result:Ljava/lang/String;

    .line 514
    aget-object v2, v1, v7

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_X:Ljava/lang/String;

    .line 515
    aget-object v2, v1, v8

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Y:Ljava/lang/String;

    .line 516
    aget-object v2, v1, v9

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Z:Ljava/lang/String;

    .line 517
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mSelf_Result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mSelf_X : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_X:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mSelf_Y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mSelf_Z : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mSelf_Z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .end local v1           #temp:[Ljava/lang/String;
    :cond_121
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_DAC:I

    if-ge v2, v3, :cond_1b1

    .line 525
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_DAC:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 526
    .restart local v1       #temp:[Ljava/lang/String;
    iput-boolean v6, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mIsDisplay_DAC:Z

    .line 527
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Result:Ljava/lang/String;

    .line 528
    aget-object v2, v1, v7

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_X:Ljava/lang/String;

    .line 529
    aget-object v2, v1, v8

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Y:Ljava/lang/String;

    .line 530
    aget-object v2, v1, v9

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Z:Ljava/lang/String;

    .line 531
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mDAC_Result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mDAC_X : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_X:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mDAC_Y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mDAC_Z : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mDAC_Z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .end local v1           #temp:[Ljava/lang/String;
    :cond_1b1
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC:I

    if-ge v2, v3, :cond_241

    .line 539
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 540
    .restart local v1       #temp:[Ljava/lang/String;
    iput-boolean v6, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mIsDisplay_ADC:Z

    .line 541
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Result:Ljava/lang/String;

    .line 542
    aget-object v2, v1, v7

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_X:Ljava/lang/String;

    .line 543
    aget-object v2, v1, v8

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Y:Ljava/lang/String;

    .line 544
    aget-object v2, v1, v9

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Z:Ljava/lang/String;

    .line 546
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mADC_Result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Result:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mADC_X : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_X:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mADC_Y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Y:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticAsahi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data.mADC_Z : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;->mADC_Z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .end local v1           #temp:[Ljava/lang/String;
    :cond_241
    return-object v0
.end method

.method private getDataGeomagneticYamaha()Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;
    .registers 10

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 557
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGeomagneticYamaha"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    new-instance v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;

    invoke-direct {v0}, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;-><init>()V

    .line 560
    .local v0, data:Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Initialized:I

    if-ge v2, v3, :cond_25

    .line 561
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Initialized:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, temp:[Ljava/lang/String;
    iput-boolean v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mIsDisplay_Initialized:Z

    .line 563
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mInitialized:Ljava/lang/String;

    .line 566
    .end local v1           #temp:[Ljava/lang/String;
    :cond_25
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Status:I

    if-ge v2, v3, :cond_3b

    .line 567
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Status:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 568
    .restart local v1       #temp:[Ljava/lang/String;
    aget-object v2, v1, v5

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mStatus_Result:Ljava/lang/String;

    .line 569
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mStatus:Ljava/lang/String;

    .line 572
    .end local v1           #temp:[Ljava/lang/String;
    :cond_3b
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_DAC:I

    if-ge v2, v3, :cond_5b

    .line 573
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_DAC:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 574
    .restart local v1       #temp:[Ljava/lang/String;
    iput-boolean v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mIsDisplay_DAC:Z

    .line 575
    aget-object v2, v1, v5

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_Result:Ljava/lang/String;

    .line 576
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_X:Ljava/lang/String;

    .line 577
    aget-object v2, v1, v7

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_Y:Ljava/lang/String;

    .line 578
    aget-object v2, v1, v8

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mDAC_Z:Ljava/lang/String;

    .line 581
    .end local v1           #temp:[Ljava/lang/String;
    :cond_5b
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC:I

    if-ge v2, v3, :cond_7b

    .line 582
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 583
    .restart local v1       #temp:[Ljava/lang/String;
    iput-boolean v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mIsDisplay_ADC:Z

    .line 584
    aget-object v2, v1, v5

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_Result:Ljava/lang/String;

    .line 585
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_X:Ljava/lang/String;

    .line 586
    aget-object v2, v1, v7

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_Y:Ljava/lang/String;

    .line 587
    aget-object v2, v1, v8

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mADC_Z:Ljava/lang/String;

    .line 590
    .end local v1           #temp:[Ljava/lang/String;
    :cond_7b
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Self:I

    if-ge v2, v3, :cond_97

    .line 591
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Self:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 592
    .restart local v1       #temp:[Ljava/lang/String;
    iput-boolean v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mIsDisplay_Self:Z

    .line 593
    aget-object v2, v1, v5

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mSelf_Result:Ljava/lang/String;

    .line 594
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mSelf_X:Ljava/lang/String;

    .line 595
    aget-object v2, v1, v7

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mSelf_Y:Ljava/lang/String;

    .line 598
    .end local v1           #temp:[Ljava/lang/String;
    :cond_97
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC2:I

    if-ge v2, v3, :cond_b7

    .line 599
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC2:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 600
    .restart local v1       #temp:[Ljava/lang/String;
    iput-boolean v5, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mIsDisplay_OffsetH:Z

    .line 601
    aget-object v2, v1, v5

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_Result:Ljava/lang/String;

    .line 602
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_X:Ljava/lang/String;

    .line 603
    aget-object v2, v1, v7

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_Y:Ljava/lang/String;

    .line 604
    aget-object v2, v1, v8

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mOffsetH_Z:Ljava/lang/String;

    .line 607
    .end local v1           #temp:[Ljava/lang/String;
    :cond_b7
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Released:I

    if-ge v2, v3, :cond_c9

    .line 608
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Released:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 609
    .restart local v1       #temp:[Ljava/lang/String;
    aget-object v2, v1, v6

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;->mPowerOff_Result:Ljava/lang/String;

    .line 612
    .end local v1           #temp:[Ljava/lang/String;
    :cond_c9
    return-object v0
.end method

.method private getDataGyroInvensense()Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 446
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getDataGyroInvensense"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;

    invoke-direct {v0}, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;-><init>()V

    .line 449
    .local v0, data:Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v3, "INVENSENSE_MPU6050"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v3, "INVENSENSE_MPU6051"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 451
    :cond_22
    const-string v2, "1"

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mInitialized:Ljava/lang/String;

    .line 454
    :cond_26
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Gyrocope_Temperature:I

    if-ge v2, v3, :cond_38

    .line 455
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Gyrocope_Temperature:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, temp:[Ljava/lang/String;
    aget-object v2, v1, v5

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mTemperature:Ljava/lang/String;

    .line 459
    .end local v1           #temp:[Ljava/lang/String;
    :cond_38
    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_None:I

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Gyrocope_Self:I

    if-ge v2, v3, :cond_68

    .line 460
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Gyrocope_Self:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v1

    .line 461
    .restart local v1       #temp:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Result:Ljava/lang/String;

    .line 462
    aget-object v2, v1, v5

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_X:Ljava/lang/String;

    .line 463
    const/4 v2, 0x3

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Y:Ljava/lang/String;

    .line 464
    const/4 v2, 0x4

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mBias_Z:Ljava/lang/String;

    .line 465
    const/4 v2, 0x5

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_X:Ljava/lang/String;

    .line 466
    const/4 v2, 0x6

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_Y:Ljava/lang/String;

    .line 467
    const/4 v2, 0x7

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;->mRMS_Z:Ljava/lang/String;

    .line 470
    .end local v1           #temp:[Ljava/lang/String;
    :cond_68
    return-object v0
.end method

.method private getDataGyroSTMicroSmartphone()Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$DataGyroSTMicroSmartphone;
    .registers 5

    .prologue
    .line 474
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getDataGyroSTMicroSmartphone"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$DataGyroSTMicroSmartphone;

    invoke-direct {v0}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$DataGyroSTMicroSmartphone;-><init>()V

    .line 477
    .local v0, data:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$DataGyroSTMicroSmartphone;
    return-object v0
.end method

.method private getDataGyroSTMicroTablet()Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$DataGyroSTMicroTablet;
    .registers 5

    .prologue
    .line 481
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getDataGyroSTMicroTablet"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$DataGyroSTMicroTablet;

    invoke-direct {v0}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$DataGyroSTMicroTablet;-><init>()V

    .line 483
    .local v0, data:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$DataGyroSTMicroTablet;
    return-object v0
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 313
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "init"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TEST_ID:I

    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getChildItems(I)[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mList_TestItem:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    .line 315
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "init"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TestItemCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mList_TestItem:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->isTest(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 319
    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mLinear_Top:Landroid/widget/LinearLayout;

    .line 320
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mLinear_Top:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    :cond_46
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->isTest(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 325
    const v0, 0x7f09008f

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mLinear_Bottom:Landroid/widget/LinearLayout;

    .line 326
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mLinear_Bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    :cond_5e
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mList_TestItem:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_72

    .line 330
    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mView_Separator:Landroid/view/View;

    .line 331
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mView_Separator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_72
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mList_TestItem:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->setCountNVWrite(I)V

    .line 335
    return-void
.end method

.method private setFragment()V
    .registers 8

    .prologue
    const v6, 0x7f09008f

    const v5, 0x7f09008d

    .line 183
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 184
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 187
    .local v1, fragmentTransaction:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_37

    .line 188
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    const-string v3, "INVENSENSE"

    if-ne v2, v3, :cond_64

    .line 189
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "setFragment"

    const-string v4, "TESTINFO_IC_INVENSENSE"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v2, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;

    invoke-direct {v2}, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;-><init>()V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_gyroscope_invensense:Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;

    .line 191
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_gyroscope_invensense:Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;

    invoke-virtual {v1, v5, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 206
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_60

    .line 207
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    const-string v3, "ASAHI"

    if-ne v2, v3, :cond_a8

    .line 208
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "setFragment"

    const-string v4, "TESTINFO_IC_ASAHI"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v2, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;

    invoke-direct {v2}, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;-><init>()V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_geomagnetic_asahi:Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;

    .line 210
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_geomagnetic_asahi:Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;

    invoke-virtual {v1, v6, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 222
    :cond_60
    :goto_60
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 223
    return-void

    .line 192
    :cond_64
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    const-string v3, "STMICRO_SMARTPHONE"

    if-ne v2, v3, :cond_86

    .line 193
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "setFragment"

    const-string v4, "TESTINFO_IC_STMICRO_SMARTPHONE"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v2, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;

    invoke-direct {v2}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;-><init>()V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_gyroscope_stmicro_smartphone:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;

    .line 195
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_gyroscope_stmicro_smartphone:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;

    invoke-virtual {v1, v5, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_37

    .line 197
    :cond_86
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    const-string v3, "STMICRO_TABLET"

    if-ne v2, v3, :cond_37

    .line 198
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "setFragment"

    const-string v4, "TESTINFO_IC_STMICRO_TABLET"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v2, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;

    invoke-direct {v2}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;-><init>()V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_gyroscope_stmicro_tablet:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;

    .line 200
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_gyroscope_stmicro_tablet:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;

    invoke-virtual {v1, v5, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_37

    .line 211
    :cond_a8
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    const-string v3, "YAMAHA"

    if-ne v2, v3, :cond_ca

    .line 212
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "setFragment"

    const-string v4, "TESTINFO_IC_YAMAHA"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v2, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;

    invoke-direct {v2}, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;-><init>()V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_geomagnetic_yamaha:Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;

    .line 214
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_geomagnetic_yamaha:Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;

    invoke-virtual {v1, v6, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_60

    .line 215
    :cond_ca
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    const-string v3, "ALPS"

    if-ne v2, v3, :cond_60

    .line 216
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "setFragment"

    const-string v4, "TESTINFO_IC_ALPS"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v2, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;

    invoke-direct {v2}, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;-><init>()V

    iput-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_geomagnetic_alps:Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;

    .line 218
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_geomagnetic_alps:Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;

    invoke-virtual {v1, v6, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_60
.end method

.method private setSensorID()V
    .registers 5

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setSensorID"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3f

    .line 230
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v1, "INVENSENSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v1, "INVENSENSE_MPU6050"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v1, "INVENSENSE_MPU6051"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 233
    :cond_2e
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setSensorID"

    const-string v2, "INVENSENSE or INVENSENSE_MPU6050 or INVENSENSE_MPU6051"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____GYRO_TEMPERATURE:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Gyrocope_Temperature:I

    .line 236
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_SELF:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Gyrocope_Self:I

    .line 243
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_74

    .line 245
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "AK8963"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "AK8963C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 247
    :cond_5b
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setSensorID"

    const-string v2, "AK8963 or AK8963C"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_STATUS:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Initialized:I

    .line 249
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_DAC:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_DAC:I

    .line 250
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC:I

    .line 251
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_SELF:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Self:I

    .line 292
    :cond_74
    :goto_74
    const/16 v0, 0xb

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Gyrocope_Power:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Gyrocope_Temperature:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Gyrocope_Self:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Initialized:I

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Status:I

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Temperature:I

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_DAC:I

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC:I

    aput v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC2:I

    aput v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Self:I

    aput v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Released:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSenserID:[I

    .line 308
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleSensor;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleSensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    .line 309
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSenserID:[I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mHandler:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([ILandroid/os/Handler;I)V

    .line 310
    return-void

    .line 237
    :cond_c5
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v1, "STMICRO_SMARTPHONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 238
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v1, "STMICRO_TABLET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto/16 :goto_3f

    .line 252
    :cond_db
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "AK8975"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "AK8963C_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 254
    :cond_ef
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setSensorID"

    const-string v2, "AK8975 or AK8963C_MANAGER"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_ON:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Initialized:I

    .line 256
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_DAC:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_DAC:I

    .line 257
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_ADC:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC:I

    .line 258
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_SELF:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Self:I

    goto/16 :goto_74

    .line 259
    :cond_10a
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "AK8973"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 260
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setSensorID"

    const-string v2, "AK8973"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_74

    .line 269
    :cond_11f
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "YAS530C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_133

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "YAS532"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 271
    :cond_133
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setSensorID"

    const-string v2, "YAS530C or YAS532"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_ON:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Initialized:I

    .line 273
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_STATUS:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Status:I

    .line 274
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_DAC:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_DAC:I

    .line 275
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_ADC:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC:I

    .line 276
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_SELF:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Self:I

    .line 277
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_OFFSETH:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC2:I

    .line 278
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_OFF:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Released:I

    goto/16 :goto_74

    .line 282
    :cond_15a
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "HSCDTD004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_178

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "HSCDTD004A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_178

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "HSCDTD006A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 285
    :cond_178
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setSensorID"

    const-string v2, "HSCDTD004 or HSCDTD004A or HSCDTD006A"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_MAGNETIC_POWER_ON:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Initialized:I

    .line 287
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_STATUS:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_Status:I

    .line 288
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____MAGNETIC_ADC:I

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mSensorID_Geomagnetic_ADC:I

    goto/16 :goto_74
.end method

.method private setTestInfo()V
    .registers 8

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x14

    const/4 v4, 0x0

    .line 141
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTestInfo"

    invoke-static {v0, v1, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GYRO:I

    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Gyroscope:Ljava/lang/String;

    .line 144
    sget v0, Lcom/sec/factory/modules/SensorDeviceInfo;->TYPE_GEOMAGNETIC:I

    sget v1, Lcom/sec/factory/modules/SensorDeviceInfo;->TARGET_XML:I

    invoke-static {v0, v1}, Lcom/sec/factory/modules/SensorDeviceInfo;->getSensorName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTestInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFeature_Gyroscope : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Gyroscope:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTestInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFeature_Geomagnetic : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {v6}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->isTest(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 151
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    new-instance v2, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    invoke-direct {v2, p0, v4}, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;-><init>(Lcom/sec/factory/app/ui/UIGeomagneticGyro;Lcom/sec/factory/app/ui/UIGeomagneticGyro$1;)V

    aput-object v2, v0, v1

    .line 152
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v0, v0, v1

    iput v6, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mID:I

    .line 153
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v1, "INVENSENSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 154
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTestInfo"

    const-string v2, "TESTINFO_IC_INVENSENSE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v0, v0, v1

    const-string v1, "INVENSENSE"

    iput-object v1, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    .line 166
    :cond_8e
    :goto_8e
    invoke-static {v5}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->isTest(I)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 167
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    new-instance v2, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    invoke-direct {v2, p0, v4}, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;-><init>(Lcom/sec/factory/app/ui/UIGeomagneticGyro;Lcom/sec/factory/app/ui/UIGeomagneticGyro$1;)V

    aput-object v2, v0, v1

    .line 168
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v0, v0, v1

    iput v5, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mID:I

    .line 169
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "AK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 170
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTestInfo"

    const-string v2, "TESTINFO_IC_ASAHI"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v0, v0, v1

    const-string v1, "ASAHI"

    iput-object v1, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    .line 180
    :cond_c4
    :goto_c4
    return-void

    .line 156
    :cond_c5
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v1, "STMICRO_SMARTPHONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 157
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTestInfo"

    const-string v2, "TESTINFO_IC_STMICRO_SMARTPHONE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v0, v0, v1

    const-string v1, "STMICRO_SMARTPHONE"

    iput-object v1, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    goto :goto_8e

    .line 159
    :cond_e3
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Gyroscope:Ljava/lang/String;

    const-string v1, "STMICRO_TABLET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 160
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTestInfo"

    const-string v2, "TESTINFO_IC_STMICRO_TABLET"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v0, v0, v1

    const-string v1, "STMICRO_TABLET"

    iput-object v1, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    goto :goto_8e

    .line 172
    :cond_101
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "YAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 173
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTestInfo"

    const-string v2, "TESTINFO_IC_YAMAHA"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v0, v0, v1

    const-string v1, "YAMAHA"

    iput-object v1, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    goto :goto_c4

    .line 175
    :cond_11f
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFeature_Geomagnetic:Ljava/lang/String;

    const-string v1, "HSCDTD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 176
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setTestInfo"

    const-string v2, "TESTINFO_IC_ALPS"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v0, v0, v1

    const-string v1, "ALPS"

    iput-object v1, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    goto :goto_c4
.end method

.method private update()V
    .registers 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "update"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_27

    .line 344
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    const-string v1, "INVENSENSE"

    if-ne v0, v1, :cond_47

    .line 345
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_gyroscope_invensense:Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;

    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->getDataGyroInvensense()Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;->update(Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;Landroid/os/Handler;)V

    .line 354
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_46

    .line 355
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    const-string v1, "ASAHI"

    if-ne v0, v1, :cond_77

    .line 356
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_geomagnetic_asahi:Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;

    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->getDataGeomagneticAsahi()Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi;->update(Lcom/sec/factory/app/ui/FragmentGeomagneticAsahi$DataGeomagneticAsahi;Landroid/os/Handler;)V

    .line 363
    :cond_46
    :goto_46
    return-void

    .line 346
    :cond_47
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    const-string v1, "STMICRO_SMARTPHONE"

    if-ne v0, v1, :cond_5f

    .line 347
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_gyroscope_stmicro_smartphone:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;

    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->getDataGyroSTMicroSmartphone()Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$DataGyroSTMicroSmartphone;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->update(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$DataGyroSTMicroSmartphone;Landroid/os/Handler;)V

    goto :goto_27

    .line 348
    :cond_5f
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GYROSCOPE:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    const-string v1, "STMICRO_TABLET"

    if-ne v0, v1, :cond_27

    .line 349
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_gyroscope_stmicro_tablet:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;

    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->getDataGyroSTMicroTablet()Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$DataGyroSTMicroTablet;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->update(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$DataGyroSTMicroTablet;Landroid/os/Handler;)V

    goto :goto_27

    .line 357
    :cond_77
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    const-string v1, "YAMAHA"

    if-ne v0, v1, :cond_8f

    .line 358
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_geomagnetic_yamaha:Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;

    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->getDataGeomagneticYamaha()Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha;->update(Lcom/sec/factory/app/ui/FragmentGeomagneticYamaha$DataGeomagneticYamaha;Landroid/os/Handler;)V

    goto :goto_46

    .line 359
    :cond_8f
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mTestInfoArray:[Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;

    iget v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->TESTINFO_ARRAY_INDEX_GEOMAGNETIC:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    const-string v1, "ALPS"

    if-ne v0, v1, :cond_46

    .line 360
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mFragment_geomagnetic_alps:Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;

    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->getDataGeomagneticAlps()Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;->update(Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;Landroid/os/Handler;)V

    goto :goto_46
.end method

.method private writeNV(IZ)V
    .registers 6
    .parameter "id"
    .parameter "isPass"

    .prologue
    .line 416
    const/4 v0, 0x1

    if-ne p2, v0, :cond_13

    .line 417
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "writeNV"

    const-string v2, "PASS"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    int-to-byte v0, p1

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->setTestResult(BB)V

    .line 423
    :goto_12
    return-void

    .line 420
    :cond_13
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "writeNV"

    const-string v2, "FAIL"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->setContentView(I)V

    .line 119
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->setTestInfo()V

    .line 120
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->setFragment()V

    .line 121
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->setSensorID()V

    .line 122
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->init()V

    .line 123
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 127
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 128
    return-void
.end method
