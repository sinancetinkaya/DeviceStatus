.class public Lcom/sec/factory/modules/SensorNotification;
.super Ljava/lang/Thread;
.source "SensorNotification.java"


# static fields
.field private static DUMMY:I

.field public static WHAT_NOTI_SENSOR_MAX:I

.field public static WHAT_NOTI_SENSOR_MIN:I

.field public static WHAT_NOTI_SENSOR_READY:I

.field public static WHAT_NOTI_SENSOR_UPDATAE:I


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private FLAG_LOOP:Z

.field private NOTI_LOOP_DELAY:I

.field private TIMEOUT:I

.field private WHAT_LOCAL_TIMEOUT:I

.field private mFile_ID:[I

.field private mFile_Ready:[Z

.field private mInterrupted:Z

.field private mIsReady_File:Z

.field private mIsReady_Manager:Z

.field private mIsTimeout:Z

.field private mLocalHandler:Landroid/os/Handler;

.field private mManager_ID:[I

.field private mManager_Ready:[Z

.field private mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

.field private mNotiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/sec/factory/modules/SensorNotification;->DUMMY:I

    .line 15
    sget v0, Lcom/sec/factory/modules/SensorNotification;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_MIN:I

    .line 16
    sget v0, Lcom/sec/factory/modules/SensorNotification;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorNotification;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_READY:I

    .line 17
    sget v0, Lcom/sec/factory/modules/SensorNotification;->DUMMY:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/factory/modules/SensorNotification;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_UPDATAE:I

    .line 18
    sget v0, Lcom/sec/factory/modules/SensorNotification;->DUMMY:I

    sput v0, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_MAX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I[I)V
    .registers 8
    .parameter "context"
    .parameter "idManager"
    .parameter "idFile"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    const-string v0, "SensorNotification"

    iput-object v0, p0, Lcom/sec/factory/modules/SensorNotification;->CLASS_NAME:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/sec/factory/modules/SensorNotification;->WHAT_LOCAL_TIMEOUT:I

    .line 22
    iput-object v2, p0, Lcom/sec/factory/modules/SensorNotification;->mNotiHandler:Landroid/os/Handler;

    .line 24
    iput-boolean v1, p0, Lcom/sec/factory/modules/SensorNotification;->mIsTimeout:Z

    .line 25
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/factory/modules/SensorNotification;->TIMEOUT:I

    .line 27
    iput-boolean v1, p0, Lcom/sec/factory/modules/SensorNotification;->mInterrupted:Z

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/factory/modules/SensorNotification;->NOTI_LOOP_DELAY:I

    .line 31
    iput-object v2, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_ID:[I

    iput-object v2, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_ID:[I

    .line 32
    iput-object v2, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_Ready:[Z

    iput-object v2, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_Ready:[Z

    .line 33
    iput-boolean v1, p0, Lcom/sec/factory/modules/SensorNotification;->mIsReady_Manager:Z

    iput-boolean v1, p0, Lcom/sec/factory/modules/SensorNotification;->mIsReady_File:Z

    .line 35
    iput-boolean v1, p0, Lcom/sec/factory/modules/SensorNotification;->FLAG_LOOP:Z

    .line 214
    new-instance v0, Lcom/sec/factory/modules/SensorNotification$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/SensorNotification$1;-><init>(Lcom/sec/factory/modules/SensorNotification;)V

    iput-object v0, p0, Lcom/sec/factory/modules/SensorNotification;->mLocalHandler:Landroid/os/Handler;

    .line 40
    iput-object p2, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_ID:[I

    .line 41
    iput-object p3, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_ID:[I

    .line 42
    iput-boolean v1, p0, Lcom/sec/factory/modules/SensorNotification;->mIsTimeout:Z

    .line 43
    iput-boolean v1, p0, Lcom/sec/factory/modules/SensorNotification;->mInterrupted:Z

    .line 45
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleSensor;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleSensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/SensorNotification;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    .line 47
    iget-object v0, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_ID:[I

    if-eqz v0, :cond_54

    .line 48
    iget-object v0, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_ID:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_Ready:[Z

    .line 52
    :goto_48
    iget-object v0, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_ID:[I

    if-eqz v0, :cond_57

    .line 53
    iget-object v0, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_ID:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_Ready:[Z

    .line 56
    :goto_53
    return-void

    .line 50
    :cond_54
    iput-boolean v3, p0, Lcom/sec/factory/modules/SensorNotification;->mIsReady_Manager:Z

    goto :goto_48

    .line 55
    :cond_57
    iput-boolean v3, p0, Lcom/sec/factory/modules/SensorNotification;->mIsReady_File:Z

    goto :goto_53
.end method

.method static synthetic access$000(Lcom/sec/factory/modules/SensorNotification;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/sec/factory/modules/SensorNotification;->WHAT_LOCAL_TIMEOUT:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/factory/modules/SensorNotification;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/sec/factory/modules/SensorNotification;->mIsTimeout:Z

    return p1
.end method

.method private checkExceptionID(I)Z
    .registers 6
    .parameter "id"

    .prologue
    .line 205
    sget v0, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_GYRO_SELF:I

    if-ne p1, v0, :cond_2e

    .line 206
    const-string v0, "SensorNotification"

    const-string v1, "checkExceptionID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleSensor;->getString_ID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    .line 211
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private dataCheck([Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "data"

    .prologue
    .line 255
    const-string v3, ""

    .line 257
    .local v3, result:Ljava/lang/String;
    if-eqz p1, :cond_5e

    .line 259
    const/4 v2, 0x0

    .line 261
    .local v2, length:I
    const/4 v4, 0x0

    :try_start_6
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_3c

    move-result v2

    .line 267
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    add-int/lit8 v4, v2, 0x1

    if-ge v1, v4, :cond_5e

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    if-ge v1, v2, :cond_39

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 262
    .end local v1           #i:I
    :catch_3c
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SensorNotification"

    const-string v5, "dataCheck"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v4, "NULL"

    .line 273
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #length:I
    :goto_5d
    return-object v4

    :cond_5e
    move-object v4, v3

    goto :goto_5d
.end method

.method private sendMessage_SensorReady()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    .line 82
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Timeout : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/sec/factory/modules/SensorNotification;->TIMEOUT:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_ID:[I

    if-eqz v10, :cond_2a

    .line 85
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    const-string v12, " check - Manager ID"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_2a
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_ID:[I

    if-eqz v10, :cond_37

    .line 87
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    const-string v12, " check - File ID"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 92
    .local v8, time_Start:J
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    const-string v12, " START!!"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Time : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mLocalHandler:Landroid/os/Handler;

    iget v11, p0, Lcom/sec/factory/modules/SensorNotification;->WHAT_LOCAL_TIMEOUT:I

    iget v12, p0, Lcom/sec/factory/modules/SensorNotification;->TIMEOUT:I

    int-to-long v12, v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    const/4 v2, 0x0

    .local v2, readyCount_Manager:I
    const/4 v1, 0x0

    .line 98
    .local v1, readyCount_File:I
    :cond_6a
    iget-boolean v10, p0, Lcom/sec/factory/modules/SensorNotification;->mInterrupted:Z

    if-nez v10, :cond_141

    .line 100
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_ID:[I

    if-eqz v10, :cond_d8

    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_73
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_ID:[I

    array-length v10, v10

    if-ge v0, v10, :cond_d1

    .line 104
    iget-boolean v10, p0, Lcom/sec/factory/modules/SensorNotification;->mInterrupted:Z

    if-eqz v10, :cond_7d

    .line 182
    .end local v0           #i:I
    :cond_7c
    :goto_7c
    return-void

    .line 106
    .restart local v0       #i:I
    :cond_7d
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_Ready:[Z

    aget-boolean v10, v10, v0

    if-nez v10, :cond_93

    .line 107
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_ID:[I

    aget v10, v10, v0

    invoke-direct {p0, v10}, Lcom/sec/factory/modules/SensorNotification;->checkExceptionID(I)Z

    move-result v10

    if-eqz v10, :cond_96

    .line 108
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_Ready:[Z

    aput-boolean v14, v10, v0

    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 103
    :cond_93
    :goto_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 111
    :cond_96
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v11, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_ID:[I

    aget v11, v11, v0

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, temp:[Ljava/lang/String;
    if-eqz v3, :cond_93

    .line 113
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_Ready:[Z

    aput-boolean v14, v10, v0

    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Manager check ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/sec/factory/modules/SensorNotification;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_93

    .line 125
    .end local v3           #temp:[Ljava/lang/String;
    :cond_d1
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_ID:[I

    array-length v10, v10

    if-ne v2, v10, :cond_d8

    .line 126
    iput-boolean v14, p0, Lcom/sec/factory/modules/SensorNotification;->mIsReady_Manager:Z

    .line 130
    .end local v0           #i:I
    :cond_d8
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_ID:[I

    if-eqz v10, :cond_130

    .line 133
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_dd
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_ID:[I

    array-length v10, v10

    if-ge v0, v10, :cond_129

    .line 134
    iget-boolean v10, p0, Lcom/sec/factory/modules/SensorNotification;->mInterrupted:Z

    if-nez v10, :cond_7c

    .line 136
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_Ready:[Z

    aget-boolean v10, v10, v0

    if-nez v10, :cond_126

    .line 137
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    iget-object v11, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_ID:[I

    aget v11, v11, v0

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v3

    .line 138
    .restart local v3       #temp:[Ljava/lang/String;
    if-eqz v3, :cond_126

    .line 139
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_Ready:[Z

    aput-boolean v14, v10, v0

    .line 140
    add-int/lit8 v1, v1, 0x1

    .line 141
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " File check ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/sec/factory/modules/SensorNotification;->dataCheck([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v3           #temp:[Ljava/lang/String;
    :cond_126
    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 150
    :cond_129
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_ID:[I

    array-length v10, v10

    if-ne v1, v10, :cond_130

    .line 151
    iput-boolean v14, p0, Lcom/sec/factory/modules/SensorNotification;->mIsReady_File:Z

    .line 154
    .end local v0           #i:I
    :cond_130
    iget-boolean v10, p0, Lcom/sec/factory/modules/SensorNotification;->mIsReady_Manager:Z

    if-eqz v10, :cond_19c

    iget-boolean v10, p0, Lcom/sec/factory/modules/SensorNotification;->mIsReady_File:Z

    if-eqz v10, :cond_19c

    .line 155
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    const-string v12, " All ready"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_141
    :goto_141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 168
    .local v4, time_Finish:J
    sub-long v6, v4, v8

    .line 169
    .local v6, time_Lag:J
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    const-string v12, " FINISH!!"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Time : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Time Lag => "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " millisecond"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    const-string v12, " Send Message => WHAT_NOTI_SENSOR_READY"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v10, p0, Lcom/sec/factory/modules/SensorNotification;->mNotiHandler:Landroid/os/Handler;

    sget v11, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_READY:I

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7c

    .line 159
    .end local v4           #time_Finish:J
    .end local v6           #time_Lag:J
    :cond_19c
    iget-boolean v10, p0, Lcom/sec/factory/modules/SensorNotification;->mIsTimeout:Z

    if-eqz v10, :cond_6a

    .line 160
    const-string v10, "SensorNotification"

    const-string v11, "sendMessage_SensorReady"

    const-string v12, " ==========> Timeout~!~!~!~!~!~!"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/sec/factory/modules/SensorNotification;->showID_NotReady()V

    goto :goto_141
.end method

.method private sendMessage_SensorUpdate()V
    .registers 5

    .prologue
    .line 227
    const-string v1, "SensorNotification"

    const-string v2, "sendMessage_SensorUpdate"

    const-string v3, " START!! "

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "SensorNotification"

    const-string v2, "sendMessage_SensorUpdate"

    const-string v3, " Send Message => WHAT_NOTI_SENSOR_UPDATAE"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_12
    iget-boolean v1, p0, Lcom/sec/factory/modules/SensorNotification;->mInterrupted:Z

    if-nez v1, :cond_29

    .line 231
    iget-object v1, p0, Lcom/sec/factory/modules/SensorNotification;->mNotiHandler:Landroid/os/Handler;

    sget v2, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_UPDATAE:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    :try_start_1d
    iget v1, p0, Lcom/sec/factory/modules/SensorNotification;->NOTI_LOOP_DELAY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/sec/factory/modules/SensorNotification;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_23} :catch_24

    goto :goto_12

    .line 234
    :catch_24
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_12

    .line 238
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_29
    const-string v1, "SensorNotification"

    const-string v2, "sendMessage_SensorUpdate"

    const-string v3, " FINISH!! "

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private showID_NotReady()V
    .registers 7

    .prologue
    .line 185
    const-string v1, ""

    .line 186
    .local v1, temp:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_Ready:[Z

    if-eqz v2, :cond_5e

    .line 187
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v2, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_Ready:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_44

    .line 188
    iget-object v2, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_Ready:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_41

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorNotification;->mManager_ID:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/sec/factory/modules/ModuleSensor;->getString_ID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 191
    :cond_44
    const-string v2, "SensorNotification"

    const-string v3, "showID_NotReady"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Not Ready ID (Manager) => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v0           #i:I
    :cond_5e
    const-string v1, ""

    .line 195
    iget-object v2, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_Ready:[Z

    if-eqz v2, :cond_bc

    .line 196
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_65
    iget-object v2, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_Ready:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_a2

    .line 197
    iget-object v2, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_Ready:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_9f

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/SensorNotification;->mFile_ID:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/sec/factory/modules/ModuleSensor;->getString_ID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 200
    :cond_a2
    const-string v2, "SensorNotification"

    const-string v3, "showID_NotReady"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Not Ready ID (File) => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v0           #i:I
    :cond_bc
    return-void
.end method


# virtual methods
.method public interrup()V
    .registers 2

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/SensorNotification;->mInterrupted:Z

    .line 250
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 59
    const-string v0, "SensorNotification"

    const-string v1, "run"

    const-string v2, " ========== "

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/sec/factory/modules/SensorNotification;->sendMessage_SensorReady()V

    .line 63
    const-string v0, "SensorNotification"

    const-string v1, "run"

    const-string v2, " ========== "

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lcom/sec/factory/modules/SensorNotification;->FLAG_LOOP:Z

    if-eqz v0, :cond_25

    .line 66
    invoke-direct {p0}, Lcom/sec/factory/modules/SensorNotification;->sendMessage_SensorUpdate()V

    .line 68
    const-string v0, "SensorNotification"

    const-string v1, "run"

    const-string v2, " ========== "

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_25
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "notiHandler"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/factory/modules/SensorNotification;->mNotiHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method public setLoopDelay(I)V
    .registers 3
    .parameter "loopDelay_millisecond"

    .prologue
    .line 242
    if-lez p1, :cond_7

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/modules/SensorNotification;->FLAG_LOOP:Z

    .line 244
    iput p1, p0, Lcom/sec/factory/modules/SensorNotification;->NOTI_LOOP_DELAY:I

    .line 246
    :cond_7
    return-void
.end method
