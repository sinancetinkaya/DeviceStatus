.class public Lcom/sec/factory/aporiented/athandler/AtTemptest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtTemptest.java"


# instance fields
.field private final NEW_DM_DATA_LEN:I

.field private isMSM8960:Z

.field private isPegaPrime:Z

.field private isPegasus:Z

.field private isPegasusPrime:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 12
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->NEW_DM_DATA_LEN:I

    .line 14
    const-string v0, "MSM8960"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->isMSM8960:Z

    .line 15
    const-string v0, "PegasusPrime"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->isPegasusPrime:Z

    .line 16
    const-string v0, "PegaPrime"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->isPegaPrime:Z

    .line 17
    const-string v0, "Pegasus"

    const-string v1, "CHIPSET_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->isPegasus:Z

    .line 21
    const-string v0, "TEMPTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->CMD_NAME:Ljava/lang/String;

    .line 22
    const-string v0, "AtTemptest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->CLASS_NAME:Ljava/lang/String;

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->NUM_ARGS:I

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "argu"

    .prologue
    .line 28
    monitor-enter p0

    const/4 v3, 0x0

    .line 30
    .local v3, resData:Ljava/lang/String;
    :try_start_2
    array-length v7, p1

    iget v8, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->NUM_ARGS:I

    if-eq v7, v8, :cond_b

    .line 31
    const-string v7, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_357

    .line 160
    :goto_9
    monitor-exit p0

    return-object v7

    .line 34
    :cond_b
    const/4 v7, 0x3

    :try_start_c
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "0"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "0"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 37
    sget-object v7, Lcom/sec/factory/aporiented/athandler/AtTemptest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v7}, Lcom/sec/factory/modules/ModulePower;->readBatteryTemp()Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, value:Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {p0, v7, v5}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    const-string v7, "NEW_DM"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4c

    const-string v7, "NEW_ETS"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 47
    :cond_4c
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    .end local v5           #value:Ljava/lang/String;
    :cond_53
    :goto_53
    move-object v7, v3

    .line 160
    goto :goto_9

    .line 51
    :cond_55
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "0"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "3"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 58
    sget-object v7, Lcom/sec/factory/aporiented/athandler/AtTemptest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v7}, Lcom/sec/factory/modules/ModulePower;->readApChipTemp()Ljava/lang/String;

    move-result-object v5

    .line 60
    .restart local v5       #value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 62
    .local v6, value_int:I
    const-string v7, "MAIN_CHIP_NAME_AP_REAL"

    invoke-static {v7}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "OMAP4470"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v6, v7, 0x3e8

    .line 67
    :goto_8c
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 69
    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {p0, v7, v5}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    const-string v7, "NEW_DM"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b3

    const-string v7, "NEW_ETS"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 77
    :cond_b3
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    goto :goto_53

    .line 65
    :cond_bb
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit8 v6, v7, 0xa

    goto :goto_8c

    .line 81
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #value_int:I
    :cond_c6
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "0"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "6"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_111

    .line 85
    sget-object v7, Lcom/sec/factory/aporiented/athandler/AtTemptest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v7}, Lcom/sec/factory/modules/ModulePower;->readExternalApChipTemp()Ljava/lang/String;

    move-result-object v5

    .line 86
    .restart local v5       #value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 88
    .restart local v6       #value_int:I
    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {p0, v7, v5}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    const-string v7, "NEW_DM"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_108

    const-string v7, "NEW_ETS"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 94
    :cond_108
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_53

    .line 96
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #value_int:I
    :cond_111
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "0"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15b

    .line 100
    sget-object v7, Lcom/sec/factory/aporiented/athandler/AtTemptest;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v7}, Lcom/sec/factory/modules/ModulePower;->readBatteryTempAdc()Ljava/lang/String;

    move-result-object v5

    .line 102
    .restart local v5       #value:Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {p0, v7, v5}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    const-string v7, "NEW_DM"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_152

    const-string v7, "NEW_ETS"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 110
    :cond_152
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_53

    .line 114
    .end local v5           #value:Ljava/lang/String;
    :cond_15b
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "0"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "1"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1bb

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "0"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "2"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1bb

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "1"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1bb

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "2"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1be

    .line 118
    :cond_1bb
    const/4 v3, 0x0

    goto/16 :goto_53

    .line 119
    :cond_1be
    iget-boolean v7, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->isPegasus:Z

    if-nez v7, :cond_1ca

    iget-boolean v7, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->isPegasusPrime:Z

    if-nez v7, :cond_1ca

    iget-boolean v7, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->isPegaPrime:Z

    if-eqz v7, :cond_215

    :cond_1ca
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "4"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_212

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "5"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_212

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "7"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_215

    .line 123
    :cond_212
    const/4 v3, 0x0

    goto/16 :goto_53

    .line 124
    :cond_215
    iget-boolean v7, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->isMSM8960:Z

    if-eqz v7, :cond_2b4

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "4"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b4

    .line 126
    const-string v7, "PA0_THERMISTER_ADC"

    invoke-static {v7}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, adc:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "PA0_THERMISTER_ADC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "Raw:"

    .line 130
    .local v1, prefix:Ljava/lang/String;
    const-string v7, "Raw:"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 131
    .local v4, start:I
    const-string v7, "Raw:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, res:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "PA0_THERMISTER_ADC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", res="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {p0, v7, v2}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    const-string v7, "NEW_DM"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2ab

    const-string v7, "NEW_ETS"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 138
    :cond_2ab
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_53

    .line 140
    .end local v0           #adc:Ljava/lang/String;
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #res:Ljava/lang/String;
    .end local v4           #start:I
    :cond_2b4
    iget-boolean v7, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->isMSM8960:Z

    if-eqz v7, :cond_353

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "1"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "5"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_353

    .line 142
    const-string v7, "PA1_THERMISTER_ADC"

    invoke-static {v7}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0       #adc:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "PA1_THERMISTER_ADC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "Raw:"

    .line 146
    .restart local v1       #prefix:Ljava/lang/String;
    const-string v7, "Raw:"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 147
    .restart local v4       #start:I
    const-string v7, "Raw:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    .restart local v2       #res:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtTemptest;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "PA1_THERMISTER_ADC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", res="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {p0, v7, v2}, Lcom/sec/factory/aporiented/athandler/AtTemptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    const-string v7, "NEW_DM"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34a

    const-string v7, "NEW_ETS"

    const-string v8, "FACTORY_TEST_PROTOCOL"

    invoke-static {v8}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 154
    :cond_34a
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Lcom/sec/factory/support/FtUtil;->addDummyValue(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_53

    .line 157
    .end local v0           #adc:Ljava/lang/String;
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #res:Ljava/lang/String;
    .end local v4           #start:I
    :cond_353
    const-string v3, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_355
    .catchall {:try_start_c .. :try_end_355} :catchall_357

    goto/16 :goto_53

    .line 28
    :catchall_357
    move-exception v7

    monitor-exit p0

    throw v7
.end method
