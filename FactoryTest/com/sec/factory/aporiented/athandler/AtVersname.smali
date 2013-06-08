.class public Lcom/sec/factory/aporiented/athandler/AtVersname;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtVersname.java"


# instance fields
.field private final NEW_DM_DATA_LEN:I

.field private device:Ljava/lang/String;

.field private isCPName_IMC:Z

.field private isMSM8260A:Z

.field private isMSM8960:Z

.field private isNon_LiveDemo:Z

.field private isPegaPrime:Z

.field private isPegasus:Z

.field private isPegasusPrime:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 17
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->NEW_DM_DATA_LEN:I

    .line 19
    const-string v0, "MSM8960"

    const-string v2, "CHIPSET_NAME"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isMSM8960:Z

    .line 20
    const-string v0, "MSM8260A"

    const-string v2, "CHIPSET_NAME"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isMSM8260A:Z

    .line 21
    const-string v0, "PegasusPrime"

    const-string v2, "CHIPSET_NAME"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isPegasusPrime:Z

    .line 22
    const-string v0, "PegaPrime"

    const-string v2, "CHIPSET_NAME"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isPegaPrime:Z

    .line 23
    const-string v0, "Pegasus"

    const-string v2, "CHIPSET_NAME"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isPegasus:Z

    .line 25
    const-string v0, "IMC"

    const-string v2, "CHIPSET_NAME_CP"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isCPName_IMC:Z

    .line 26
    const-string v0, "false"

    const-string v2, "LIVE_DEMO_MODEL"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isNon_LiveDemo:Z

    .line 30
    const-string v0, "ro.product.device"

    const-string v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->device:Ljava/lang/String;

    .line 35
    const-string v0, "VERSNAME"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CMD_NAME:Ljava/lang/String;

    .line 36
    const-string v0, "AtVersname"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->NUM_ARGS:I

    .line 39
    new-instance v7, Ljava/io/File;

    const-string v0, "EFS_HW_PATH"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v7, mFactoryMode:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 41
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v2, "MODEL_HARDWARE_REVISION"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/factory/modules/ModuleCommon;->setHWVer(Ljava/lang/String;)Z

    .line 43
    const-string v0, "EFS_HW_PATH"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v6}, Lcom/sec/factory/support/Support$Kernel;->setPermission(Ljava/lang/String;ZZZZZZ)Z

    .line 45
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "AtVersname"

    const-string v2, "EFS_HW_PATH is created..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_ba
    return-void

    .line 47
    :cond_bb
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "AtVersname"

    const-string v2, "EFS_HW_PATHis already existed..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba
.end method

.method private startCameraforFwRead()Lcom/sec/android/app/camerafirmware/CameraDeviceController;
    .registers 2

    .prologue
    .line 74
    new-instance v0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    invoke-direct {v0}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;-><init>()V

    .line 75
    .local v0, mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;
    invoke-virtual {v0}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->openCamera()Z

    .line 77
    return-object v0
.end method

