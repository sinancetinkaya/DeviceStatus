.class public Lcom/sec/factory/aporiented/athandler/AtBaromete;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtBaromete.java"


# instance fields
.field private WHAT_GET_DATA:I

.field private WHAT_UPDATE:I

.field private final dummyData:C

.field public mCurrentIndex:I

.field mPressureValue:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 11
    .parameter "context"
    .parameter "writer"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 26
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 19
    iput v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_UPDATE:I

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_GET_DATA:I

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mPressureValue:[F

    .line 22
    iput v6, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mCurrentIndex:I

    .line 23
    const/16 v0, 0x20

    iput-char v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->dummyData:C

    .line 27
    const-string v0, "BAROMETE"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CMD_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "AtBaromete"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->NUM_ARGS:I

    .line 32
    new-instance v7, Ljava/io/File;

    const-string v0, "BAROMETE_DELTA"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v7, mBaroDelta:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_51

    .line 34
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/sec/factory/modules/ModuleCommon;->writemBaroDelta(Ljava/lang/String;)V

    .line 35
    const-string v0, "BAROMETE_DELTA"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v6}, Lcom/sec/factory/support/Support$Kernel;->setPermission(Ljava/lang/String;ZZZZZZ)Z

    .line 37
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "AtBaromete"

    const-string v2, "BAROMETE_DELTA is created..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_4e
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 44
    return-void

    .line 39
    :cond_51
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "AtBaromete"

    const-string v2, "BAROMETE_DELTAis already existed..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 11
    .parameter "context"
    .parameter "writer"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 47
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 19
    iput v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_UPDATE:I

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_GET_DATA:I

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mPressureValue:[F

    .line 22
    iput v6, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mCurrentIndex:I

    .line 23
    const/16 v0, 0x20

    iput-char v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->dummyData:C

    .line 48
    const-string v0, "BAROMETE"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CMD_NAME:Ljava/lang/String;

    .line 49
    const-string v0, "AtBaromete"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->NUM_ARGS:I

    .line 53
    new-instance v7, Ljava/io/File;

    const-string v0, "BAROMETE_DELTA"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v7, mBaroDelta:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_51

    .line 55
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/sec/factory/modules/ModuleCommon;->writemBaroDelta(Ljava/lang/String;)V

    .line 56
    const-string v0, "BAROMETE_DELTA"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v6}, Lcom/sec/factory/support/Support$Kernel;->setPermission(Ljava/lang/String;ZZZZZZ)Z

    .line 58
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "AtBaromete"

    const-string v2, "BAROMETE_DELTA is created..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_4e
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 65
    return-void

    .line 60
    :cond_51
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "AtBaromete"

    const-string v2, "BAROMETE_DELTAis already existed..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method static synthetic access$000(Lcom/sec/factory/aporiented/athandler/AtBaromete;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_GET_DATA:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/factory/aporiented/athandler/AtBaromete;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->getDataBaro()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/factory/aporiented/athandler/AtBaromete;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_UPDATE:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/factory/aporiented/athandler/AtBaromete;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->getPressureResultUpdate()V

    return-void
.end method

