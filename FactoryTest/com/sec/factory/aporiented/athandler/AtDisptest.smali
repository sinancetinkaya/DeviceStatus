.class public Lcom/sec/factory/aporiented/athandler/AtDisptest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtDisptest.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v0, "DISPTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtDisptest;->CMD_NAME:Ljava/lang/String;

    .line 18
    const-string v0, "AtDisptest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtDisptest;->CLASS_NAME:Ljava/lang/String;

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtDisptest;->NUM_ARGS:I

    .line 20
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private startDisptest(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/factory/app/ui/UIDisptestActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v1, "TEST_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string v1, "VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "argu"

    .prologue
    .line 39
    monitor-enter p0

    const/4 v2, 0x0

    .line 40
    .local v2, resData:Ljava/lang/String;
    :try_start_2
    array-length v3, p1

    iget v4, p0, Lcom/sec/factory/aporiented/athandler/AtDisptest;->NUM_ARGS:I

    if-eq v3, v4, :cond_d

    .line 41
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseNA()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_24d

    move-result-object v3

    .line 146
    :goto_b
    monitor-exit p0

    return-object v3

    .line 44
    :cond_d
    const/4 v3, 0x2

    :try_start_e
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "0"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 47
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->startDisptest(II)V

    .line 48
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2c
    move-object v3, v2

    .line 146
    goto :goto_b

    .line 49
    :cond_2e
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 54
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->startDisptest(II)V

    .line 55
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2c

    .line 56
    :cond_4e
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "2"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 61
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->startDisptest(II)V

    .line 62
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2c

    .line 63
    :cond_6e
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "3"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 64
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModulePower;->setScreenState(Z)V

    .line 65
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModulePower;->doWakeLock(Z)V

    .line 66
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModulePower;->doPartialWakeLock(Z)V

    .line 67
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2c

    .line 68
    :cond_9b
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "4"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 69
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModulePower;->doPartialWakeLock(Z)V

    .line 70
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModulePower;->doWakeLock(Z)V

    .line 75
    const-string v3, "NEED_LPA_MODE_SET"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 76
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleDevice;->setLPAmode(Ljava/lang/String;)V

    .line 82
    :cond_ca
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v3}, Lcom/sec/factory/modules/ModulePower;->gotosleep()V

    .line 83
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c

    .line 84
    :cond_d8
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "5"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 86
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModulePower;->setBrightness(I)V

    .line 87
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c

    .line 88
    :cond_fb
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "6"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 90
    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->startDisptest(II)V

    .line 91
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c

    .line 92
    :cond_11c
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "7"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_135

    .line 98
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseNA()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c

    .line 99
    :cond_135
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "8"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 105
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseNA()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c

    .line 106
    :cond_14e
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "9"

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 108
    const/4 v3, 0x4

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->startDisptest(II)V

    .line 109
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c

    .line 113
    :cond_16f
    const-string v3, "1"

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_204

    .line 114
    const-string v1, "/"

    .line 115
    .local v1, filepath:Ljava/lang/String;
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v3

    if-eqz v3, :cond_1ca

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->getStoragePath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".bmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    :cond_1ac
    :goto_1ac
    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->isExistFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1fb

    .line 124
    const/4 v3, 0x5

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->startDisptest(II)V

    .line 125
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c

    .line 118
    :cond_1ca
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/factory/modules/ModuleDevice;->getStoragePath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".bmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1ac

    .line 127
    :cond_1fb
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c

    .line 131
    .end local v1           #filepath:Ljava/lang/String;
    :cond_204
    const-string v3, "3"

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 132
    const/4 v0, -0x1

    .line 133
    .local v0, brightness:I
    const-string v3, "0"

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22b

    .line 134
    const/16 v0, 0xff

    .line 140
    :cond_21d
    :goto_21d
    sget-object v3, Lcom/sec/factory/aporiented/athandler/AtDisptest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v3, v0}, Lcom/sec/factory/modules/ModulePower;->setBrightness(I)V

    .line 141
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    goto/16 :goto_2c

    .line 135
    :cond_22b
    const-string v3, "1"

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_239

    .line 136
    const/16 v0, 0x8c

    goto :goto_21d

    .line 137
    :cond_239
    const-string v3, "2"

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21d

    .line 138
    const/16 v0, 0x1e

    goto :goto_21d

    .line 143
    .end local v0           #brightness:I
    :cond_247
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtDisptest;->responseNA()Ljava/lang/String;
    :try_end_24a
    .catchall {:try_start_e .. :try_end_24a} :catchall_24d

    move-result-object v2

    goto/16 :goto_2c

    .line 39
    :catchall_24d
    move-exception v3

    monitor-exit p0

    throw v3
.end method