.method private stopCameraforFwRead(Lcom/sec/android/app/camerafirmware/CameraDeviceController;)V
    .registers 2
    .parameter "mCameraDevice"

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->releaseCamera()V

    .line 83
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 44
    .parameter "argu"

    .prologue
    .line 88
    monitor-enter p0

    const/16 v26, 0x0

    .line 90
    .local v26, resData:Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->NUM_ARGS:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_18

    .line 91
    const-string v38, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_b8e

    .line 595
    :goto_16
    monitor-exit p0

    return-object v38

    .line 94
    :cond_18
    const/16 v38, 0x3

    :try_start_1a
    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "1"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "1"

    aput-object v40, v38, v39

    const/16 v39, 0x2

    const-string v40, "0"

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_bc

    .line 95
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->getHWVer()Ljava/lang/String;

    move-result-object v25

    .line 96
    .local v25, res:Ljava/lang/String;
    if-eqz v25, :cond_4c

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v38

    if-nez v38, :cond_ad

    .line 97
    :cond_4c
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v39, "MODEL_HARDWARE_REVISION"

    invoke-static/range {v39 .. v39}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/sec/factory/modules/ModuleCommon;->setHWVer(Ljava/lang/String;)Z

    .line 99
    const/16 v38, 0x0

    aget-object v38, p1, v38

    sget-object v39, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v39 .. v39}, Lcom/sec/factory/modules/ModuleCommon;->getHWVer()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 104
    :goto_6b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isMSM8960:Z

    move/from16 v38, v0

    if-nez v38, :cond_a1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isMSM8260A:Z

    move/from16 v38, v0

    if-nez v38, :cond_a1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isPegasus:Z

    move/from16 v38, v0

    if-nez v38, :cond_a1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isPegasusPrime:Z

    move/from16 v38, v0

    if-nez v38, :cond_a1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isPegaPrime:Z

    move/from16 v38, v0

    if-nez v38, :cond_a1

    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v38

    if-eqz v38, :cond_100

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isCPName_IMC:Z

    move/from16 v38, v0

    if-eqz v38, :cond_100

    :cond_a1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isNon_LiveDemo:Z

    move/from16 v38, v0

    if-eqz v38, :cond_100

    .line 106
    const/16 v38, 0x0

    goto/16 :goto_16

    .line 101
    :cond_ad
    const/16 v38, 0x0

    aget-object v38, p1, v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto :goto_6b

    .line 109
    .end local v25           #res:Ljava/lang/String;
    :cond_bc
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "1"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "2"

    aput-object v40, v38, v39

    const/16 v39, 0x2

    const-string v40, "0"

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_138

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->device:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "d2dcm"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_104

    .line 111
    const/16 v38, 0x0

    aget-object v38, p1, v38

    const-string v39, "SGH-N064"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :cond_100
    :goto_100
    move-object/from16 v38, v26

    .line 595
    goto/16 :goto_16

    .line 113
    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->device:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "t0ltedcm"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_123

    .line 114
    const/16 v38, 0x0

    aget-object v38, p1, v38

    const-string v39, "SGH-N025"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto :goto_100

    .line 117
    :cond_123
    const/16 v38, 0x0

    aget-object v38, p1, v38

    sget-object v39, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v39 .. v39}, Lcom/sec/factory/modules/ModuleCommon;->getModelName()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto :goto_100

    .line 124
    :cond_138
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "1"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "3"

    aput-object v40, v38, v39

    const/16 v39, 0x2

    const-string v40, "0"

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_173

    .line 125
    const/16 v38, 0x0

    aget-object v38, p1, v38

    sget-object v39, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v39 .. v39}, Lcom/sec/factory/modules/ModuleCommon;->getMainChipName()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto :goto_100

    .line 126
    :cond_173
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "1"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "6"

    aput-object v40, v38, v39

    const/16 v39, 0x2

    const-string v40, "0"

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1d9

    .line 127
    const/16 v38, 0x0

    aget-object v38, p1, v38

    sget-object v39, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v39 .. v39}, Lcom/sec/factory/modules/ModuleCommon;->getContentsVer()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 131
    const-string v38, "NEW_DM"

    const-string v39, "FACTORY_TEST_PROTOCOL"

    invoke-static/range {v39 .. v39}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_1c9

    const-string v38, "NEW_ETS"

    const-string v39, "FACTORY_TEST_PROTOCOL"

    invoke-static/range {v39 .. v39}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_100

    .line 135
    :cond_1c9
    const/16 v38, 0x14

    const/16 v39, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_100

    .line 144
    :cond_1d9
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "1"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "7"

    aput-object v40, v38, v39

    const/16 v39, 0x2

    const-string v40, "0"

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_23f

    .line 145
    const/16 v38, 0x0

    aget-object v38, p1, v38

    sget-object v39, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v39 .. v39}, Lcom/sec/factory/modules/ModuleCommon;->getPDAVer()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 149
    const-string v38, "NEW_DM"

    const-string v39, "FACTORY_TEST_PROTOCOL"

    invoke-static/range {v39 .. v39}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_22f

    const-string v38, "NEW_ETS"

    const-string v39, "FACTORY_TEST_PROTOCOL"

    invoke-static/range {v39 .. v39}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_100

    .line 153
    :cond_22f
    const/16 v38, 0x14

    const/16 v39, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_100

    .line 162
    :cond_23f
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "1"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "8"

    aput-object v40, v38, v39

    const/16 v39, 0x2

    const-string v40, "0"

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2a5

    .line 163
    const/16 v38, 0x0

    aget-object v38, p1, v38

    sget-object v39, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v39 .. v39}, Lcom/sec/factory/modules/ModuleCommon;->getCSCVer()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 167
    const-string v38, "NEW_DM"

    const-string v39, "FACTORY_TEST_PROTOCOL"

    invoke-static/range {v39 .. v39}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_295

    const-string v38, "NEW_ETS"

    const-string v39, "FACTORY_TEST_PROTOCOL"

    invoke-static/range {v39 .. v39}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_100

    .line 171
    :cond_295
    const/16 v38, 0x14

    const/16 v39, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_100

    .line 180
    :cond_2a5
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "1"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "9"

    aput-object v40, v38, v39

    const/16 v39, 0x2

    const-string v40, "0"

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2e1

    .line 181
    const/16 v38, 0x0

    aget-object v38, p1, v38

    sget-object v39, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v39 .. v39}, Lcom/sec/factory/modules/ModuleCommon;->getMainSWVer()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_100

    .line 186
    :cond_2e1
    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "2"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "1"

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_368

    .line 188
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const/16 v39, 0x2

    aget-object v39, p1, v39

    invoke-virtual/range {v38 .. v39}, Lcom/sec/factory/modules/ModuleCommon;->setHWVer(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_35b

    .line 189
    const/16 v38, 0x0

    aget-object v38, p1, v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 194
    :goto_319
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isMSM8960:Z

    move/from16 v38, v0

    if-nez v38, :cond_34f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isMSM8260A:Z

    move/from16 v38, v0

    if-nez v38, :cond_34f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isPegasus:Z

    move/from16 v38, v0

    if-nez v38, :cond_34f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isPegasusPrime:Z

    move/from16 v38, v0

    if-nez v38, :cond_34f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isPegaPrime:Z

    move/from16 v38, v0

    if-nez v38, :cond_34f

    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v38

    if-eqz v38, :cond_100

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isCPName_IMC:Z

    move/from16 v38, v0

    if-eqz v38, :cond_100

    :cond_34f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->isNon_LiveDemo:Z

    move/from16 v38, v0

    if-eqz v38, :cond_100

    .line 196
    const/16 v38, 0x0

    goto/16 :goto_16

    .line 191
    :cond_35b
    const/16 v38, 0x0

    aget-object v38, p1, v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto :goto_319

    .line 199
    :cond_368
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "3"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "0"

    aput-object v40, v38, v39

    const/16 v39, 0x2

    const-string v40, "0"

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3a4

    .line 201
    const/16 v38, 0x0

    aget-object v38, p1, v38

    sget-object v39, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v39 .. v39}, Lcom/sec/factory/modules/ModuleCommon;->getStandardVer()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_100

    .line 206
    :cond_3a4
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "3"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "1"

    aput-object v40, v38, v39

    const/16 v39, 0x2

    const-string v40, "0"

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_40a

    .line 208
    const/16 v38, 0x0

    aget-object v38, p1, v38

    sget-object v39, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v39 .. v39}, Lcom/sec/factory/modules/ModuleCommon;->getBootloaderVer()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 212
    const-string v38, "NEW_DM"

    const-string v39, "FACTORY_TEST_PROTOCOL"

    invoke-static/range {v39 .. v39}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_3fa

    const-string v38, "NEW_ETS"

    const-string v39, "FACTORY_TEST_PROTOCOL"

    invoke-static/range {v39 .. v39}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_100

    .line 216
    :cond_3fa
    const/16 v38, 0x14

    const/16 v39, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_100

    .line 225
    :cond_40a
    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const-string v40, "3"

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-string v40, "2"

    aput-object v40, v38, v39

    const/16 v39, 0x2

    const-string v40, "0"

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_ce0

    .line 227
    const/16 v37, 0x0

    .line 229
    .local v37, ver:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuffer;

    const/16 v38, 0x1e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 230
    .local v29, tempResult:Ljava/lang/StringBuffer;
    const/16 v17, 0x4e

    .line 231
    .local v17, obsolete:C
    const/16 v28, 0x2c

    .line 232
    .local v28, separator:C
    const-string v30, "NONE"

    .line 233
    .local v30, terminator:Ljava/lang/String;
    const-string v36, "Unknown"

    .line 234
    .local v36, unknown:Ljava/lang/String;
    const-string v5, "Not Active"

    .line 237
    .local v5, Not_Active:Ljava/lang/String;
    const/16 v16, 0x0

    .line 239
    .local v16, model:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->device:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "dcm"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_b7d

    .line 240
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->getFactoryModelName()Ljava/lang/String;

    move-result-object v16

    .line 246
    :goto_45d
    const-string v38, "Unknown"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_475

    const-string v38, "Not Active"

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_b85

    .line 247
    :cond_475
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 251
    :goto_47e
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(Model version)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->getHWVer()Ljava/lang/String;

    move-result-object v15

    .line 256
    .local v15, hw_ver:Ljava/lang/String;
    const-string v38, "Unknown"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_4c3

    const-string v38, "Not Active"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_b91

    .line 257
    :cond_4c3
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    :goto_4cc
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(H/W version)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->getBootVer()Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, boot_ver:Ljava/lang/String;
    const-string v38, "Unknown"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_511

    const-string v38, "Not Active"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_b98

    .line 267
    :cond_511
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    :goto_51a
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(Boot version)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->getPDAVer()Ljava/lang/String;

    move-result-object v18

    .line 276
    .local v18, pda_ver:Ljava/lang/String;
    const-string v38, "Unknown"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_563

    const-string v38, "Not Active"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_b9f

    .line 277
    :cond_563
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 281
    :goto_56c
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(PDA version)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->getPhoneVer()Ljava/lang/String;

    move-result-object v20

    .line 286
    .local v20, phone_ver:Ljava/lang/String;
    const-string v38, "Unknown"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_5b5

    const-string v38, "Not Active"

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_ba8

    .line 287
    :cond_5b5
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 292
    :goto_5be
    const-string v38, "SUPPORT_DUAL_STANBY"

    invoke-static/range {v38 .. v38}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_618

    .line 294
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->getPhone2Ver()Ljava/lang/String;

    move-result-object v19

    .line 295
    .local v19, phone2_ver:Ljava/lang/String;
    const-string v38, "/"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    const-string v38, "Unknown"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_5ed

    const-string v38, "Not Active"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_bb1

    .line 297
    :cond_5ed
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 301
    :goto_5f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(PHONE2 version)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v19           #phone2_ver:Ljava/lang/String;
    :cond_618
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(PHONE version)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 309
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(Inand/Movinad version)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v4, "Unknown"

    .line 318
    .local v4, HiddenVersion:Ljava/lang/String;
    const-string v38, "Unknown"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_68d

    const-string v38, "Not Active"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_bba

    .line 319
    :cond_68d
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 323
    :goto_696
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(Hidden version)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->getCSCVer()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, CSCVersion:Ljava/lang/String;
    const-string v38, "Unknown"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_6db

    const-string v38, "Not Active"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_bc1

    .line 329
    :cond_6db
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 333
    :goto_6e4
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(CSC version)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v7, 0x0

    .line 339
    .local v7, camDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;
    const-string v38, "NEED_CAMDRIVER_OPEN"

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_717
    .catchall {:try_start_1a .. :try_end_717} :catchall_b8e

    move-result v38

    if-eqz v38, :cond_71e

    .line 341
    :try_start_71a
    invoke-direct/range {p0 .. p0}, Lcom/sec/factory/aporiented/athandler/AtVersname;->startCameraforFwRead()Lcom/sec/android/app/camerafirmware/CameraDeviceController;
    :try_end_71d
    .catchall {:try_start_71a .. :try_end_71d} :catchall_b8e
    .catch Ljava/lang/Exception; {:try_start_71a .. :try_end_71d} :catch_bc8

    move-result-object v7

    .line 348
    :cond_71e
    :goto_71e
    const/16 v23, 0x0

    .line 349
    .local v23, rear_cam_version:[Ljava/lang/String;
    const/16 v24, 0x0

    .line 350
    .local v24, rear_cam_version_:Ljava/lang/String;
    const/16 v22, 0x0

    .line 353
    .local v22, rear_cam_isp_version:Ljava/lang/String;
    :try_start_724
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->readCameraRearFWver()Ljava/lang/String;

    move-result-object v38

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_bd8

    .line 354
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->readCameraRearFWver()Ljava/lang/String;

    move-result-object v38

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 355
    const/16 v38, 0x0

    aget-object v22, v23, v38
    :try_end_742
    .catchall {:try_start_724 .. :try_end_742} :catchall_b8e
    .catch Ljava/lang/Exception; {:try_start_724 .. :try_end_742} :catch_be2

    .line 365
    :goto_742
    :try_start_742
    const-string v38, "NEED_CAMDRIVER_OPEN"

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_749
    .catchall {:try_start_742 .. :try_end_749} :catchall_b8e

    move-result v38

    if-eqz v38, :cond_751

    .line 367
    :try_start_74c
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/factory/aporiented/athandler/AtVersname;->stopCameraforFwRead(Lcom/sec/android/app/camerafirmware/CameraDeviceController;)V
    :try_end_751
    .catchall {:try_start_74c .. :try_end_751} :catchall_b8e
    .catch Ljava/lang/Exception; {:try_start_74c .. :try_end_751} :catch_bf2

    .line 378
    :cond_751
    :goto_751
    if-eqz v22, :cond_75f

    :try_start_753
    const-string v38, "N"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_c0d

    .line 379
    :cond_75f
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->readCameraRearType()Ljava/lang/String;

    move-result-object v35

    .line 380
    .local v35, type:Ljava/lang/String;
    if-eqz v35, :cond_c02

    .line 381
    const-string v38, "_"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 382
    .local v9, cameraType_rear:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "rearCamType : "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x1

    aget-object v41, v9, v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/16 v38, 0x1

    aget-object v38, v9, v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    .end local v9           #cameraType_rear:[Ljava/lang/String;
    .end local v35           #type:Ljava/lang/String;
    :goto_79e
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(SUB CAM 1-1)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v38, "SUPPORT_CAM_ISP"

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    if-eqz v38, :cond_c23

    .line 399
    if-eqz v23, :cond_c16

    .line 400
    const/16 v38, 0x1

    aget-object v21, v23, v38

    .line 406
    .local v21, rear_cam_fw_phone_version:Ljava/lang/String;
    :goto_7d9
    if-nez v21, :cond_c1a

    .line 407
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    :goto_7e4
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 416
    .end local v21           #rear_cam_fw_phone_version:Ljava/lang/String;
    :goto_7ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(CAM1-1)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80f
    .catchall {:try_start_753 .. :try_end_80f} :catchall_b8e

    .line 418
    const/4 v13, 0x0

    .line 419
    .local v13, front_cam_version:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 420
    .local v14, front_cam_version_:Ljava/lang/String;
    const/4 v12, 0x0

    .line 423
    .local v12, front_cam_isp_version:Ljava/lang/String;
    :try_start_812
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->readCameraFrontFWver()Ljava/lang/String;

    move-result-object v38

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_c37

    .line 424
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->readCameraFrontFWver()Ljava/lang/String;

    move-result-object v38

    const-string v39, " "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 425
    const/16 v38, 0x0

    aget-object v12, v13, v38
    :try_end_830
    .catchall {:try_start_812 .. :try_end_830} :catchall_b8e
    .catch Ljava/lang/Exception; {:try_start_812 .. :try_end_830} :catch_c40

    .line 439
    :goto_830
    if-eqz v12, :cond_83c

    :try_start_832
    const-string v38, "N"

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_c5b

    .line 440
    :cond_83c
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->readCameraFrontType()Ljava/lang/String;

    move-result-object v35

    .line 441
    .restart local v35       #type:Ljava/lang/String;
    if-eqz v35, :cond_c50

    .line 442
    const-string v38, "_"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 443
    .local v8, cameraType_front:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "frontCamType : "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x1

    aget-object v41, v8, v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/16 v38, 0x1

    aget-object v38, v8, v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    .end local v8           #cameraType_front:[Ljava/lang/String;
    .end local v35           #type:Ljava/lang/String;
    :goto_87b
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(SUB CAM 1)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v38, "SUPPORT_CAM_ISP"

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    if-eqz v38, :cond_c6c

    .line 461
    if-eqz v13, :cond_c62

    .line 462
    const/16 v38, 0x1

    aget-object v11, v13, v38

    .line 467
    .local v11, front_cam_fw_phone_version:Ljava/lang/String;
    :goto_8b6
    if-nez v11, :cond_c65

    .line 468
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 472
    :goto_8c1
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 477
    .end local v11           #front_cam_fw_phone_version:Ljava/lang/String;
    :goto_8ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(SUB CAM 1-1)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/16 v39, 0x2

    invoke-virtual/range {v38 .. v39}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v32

    .line 482
    .local v32, touchkey_fw_version:Ljava/lang/String;
    if-nez v32, :cond_c80

    .line 483
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 487
    :goto_8ff
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(TOUCH 1)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/16 v39, 0x2

    invoke-virtual/range {v38 .. v39}, Lcom/sec/factory/modules/ModuleDevice;->readModuleBinVersion(I)Ljava/lang/String;

    move-result-object v31

    .line 493
    .local v31, touchkey_fw_phone_version:Ljava/lang/String;
    if-nez v31, :cond_c89

    .line 494
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 498
    :goto_93d
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(TOUCH 1-1)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v38, "SUPPORT_EPEN"

    invoke-static/range {v38 .. v38}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_c92

    .line 505
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/16 v39, 0x3

    invoke-virtual/range {v38 .. v39}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 509
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/16 v39, 0x3

    invoke-virtual/range {v38 .. v39}, Lcom/sec/factory/modules/ModuleDevice;->readModuleBinVersion(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 520
    :goto_9a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(E-Write)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v34

    .line 525
    .local v34, tsp_fw_version:Ljava/lang/String;
    if-nez v34, :cond_cb8

    .line 526
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 530
    :goto_9d5
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(TSP 1)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/sec/factory/modules/ModuleDevice;->readModuleBinVersion(I)Ljava/lang/String;

    move-result-object v33

    .line 536
    .local v33, tsp_fw_phone_version:Ljava/lang/String;
    if-nez v33, :cond_cc1

    .line 537
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 541
    :goto_a13
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(TSP 1-1)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 547
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(TSP 2)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 552
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "(TSP 2-1)"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v38, "SUPPORT_SENSORHUB"

    invoke-static/range {v38 .. v38}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_cca

    .line 559
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/16 v39, 0x4

    invoke-virtual/range {v38 .. v39}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v38

    const-string v39, ","

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 560
    .local v27, sensorHubFirm:[Ljava/lang/String;
    const/16 v38, 0x0

    aget-object v38, v27, v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    .end local v27           #sensorHubFirm:[Ljava/lang/String;
    :goto_ac7
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "SensorHub MCU"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v38, "SUPPORT_SENSORHUB"

    invoke-static/range {v38 .. v38}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_cd5

    .line 571
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/16 v39, 0x4

    invoke-virtual/range {v38 .. v39}, Lcom/sec/factory/modules/ModuleDevice;->readModuleFirmwareVersion(I)Ljava/lang/String;

    move-result-object v38

    const-string v39, ","

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 572
    .restart local v27       #sensorHubFirm:[Ljava/lang/String;
    const/16 v38, 0x1

    aget-object v38, v27, v38

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    .end local v27           #sensorHubFirm:[Ljava/lang/String;
    :goto_b13
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "SensorHub Bin"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v38, "NONE"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v37

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "result : "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/16 v38, 0x0

    aget-object v38, p1, v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtVersname;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 589
    goto/16 :goto_100

    .line 243
    .end local v3           #CSCVersion:Ljava/lang/String;
    .end local v4           #HiddenVersion:Ljava/lang/String;
    .end local v6           #boot_ver:Ljava/lang/String;
    .end local v7           #camDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;
    .end local v12           #front_cam_isp_version:Ljava/lang/String;
    .end local v13           #front_cam_version:[Ljava/lang/String;
    .end local v14           #front_cam_version_:Ljava/lang/String;
    .end local v15           #hw_ver:Ljava/lang/String;
    .end local v18           #pda_ver:Ljava/lang/String;
    .end local v20           #phone_ver:Ljava/lang/String;
    .end local v22           #rear_cam_isp_version:Ljava/lang/String;
    .end local v23           #rear_cam_version:[Ljava/lang/String;
    .end local v24           #rear_cam_version_:Ljava/lang/String;
    .end local v31           #touchkey_fw_phone_version:Ljava/lang/String;
    .end local v32           #touchkey_fw_version:Ljava/lang/String;
    .end local v33           #tsp_fw_phone_version:Ljava/lang/String;
    .end local v34           #tsp_fw_version:Ljava/lang/String;
    :cond_b7d
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->getModelName()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_45d

    .line 249
    :cond_b85
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_b8c
    .catchall {:try_start_832 .. :try_end_b8c} :catchall_b8e

    goto/16 :goto_47e

    .line 88
    .end local v5           #Not_Active:Ljava/lang/String;
    .end local v16           #model:Ljava/lang/String;
    .end local v17           #obsolete:C
    .end local v28           #separator:C
    .end local v29           #tempResult:Ljava/lang/StringBuffer;
    .end local v30           #terminator:Ljava/lang/String;
    .end local v36           #unknown:Ljava/lang/String;
    .end local v37           #ver:Ljava/lang/String;
    :catchall_b8e
    move-exception v38

    monitor-exit p0

    throw v38

    .line 259
    .restart local v5       #Not_Active:Ljava/lang/String;
    .restart local v15       #hw_ver:Ljava/lang/String;
    .restart local v16       #model:Ljava/lang/String;
    .restart local v17       #obsolete:C
    .restart local v28       #separator:C
    .restart local v29       #tempResult:Ljava/lang/StringBuffer;
    .restart local v30       #terminator:Ljava/lang/String;
    .restart local v36       #unknown:Ljava/lang/String;
    .restart local v37       #ver:Ljava/lang/String;
    :cond_b91
    :try_start_b91
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4cc

    .line 269
    .restart local v6       #boot_ver:Ljava/lang/String;
    :cond_b98
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_51a

    .line 279
    .restart local v18       #pda_ver:Ljava/lang/String;
    :cond_b9f
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_56c

    .line 289
    .restart local v20       #phone_ver:Ljava/lang/String;
    :cond_ba8
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5be

    .line 299
    .restart local v19       #phone2_ver:Ljava/lang/String;
    :cond_bb1
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5f6

    .line 321
    .end local v19           #phone2_ver:Ljava/lang/String;
    .restart local v4       #HiddenVersion:Ljava/lang/String;
    :cond_bba
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_696

    .line 331
    .restart local v3       #CSCVersion:Ljava/lang/String;
    :cond_bc1
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6e4

    .line 342
    .restart local v7       #camDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;
    :catch_bc8
    move-exception v10

    .line 343
    .local v10, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    const-string v40, "startCamera failed"

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd6
    .catchall {:try_start_b91 .. :try_end_bd6} :catchall_b8e

    goto/16 :goto_71e

    .line 357
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v22       #rear_cam_isp_version:Ljava/lang/String;
    .restart local v23       #rear_cam_version:[Ljava/lang/String;
    .restart local v24       #rear_cam_version_:Ljava/lang/String;
    :cond_bd8
    :try_start_bd8
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->readCameraRearFWver()Ljava/lang/String;
    :try_end_bdd
    .catchall {:try_start_bd8 .. :try_end_bdd} :catchall_b8e
    .catch Ljava/lang/Exception; {:try_start_bd8 .. :try_end_bdd} :catch_be2

    move-result-object v24

    .line 358
    move-object/from16 v22, v24

    goto/16 :goto_742

    .line 360
    :catch_be2
    move-exception v10

    .line 361
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_be3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    const-string v40, "Failed to read rearCamera\'s F/W"

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_742

    .line 368
    .end local v10           #e:Ljava/lang/Exception;
    :catch_bf2
    move-exception v10

    .line 369
    .restart local v10       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    const-string v40, "stopCamera failed"

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_751

    .line 385
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v35       #type:Ljava/lang/String;
    :cond_c02
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_79e

    .line 390
    .end local v35           #type:Ljava/lang/String;
    :cond_c0d
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_79e

    .line 402
    :cond_c16
    move-object/from16 v21, v24

    .restart local v21       #rear_cam_fw_phone_version:Ljava/lang/String;
    goto/16 :goto_7d9

    .line 409
    :cond_c1a
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7e4

    .line 413
    .end local v21           #rear_cam_fw_phone_version:Ljava/lang/String;
    :cond_c23
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 414
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_c35
    .catchall {:try_start_be3 .. :try_end_c35} :catchall_b8e

    goto/16 :goto_7ed

    .line 427
    .restart local v12       #front_cam_isp_version:Ljava/lang/String;
    .restart local v13       #front_cam_version:[Ljava/lang/String;
    .restart local v14       #front_cam_version_:Ljava/lang/String;
    :cond_c37
    :try_start_c37
    sget-object v38, Lcom/sec/factory/aporiented/athandler/AtVersname;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/factory/modules/ModuleCommon;->readCameraFrontFWver()Ljava/lang/String;
    :try_end_c3c
    .catchall {:try_start_c37 .. :try_end_c3c} :catchall_b8e
    .catch Ljava/lang/Exception; {:try_start_c37 .. :try_end_c3c} :catch_c40

    move-result-object v14

    .line 428
    move-object v12, v14

    goto/16 :goto_830

    .line 430
    :catch_c40
    move-exception v10

    .line 431
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_c41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtVersname;->CLASS_NAME:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "handleCommand"

    const-string v40, "Failed to read frontCamera\'s F/W"

    invoke-static/range {v38 .. v40}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_830

    .line 448
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v35       #type:Ljava/lang/String;
    :cond_c50
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_87b

    .line 453
    .end local v35           #type:Ljava/lang/String;
    :cond_c5b
    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_87b

    .line 465
    :cond_c62
    move-object v11, v14

    .restart local v11       #front_cam_fw_phone_version:Ljava/lang/String;
    goto/16 :goto_8b6

    .line 470
    :cond_c65
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_8c1

    .line 474
    .end local v11           #front_cam_fw_phone_version:Ljava/lang/String;
    :cond_c6c
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 475
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_8ca

    .line 485
    .restart local v32       #touchkey_fw_version:Ljava/lang/String;
    :cond_c80
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_8ff

    .line 496
    .restart local v31       #touchkey_fw_phone_version:Ljava/lang/String;
    :cond_c89
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_93d

    .line 513
    :cond_c92
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 514
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 517
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 518
    const/16 v38, 0x2c

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_9a0

    .line 528
    .restart local v34       #tsp_fw_version:Ljava/lang/String;
    :cond_cb8
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_9d5

    .line 539
    .restart local v33       #tsp_fw_phone_version:Ljava/lang/String;
    :cond_cc1
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a13

    .line 562
    :cond_cca
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_ac7

    .line 574
    :cond_cd5
    const/16 v38, 0x4e

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_b13

    .line 592
    .end local v3           #CSCVersion:Ljava/lang/String;
    .end local v4           #HiddenVersion:Ljava/lang/String;
    .end local v5           #Not_Active:Ljava/lang/String;
    .end local v6           #boot_ver:Ljava/lang/String;
    .end local v7           #camDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;
    .end local v12           #front_cam_isp_version:Ljava/lang/String;
    .end local v13           #front_cam_version:[Ljava/lang/String;
    .end local v14           #front_cam_version_:Ljava/lang/String;
    .end local v15           #hw_ver:Ljava/lang/String;
    .end local v16           #model:Ljava/lang/String;
    .end local v17           #obsolete:C
    .end local v18           #pda_ver:Ljava/lang/String;
    .end local v20           #phone_ver:Ljava/lang/String;
    .end local v22           #rear_cam_isp_version:Ljava/lang/String;
    .end local v23           #rear_cam_version:[Ljava/lang/String;
    .end local v24           #rear_cam_version_:Ljava/lang/String;
    .end local v28           #separator:C
    .end local v29           #tempResult:Ljava/lang/StringBuffer;
    .end local v30           #terminator:Ljava/lang/String;
    .end local v31           #touchkey_fw_phone_version:Ljava/lang/String;
    .end local v32           #touchkey_fw_version:Ljava/lang/String;
    .end local v33           #tsp_fw_phone_version:Ljava/lang/String;
    .end local v34           #tsp_fw_version:Ljava/lang/String;
    .end local v36           #unknown:Ljava/lang/String;
    .end local v37           #ver:Ljava/lang/String;
    :cond_ce0
    const-string v26, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_ce2
    .catchall {:try_start_c41 .. :try_end_ce2} :catchall_b8e

    goto/16 :goto_100
.end method
