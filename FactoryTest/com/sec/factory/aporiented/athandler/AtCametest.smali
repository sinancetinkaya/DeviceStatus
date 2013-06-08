.class public Lcom/sec/factory/aporiented/athandler/AtCametest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtCametest.java"


# instance fields
.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtCametest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtCametest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    const-string v0, "CAMETEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CMD_NAME:Ljava/lang/String;

    .line 20
    const-string v0, "AtCametest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    .line 21
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->NUM_ARGS:I

    .line 22
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtCametest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtCametest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtCametest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    const-string v0, "CAMETEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CMD_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "AtCametest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    .line 29
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->NUM_ARGS:I

    .line 30
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    .line 85
    monitor-enter p0

    const/4 v0, 0x0

    .line 87
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 88
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_23f

    .line 244
    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    .line 91
    :cond_b
    const/4 v1, 0x4

    :try_start_c
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCametest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 96
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 97
    :cond_30
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCametest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 101
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "Front Preview"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->startReceiver()V

    .line 104
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->context:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const-string v2, "camera_id"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_9

    .line 109
    const-string v0, "WAIT"

    goto :goto_9

    .line 111
    :cond_7b
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCametest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 115
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "Rear Preview"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->startReceiver()V

    .line 118
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->context:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    const-string v2, "camera_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v2, "camcorder_preview_test"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_9

    .line 124
    const-string v0, "WAIT"

    goto/16 :goto_9

    .line 126
    :cond_cd
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCametest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1bc

    .line 132
    const-string v1, "REAR_CAMERA_TYPE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string v2, "ISP_FLASH_TEST_SMD"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 135
    const-string v3, "TORCH_MODE_FLASH_ON_CURRENT"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    iget-object v4, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "handleCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rear cam type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v4, "SOC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14e

    .line 139
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v4, "flash on for SOC"

    invoke-static {v1, v2, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "TORCH_MODE_FLASH"

    invoke-static {v1, v3}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 141
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 142
    :cond_13d
    const-string v1, "TORCH_MODE_FLASH_OLD"

    invoke-static {v1, v3}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 143
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 145
    :cond_14e
    const-string v4, "ISP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 146
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_191

    .line 147
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "flash off for ISP"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->startReceiver()V

    .line 149
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->context:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string v2, "camera_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string v2, "torch_on"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_9

    .line 155
    const-string v0, "WAIT"

    goto/16 :goto_9

    .line 158
    :cond_191
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v4, "ISP_SMD"

    invoke-static {v1, v2, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "TORCH_MODE_FLASH"

    invoke-static {v1, v3}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ab

    .line 160
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 161
    :cond_1ab
    const-string v1, "TORCH_MODE_FLASH_OLD"

    invoke-static {v1, v3}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 162
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 166
    :cond_1bc
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCametest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29d

    .line 172
    const-string v1, "REAR_CAMERA_TYPE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    const-string v2, "ISP_FLASH_TEST_SMD"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "handleCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rear cam type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v3, "SOC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_242

    .line 178
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "handleCommand"

    const-string v2, "flash off for SOC"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "TORCH_MODE_FLASH"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22e

    .line 180
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    :cond_225
    :goto_225
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 181
    :cond_22e
    const-string v0, "TORCH_MODE_FLASH_OLD"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_225

    .line 182
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;
    :try_end_23e
    .catchall {:try_start_c .. :try_end_23e} :catchall_23f

    goto :goto_225

    .line 85
    :catchall_23f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_242
    :try_start_242
    const-string v3, "ISP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 186
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_26e

    .line 187
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "handleCommand"

    const-string v2, "flash off for ISP"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.CameraStop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 192
    :cond_26e
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "flash off for ISP_SMD"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "TORCH_MODE_FLASH"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28a

    .line 194
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 195
    :cond_28a
    const-string v1, "TORCH_MODE_FLASH_OLD"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 196
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 200
    :cond_29d
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "9"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCametest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2ff

    .line 205
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "Front off"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.CameraStop"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    const-string v1, "NEED_ACK_FOR_CAMERA_STOP"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2ed

    .line 211
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "Camera Stop from mReceiver"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->startReceiver()V

    .line 213
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_9

    .line 214
    const-string v0, "WAIT"

    goto/16 :goto_9

    .line 217
    :cond_2ed
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "handleCommand"

    const-string v2, "Camera Stop!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 220
    :cond_2ff
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "9"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCametest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_361

    .line 225
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "Rear off"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.CameraStop"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    const-string v1, "NEED_ACK_FOR_CAMERA_STOP"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34f

    .line 231
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "handleCommand"

    const-string v3, "Camera Stop from mReceiver"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->startReceiver()V

    .line 233
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->getCmdType()I

    move-result v1

    if-nez v1, :cond_9

    .line 234
    const-string v0, "WAIT"

    goto/16 :goto_9

    .line 237
    :cond_34f
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "handleCommand"

    const-string v2, "Camera Stop!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCametest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 241
    :cond_361
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_363
    .catchall {:try_start_242 .. :try_end_363} :catchall_23f

    goto/16 :goto_9
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.samsungtest.CAMERA_GOOD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v1, "com.android.samsungtest.CAMERA_BAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v1, "com.android.samsungtest.CAMERA_STOP_ACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtCametest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    return-void
.end method