.method private getDataBaro()V
    .registers 7

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, mData:[Ljava/lang/String;
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v2, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    invoke-virtual {v1, v2}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_55

    .line 288
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mPressureValue:[F

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mCurrentIndex:I

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 289
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataBaro : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPressureValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mPressureValue:[F

    iget v5, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mCurrentIndex:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mCurrentIndex:I

    .line 293
    :cond_55
    return-void
.end method

.method private getDataBaroHandler()V
    .registers 5

    .prologue
    .line 264
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtBaromete$1;

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/factory/aporiented/athandler/AtBaromete$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtBaromete;Landroid/os/Looper;)V

    .line 276
    .local v0, mHandler:Landroid/os/Handler;
    iget v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_GET_DATA:I

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 277
    iget v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_GET_DATA:I

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 278
    iget v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_GET_DATA:I

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 279
    iget v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_GET_DATA:I

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 280
    iget v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_GET_DATA:I

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 281
    iget v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_UPDATE:I

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    return-void
.end method

.method private getPressureResultUpdate()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    .line 297
    const-string v4, ""

    .line 299
    .local v4, resData:Ljava/lang/String;
    const/4 v6, 0x0

    .line 300
    .local v6, total:F
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mPressureValue:[F

    array-length v2, v7

    .line 301
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_12

    .line 302
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mPressureValue:[F

    aget v7, v7, v1

    add-float/2addr v6, v7

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 304
    :cond_12
    int-to-float v7, v2

    div-float v3, v6, v7

    .line 305
    .local v3, pressureValue:F
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v7, "#.##"

    invoke-direct {v0, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, format:Ljava/text/DecimalFormat;
    float-to-double v7, v3

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 307
    const-string v7, ","

    const-string v8, "."

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 308
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "getPressureResultUpdate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->getCmdType()I

    move-result v7

    if-nez v7, :cond_9f

    .line 310
    const-string v7, "NEW_ETS"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_69

    const-string v7, "NEW_DM"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 313
    :cond_69
    const/16 v7, 0xa

    const/16 v8, 0x20

    invoke-static {v4, v7, v8}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, tempData:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "getPressureResultUpdate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pressure = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const-string v8, "6D"

    const-string v9, "01"

    invoke-virtual {v7, v11, v8, v9, v5}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .end local v5           #tempData:Ljava/lang/String;
    :goto_94
    return-void

    .line 317
    :cond_95
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const-string v8, "6D"

    const-string v9, "01"

    invoke-virtual {v7, v11, v8, v9, v4}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    .line 320
    :cond_9f
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v8, "1"

    invoke-virtual {p0, v8, v4}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_94
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "argu"

    .prologue
    const/4 v12, 0x3

    .line 69
    monitor-enter p0

    const/4 v4, 0x0

    .line 71
    .local v4, resData:Ljava/lang/String;
    :try_start_3
    array-length v10, p1

    iget v11, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->NUM_ARGS:I

    if-eq v10, v11, :cond_f

    array-length v10, p1

    if-eq v10, v12, :cond_f

    .line 72
    const-string v10, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_bd

    .line 260
    :goto_d
    monitor-exit p0

    return-object v10

    .line 79
    :cond_f
    const/4 v10, 0x3

    :try_start_10
    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_59

    .line 80
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v10}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 81
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v11, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v10

    if-eqz v10, :cond_48

    .line 82
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "0,0 - Sensor Off : NG"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_46
    :goto_46
    move-object v10, v4

    .line 260
    goto :goto_d

    .line 85
    :cond_48
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "0,0 - Sensor Off : OK"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_46

    .line 93
    :cond_59
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d2

    .line 94
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v10}, Lcom/sec/factory/modules/ModuleSensor;->SensorOff()V

    .line 95
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    const-string v11, "0"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleCommon;->writemBaroDelta(Ljava/lang/String;)V

    .line 96
    const/4 v10, 0x2

    new-array v6, v10, [I

    const/4 v10, 0x0

    sget v11, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    aput v11, v6, v10

    const/4 v10, 0x1

    sget v11, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____BAROMETER_EEPROM:I

    aput v11, v6, v10

    .line 98
    .local v6, senserID:[I
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    invoke-virtual {v10, v6}, Lcom/sec/factory/modules/ModuleSensor;->SensorOn([I)V

    .line 99
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "0,1,0 "

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_10 .. :try_end_98} :catchall_bd

    .line 102
    const-wide/16 v10, 0x1f4

    :try_start_9a
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_bd
    .catch Ljava/lang/InterruptedException; {:try_start_9a .. :try_end_9d} :catch_b8

    .line 107
    :goto_9d
    :try_start_9d
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v11, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v10

    if-eqz v10, :cond_c0

    .line 108
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "0,1 - Sensor ON : OK"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_46

    .line 103
    :catch_b8
    move-exception v2

    .line 104
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_bc
    .catchall {:try_start_9d .. :try_end_bc} :catchall_bd

    goto :goto_9d

    .line 69
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v6           #senserID:[I
    :catchall_bd
    move-exception v10

    monitor-exit p0

    throw v10

    .line 111
    .restart local v6       #senserID:[I
    :cond_c0
    :try_start_c0
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "0,1 - Sensor ON : NG"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_46

    .line 117
    .end local v6           #senserID:[I
    :cond_d2
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15c

    .line 118
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v11, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____BAROMETER_EEPROM:I

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v10

    if-eqz v10, :cond_14a

    .line 119
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v11, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____BAROMETER_EEPROM:I

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, result:[Ljava/lang/String;
    if-eqz v5, :cond_138

    .line 121
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1,0 - Total Read : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v10, 0x2

    aget-object v10, v5, v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12f

    .line 123
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_46

    .line 125
    :cond_12f
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_46

    .line 127
    :cond_138
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "1,0 - Total Read : NG (null)"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_46

    .line 131
    .end local v5           #result:[Ljava/lang/String;
    :cond_14a
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "1,0 - Total Read : NG (Sensor off)"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_46

    .line 137
    :cond_15c
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21f

    .line 138
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v11, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v10

    if-eqz v10, :cond_20d

    .line 139
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v11, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v5

    .line 140
    .restart local v5       #result:[Ljava/lang/String;
    if-eqz v5, :cond_1fb

    .line 141
    const-string v10, "NEW_ETS"

    const-string v11, "FACTORY_TEST_PROTOCOL"

    invoke-static {v11}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a4

    const-string v10, "NEW_DM"

    const-string v11, "FACTORY_TEST_PROTOCOL"

    invoke-static {v11}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d2

    .line 145
    :cond_1a4
    const/4 v10, 0x4

    aget-object v10, v5, v10

    const/16 v11, 0xa

    const/16 v12, 0x20

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, tempData:Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10, v7}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1,1 - Test result : Temperature = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_46

    .line 150
    .end local v7           #tempData:Ljava/lang/String;
    :cond_1d2
    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x4

    aget-object v11, v5, v11

    invoke-virtual {p0, v10, v11}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1,1 - Test result : Temperature = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_46

    .line 156
    :cond_1fb
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "1,1 - Test result : NG (null)"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_46

    .line 160
    .end local v5           #result:[Ljava/lang/String;
    :cond_20d
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "1,1 - Test result : NG (Sensor Off)"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_46

    .line 166
    :cond_21f
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "2"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28f

    .line 167
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "1,2,0 "

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_240
    .catchall {:try_start_c0 .. :try_end_240} :catchall_bd

    .line 170
    const-wide/16 v10, 0x1f4

    :try_start_242
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_245
    .catchall {:try_start_242 .. :try_end_245} :catchall_bd
    .catch Ljava/lang/InterruptedException; {:try_start_242 .. :try_end_245} :catch_266

    .line 175
    :goto_245
    :try_start_245
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v11, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleSensor;->isSensorOn(I)Z

    move-result v10

    if-eqz v10, :cond_27d

    .line 176
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    sget v11, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_BAROMETER:I

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v5

    .line 177
    .restart local v5       #result:[Ljava/lang/String;
    if-eqz v5, :cond_26b

    .line 183
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->getDataBaroHandler()V

    .line 184
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->getCmdType()I

    move-result v10

    if-nez v10, :cond_46

    .line 185
    const-string v4, "WAIT"

    goto/16 :goto_46

    .line 171
    .end local v5           #result:[Ljava/lang/String;
    :catch_266
    move-exception v2

    .line 172
    .restart local v2       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_245

    .line 188
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v5       #result:[Ljava/lang/String;
    :cond_26b
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "1,2 - Test result : NG (null)"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_46

    .line 192
    .end local v5           #result:[Ljava/lang/String;
    :cond_27d
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "1,2 - Test result : NG (Sensor Off)"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_46

    .line 198
    :cond_28f
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_345

    .line 200
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v10}, Lcom/sec/factory/modules/ModuleCommon;->readmBaroDelta()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, value:Ljava/lang/String;
    const-string v10, "BAROMETE_VENDOR"

    invoke-static {v10}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 203
    .local v9, vendor:Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "readmBaroDelta"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "vendor="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v5, 0x0

    .line 205
    .local v5, result:F
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 207
    const-string v10, "STM"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_328

    .line 208
    const/high16 v10, 0x4580

    div-float/2addr v5, v10

    .line 212
    :cond_2dd
    :goto_2dd
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "readmBaroDelta"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "result="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    .line 215
    const-string v10, "NEW_ETS"

    const-string v11, "FACTORY_TEST_PROTOCOL"

    invoke-static {v11}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_317

    const-string v10, "NEW_DM"

    const-string v11, "FACTORY_TEST_PROTOCOL"

    invoke-static {v11}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33c

    .line 218
    :cond_317
    const/16 v10, 0xa

    const/16 v11, 0x20

    invoke-static {v8, v10, v11}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v7

    .line 219
    .restart local v7       #tempData:Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10, v7}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    goto/16 :goto_46

    .line 209
    .end local v7           #tempData:Ljava/lang/String;
    :cond_328
    const-string v10, "BOCH"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_338

    const-string v10, "BOSCH"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2dd

    .line 210
    :cond_338
    const/high16 v10, 0x42c8

    div-float/2addr v5, v10

    goto :goto_2dd

    .line 221
    :cond_33c
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10, v8}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_46

    .line 227
    .end local v5           #result:F
    .end local v8           #value:Ljava/lang/String;
    .end local v9           #vendor:Ljava/lang/String;
    :cond_345
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "2"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_39b

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, castoffset:I
    const-string v3, ""

    .line 231
    .local v3, offSet:Ljava/lang/String;
    const-string v10, "BAROMETE_VENDOR"

    invoke-static {v10}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 232
    .restart local v9       #vendor:Ljava/lang/String;
    const/4 v1, 0x0

    .line 240
    .local v1, delta:F
    const/4 v10, 0x2

    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 242
    const-string v10, "STM"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_387

    .line 243
    const/high16 v10, 0x4580

    mul-float/2addr v1, v10

    .line 249
    :cond_374
    :goto_374
    float-to-int v0, v1

    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 251
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v10, v3}, Lcom/sec/factory/modules/ModuleCommon;->writemBaroDelta(Ljava/lang/String;)V

    .line 253
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 254
    goto/16 :goto_46

    .line 244
    :cond_387
    const-string v10, "BOCH"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_397

    const-string v10, "BOSCH"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_374

    .line 245
    :cond_397
    const/high16 v10, 0x42c8

    mul-float/2addr v1, v10

    goto :goto_374

    .line 257
    .end local v0           #castoffset:I
    .end local v1           #delta:F
    .end local v3           #offSet:Ljava/lang/String;
    .end local v9           #vendor:Ljava/lang/String;
    :cond_39b
    const-string v4, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_39d
    .catchall {:try_start_245 .. :try_end_39d} :catchall_bd

    goto/16 :goto_46
.end method
