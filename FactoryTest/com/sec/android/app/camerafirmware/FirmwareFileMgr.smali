.class public Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;
.super Ljava/lang/Object;
.source "FirmwareFileMgr.java"


# static fields
.field protected static final CAMERA_FIRMWARE_INFO_USER_FILE:Ljava/lang/String;

.field protected static CAM_FLAG_FIRMWARE_DUMP:[B

.field protected static CAM_FLAG_FIRMWARE_UPDATE:[B


# instance fields
.field protected CAMERA_FIRMWARE_INFO_FILE:Ljava/lang/String;

.field protected CAMERA_FIRMWARE_TYPE_FILE:Ljava/lang/String;

.field protected FW_INFO_TOKENS_NUM:I

.field protected mCAMFWCalAF:Ljava/lang/String;

.field protected mCAMFWCalSEN:Ljava/lang/String;

.field protected mCamFWVer:Ljava/lang/String;

.field protected mFWManageMode:[B

.field protected mFWUpdateCount:Ljava/lang/String;

.field protected mISPVer1:Ljava/lang/String;

.field protected mISPVer2:Ljava/lang/String;

.field protected mISPVoltage:Ljava/lang/String;

.field protected mPhoneFWVer:Ljava/lang/String;

.field protected mValidResult:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAMERA_FIRMWARE_INFO_USER_FILE:Ljava/lang/String;

    .line 34
    new-array v0, v2, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    .line 38
    new-array v0, v2, [B

    fill-array-data v0, :array_34

    sput-object v0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_DUMP:[B

    return-void

    .line 34
    nop

    :array_2e
    .array-data 0x1
        0x31t
        0x0t
    .end array-data

    .line 38
    nop

    :array_34
    .array-data 0x1
        0x32t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAMERA_FIRMWARE_INFO_FILE:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAMERA_FIRMWARE_TYPE_FILE:Ljava/lang/String;

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->FW_INFO_TOKENS_NUM:I

    .line 42
    sget-object v0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mFWManageMode:[B

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mValidResult:Z

    .line 63
    const-string v0, "FirmwareFileMgr"

    const-string v1, "FirmwareFileMgr"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, "/sys/class/camera/rear/rear_camfw"

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAMERA_FIRMWARE_INFO_FILE:Ljava/lang/String;

    .line 65
    const-string v0, "/sys/class/camera/rear/rear_camtype"

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAMERA_FIRMWARE_TYPE_FILE:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getCAMFWCalAF()Ljava/lang/String;
    .registers 4

    .prologue
    .line 247
    const-string v0, "FirmwareFileMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCAMFWCalAF() - mCAMFWCalAF["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mCAMFWCalAF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getFWInfo()V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mCAMFWCalAF:Ljava/lang/String;

    return-object v0
.end method

.method public getCAMFWCalSEN()Ljava/lang/String;
    .registers 4

    .prologue
    .line 253
    const-string v0, "FirmwareFileMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCAMFWCalSEN() - mCAMFWCalSEN["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mCAMFWCalSEN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getFWInfo()V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mCAMFWCalSEN:Ljava/lang/String;

    return-object v0
.end method

.method public getCamFWVer()Ljava/lang/String;
    .registers 4

    .prologue
    .line 217
    const-string v0, "FirmwareFileMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCamFWVer() - mCamFWVer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mCamFWVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getFWInfo()V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mCamFWVer:Ljava/lang/String;

    return-object v0
.end method

.method protected getFWInfo()V
    .registers 15

    .prologue
    .line 163
    iget-boolean v11, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mValidResult:Z

    if-nez v11, :cond_b6

    .line 164
    const-string v11, "FirmwareFileMgr"

    const-string v12, "getFWInfo() - the fw infor will be updated"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v9, 0x0

    .line 168
    .local v9, sysFsPath:Ljava/lang/String;
    const/4 v10, 0x0

    .line 169
    .local v10, sysFsTypePath:Ljava/lang/String;
    :try_start_d
    iget-object v9, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAMERA_FIRMWARE_INFO_FILE:Ljava/lang/String;

    .line 170
    iget-object v10, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAMERA_FIRMWARE_TYPE_FILE:Ljava/lang/String;

    .line 172
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, fr:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 175
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 176
    .local v4, frType:Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 178
    .local v1, brType:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, mFWInfo:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, mFWType:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 181
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 182
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 183
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 185
    if-eqz v5, :cond_3d

    if-nez v6, :cond_45

    .line 186
    :cond_3d
    const-string v11, "FirmwareFileMgr"

    const-string v12, "getFWInfo() - can not get the FW info"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #brType:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .end local v4           #frType:Ljava/io/FileReader;
    .end local v5           #mFWInfo:Ljava/lang/String;
    .end local v6           #mFWType:Ljava/lang/String;
    .end local v9           #sysFsPath:Ljava/lang/String;
    .end local v10           #sysFsTypePath:Ljava/lang/String;
    :goto_44
    return-void

    .line 190
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #brType:Ljava/io/BufferedReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    .restart local v4       #frType:Ljava/io/FileReader;
    .restart local v5       #mFWInfo:Ljava/lang/String;
    .restart local v6       #mFWType:Ljava/lang/String;
    .restart local v9       #sysFsPath:Ljava/lang/String;
    .restart local v10       #sysFsTypePath:Ljava/lang/String;
    :cond_45
    const-string v11, "FirmwareFileMgr"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getFWInfo() - FW info["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "::"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v11, " "

    const/4 v12, 0x0

    invoke-direct {v7, v5, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    .local v7, st:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_98

    .line 194
    const-string v11, "FirmwareFileMgr"

    const-string v12, "invalid FW Info!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v11, "NONE"

    iput-object v11, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mCamFWVer:Ljava/lang/String;

    .line 196
    const-string v11, "NONE"

    iput-object v11, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mPhoneFWVer:Ljava/lang/String;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_8b} :catch_8c

    goto :goto_44

    .line 207
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #brType:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .end local v4           #frType:Ljava/io/FileReader;
    .end local v5           #mFWInfo:Ljava/lang/String;
    .end local v6           #mFWType:Ljava/lang/String;
    .end local v7           #st:Ljava/util/StringTokenizer;
    :catch_8c
    move-exception v2

    .line 208
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    const-string v11, "FirmwareFileMgr"

    const-string v12, "file reading error"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 200
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #brType:Ljava/io/BufferedReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    .restart local v4       #frType:Ljava/io/FileReader;
    .restart local v5       #mFWInfo:Ljava/lang/String;
    .restart local v6       #mFWType:Ljava/lang/String;
    .restart local v7       #st:Ljava/util/StringTokenizer;
    :cond_98
    :try_start_98
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mCamFWVer:Ljava/lang/String;

    .line 201
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mPhoneFWVer:Ljava/lang/String;

    .line 202
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v11, " "

    const/4 v12, 0x0

    invoke-direct {v8, v6, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 203
    .local v8, stType:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mISPVer1:Ljava/lang/String;

    .line 206
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mValidResult:Z
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b5} :catch_8c

    goto :goto_44

    .line 212
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #brType:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .end local v4           #frType:Ljava/io/FileReader;
    .end local v5           #mFWInfo:Ljava/lang/String;
    .end local v6           #mFWType:Ljava/lang/String;
    .end local v7           #st:Ljava/util/StringTokenizer;
    .end local v8           #stType:Ljava/util/StringTokenizer;
    .end local v9           #sysFsPath:Ljava/lang/String;
    .end local v10           #sysFsTypePath:Ljava/lang/String;
    :cond_b6
    const-string v11, "FirmwareFileMgr"

    const-string v12, "getFWInfo() - do not need the firmware info"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method public getISPVer1()Ljava/lang/String;
    .registers 4

    .prologue
    .line 223
    const-string v0, "FirmwareFileMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getISPVer1() - mISPVer1["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mISPVer1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getFWInfo()V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mISPVer1:Ljava/lang/String;

    return-object v0
.end method

.method public getISPVoltage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 259
    const-string v0, "FirmwareFileMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getISPVoltageInfo() - mISPVoltage["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mISPVoltage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getISPVoltageInfo()V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mISPVoltage:Ljava/lang/String;

    return-object v0
.end method

.method protected getISPVoltageInfo()V
    .registers 10

    .prologue
    .line 129
    const/4 v5, 0x0

    .line 130
    .local v5, sysFsPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 131
    .local v3, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 133
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_3
    const-string v5, "/sys/class/camera/rear/isp_core"

    .line 134
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_6a

    .line 135
    .end local v3           #fr:Ljava/io/FileReader;
    .local v4, fr:Ljava/io/FileReader;
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_97

    .line 136
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    if-eqz v1, :cond_17

    .line 137
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mISPVoltage:Ljava/lang/String;

    .line 138
    :cond_17
    if-eqz v4, :cond_21

    if-eqz v1, :cond_21

    .line 139
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 140
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 142
    :cond_21
    iget-object v6, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mISPVoltage:Ljava/lang/String;

    if-nez v6, :cond_39

    .line 143
    const-string v6, "FirmwareFileMgr"

    const-string v7, "getISPVoltageInfo() - can not get the VOLTAGE info"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2c} :catch_9a

    .line 152
    if-eqz v4, :cond_36

    if-eqz v1, :cond_36

    .line 153
    :try_start_30
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 154
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_36} :catch_9e

    :cond_36
    :goto_36
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 160
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :cond_38
    :goto_38
    return-void

    .line 146
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :cond_39
    :try_start_39
    const-string v6, "FirmwareFileMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getISPVoltageInfo() - VOLTAGE info["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mISPVoltage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_39 .. :try_end_59} :catchall_93
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_59} :catch_9a

    .line 152
    if-eqz v4, :cond_63

    if-eqz v1, :cond_63

    .line 153
    :try_start_5d
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 154
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_63} :catch_66

    :cond_63
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 158
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_38

    .line 156
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_66
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 159
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_38

    .line 147
    :catch_6a
    move-exception v2

    .line 148
    .local v2, e:Ljava/lang/Exception;
    :goto_6b
    :try_start_6b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    const-string v6, "FirmwareFileMgr"

    const-string v7, "file reading error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_82

    .line 152
    if-eqz v3, :cond_38

    if-eqz v0, :cond_38

    .line 153
    :try_start_79
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 154
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7f} :catch_80

    goto :goto_38

    .line 156
    :catch_80
    move-exception v6

    goto :goto_38

    .line 151
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_82
    move-exception v6

    .line 152
    :goto_83
    if-eqz v3, :cond_8d

    if-eqz v0, :cond_8d

    .line 153
    :try_start_87
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 154
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8d} :catch_8e

    .line 158
    :cond_8d
    :goto_8d
    throw v6

    .line 156
    :catch_8e
    move-exception v7

    goto :goto_8d

    .line 151
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catchall_90
    move-exception v6

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_83

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catchall_93
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_83

    .line 147
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_97
    move-exception v2

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_6b

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_9a
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_6b

    .line 156
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_9e
    move-exception v6

    goto :goto_36
.end method

.method public getManageMode()[B
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mFWManageMode:[B

    return-object v0
.end method

.method public getPhoneFWVer()Ljava/lang/String;
    .registers 4

    .prologue
    .line 229
    const-string v0, "FirmwareFileMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneFWVer() - mPhoneFWVer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mPhoneFWVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getFWInfo()V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mPhoneFWVer:Ljava/lang/String;

    return-object v0
.end method

.method public resetFWInfo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 107
    const-string v0, "FirmwareFileMgr"

    const-string v1, "resetFWInfo() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mFWManageMode:[B

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mValidResult:Z

    .line 111
    iput-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mCamFWVer:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mPhoneFWVer:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mISPVer1:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mISPVer2:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mFWUpdateCount:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mCAMFWCalAF:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mCAMFWCalSEN:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setManageMode([B)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->mFWManageMode:[B

    .line 122
    return-void
.end method
