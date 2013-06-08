.class public Lcom/sec/factory/aporiented/athandler/AtCorectrl;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtCorectrl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "CORECTRL"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->CMD_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "AtCorectrl"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->CLASS_NAME:Ljava/lang/String;

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->NUM_ARGS:I

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 25
    monitor-enter p0

    const/4 v0, 0x0

    .line 27
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 28
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_216

    .line 130
    :goto_9
    monitor-exit p0

    return-object v1

    .line 34
    :cond_b
    const/4 v1, 0x3

    :try_start_c
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 35
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->readCpuOnline()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 36
    const-string v1, "HOT_PLUG_LOCK"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 37
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "4"

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_44
    move-object v1, v0

    .line 130
    goto :goto_9

    .line 39
    :cond_46
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 41
    :cond_4e
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->readCpuOnline()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->readCpuOnline()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0-1,3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->readCpuOnline()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0,2-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->readCpuOnline()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 45
    :cond_86
    const-string v1, "HOT_PLUG_LOCK"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 46
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "3"

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 48
    :cond_9a
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 50
    :cond_a2
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->readCpuOnline()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->readCpuOnline()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0,2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->readCpuOnline()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0,3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 53
    :cond_cc
    const-string v1, "HOT_PLUG_LOCK"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 54
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "2"

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 56
    :cond_e1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 66
    :cond_ea
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->readCpuOnline()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 67
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 69
    :cond_103
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 76
    :cond_10c
    const/4 v1, 0x3

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

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_140

    .line 77
    const-string v1, "HOT_PLUG_LOCK"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 78
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 80
    :cond_137
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 87
    :cond_140
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_174

    .line 88
    const-string v1, "HOT_PLUG_LOCK"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 89
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 91
    :cond_16b
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 98
    :cond_174
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    .line 99
    const-string v1, "HOT_PLUG_LOCK"

    const-string v2, "2"

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 100
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 102
    :cond_19f
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 109
    :cond_1a8
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "3"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1dc

    .line 110
    const-string v1, "HOT_PLUG_LOCK"

    const-string v2, "3"

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    .line 111
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 113
    :cond_1d3
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 120
    :cond_1dc
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "4"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_210

    .line 121
    const-string v1, "HOT_PLUG_LOCK"

    const-string v2, "4"

    invoke-static {v1, v2}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_207

    .line 122
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 124
    :cond_207
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 127
    :cond_210
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCorectrl;->responseNA()Ljava/lang/String;
    :try_end_213
    .catchall {:try_start_c .. :try_end_213} :catchall_216

    move-result-object v0

    goto/16 :goto_44

    .line 25
    :catchall_216
    move-exception v1

    monitor-exit p0

    throw v1
.end method
