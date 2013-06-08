.class public Lcom/sec/factory/aporiented/athandler/AtTspptest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtTspptest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;
    }
.end annotation


# instance fields
.field private mTspManufacture:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "TSPPTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CMD_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "AtTspptest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->NUM_ARGS:I

    .line 21
    const-string v0, "TSP_MANUFACTURE"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "argu"

    .prologue
    .line 37
    monitor-enter p0

    const/4 v6, 0x0

    .line 38
    .local v6, resData:Ljava/lang/String;
    :try_start_2
    const-string v7, ""

    .line 39
    .local v7, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 41
    .local v2, X_AXIS:I
    array-length v10, p1

    iget v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->NUM_ARGS:I

    if-eq v10, v11, :cond_e

    .line 42
    const-string v10, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_13a

    .line 327
    :goto_c
    monitor-exit p0

    return-object v10

    .line 46
    :cond_e
    const/4 v10, 0x3

    :try_start_f
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

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 47
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "module_off_master"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    const-string v10, "NG"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 49
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3d
    move-object v10, v6

    .line 327
    goto :goto_c

    .line 51
    :cond_3f
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3d

    .line 55
    :cond_47
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

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7f

    .line 56
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "module_on_master"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    const-string v10, "NG"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    .line 58
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3d

    .line 60
    :cond_77
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3d

    .line 64
    :cond_7f
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "2"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b7

    .line 65
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "module_off_slave"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    const-string v10, "NG"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_af

    .line 67
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3d

    .line 69
    :cond_af
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3d

    .line 73
    :cond_b7
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f1

    .line 74
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "module_on_slave"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    const-string v10, "NG"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e8

    .line 76
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 78
    :cond_e8
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 82
    :cond_f1
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "4"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19d

    .line 83
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v5, ref_value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;>;"
    const-string v10, "MELFAS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13d

    .line 88
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "run_cm_delta_read"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    :cond_120
    :goto_120
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v10, ","

    invoke-direct {v8, v7, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v8, st:Ljava/util/StringTokenizer;
    :goto_127
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_150

    .line 95
    new-instance v10, Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;-><init>(Lcom/sec/factory/aporiented/athandler/AtTspptest;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_139
    .catchall {:try_start_f .. :try_end_139} :catchall_13a

    goto :goto_127

    .line 37
    .end local v2           #X_AXIS:I
    .end local v5           #ref_value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;>;"
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #st:Ljava/util/StringTokenizer;
    :catchall_13a
    move-exception v10

    monitor-exit p0

    throw v10

    .line 89
    .restart local v2       #X_AXIS:I
    .restart local v5       #ref_value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;>;"
    .restart local v7       #result:Ljava/lang/String;
    :cond_13d
    :try_start_13d
    const-string v10, "SYNAPTICS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_120

    .line 90
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "run_rawcap_read"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_120

    .line 98
    .restart local v8       #st:Ljava/util/StringTokenizer;
    :cond_150
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;

    invoke-virtual {v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;->get_string()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 99
    .local v3, connection_value:I
    const-string v10, "TSP_CONNECTION_MIN"

    invoke-static {v10}, Lcom/sec/factory/support/Support$Spec;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 100
    .local v9, tspconnection_spec:I
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "connection_value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "tspconnection_spec : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-le v3, v9, :cond_194

    .line 104
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 106
    :cond_194
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 110
    .end local v3           #connection_value:I
    .end local v5           #ref_value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/factory/aporiented/athandler/AtTspptest$Ref_value;>;"
    .end local v8           #st:Ljava/util/StringTokenizer;
    .end local v9           #tspconnection_spec:I
    :cond_19d
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

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e5

    .line 111
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_chip_vendor"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v12, "get_chip_name"

    invoke-virtual {v11, v12}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 113
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10, v7}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 116
    :cond_1e5
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "1"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1f5
    .catchall {:try_start_13d .. :try_end_1f5} :catchall_13a

    move-result v10

    if-eqz v10, :cond_31b

    .line 121
    const/4 v10, 0x2

    :try_start_1f9
    aget-object v10, p1, v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_200
    .catchall {:try_start_1f9 .. :try_end_200} :catchall_13a
    .catch Ljava/lang/NumberFormatException; {:try_start_1f9 .. :try_end_200} :catch_22f

    move-result v2

    .line 122
    add-int/lit8 v2, v2, -0x1

    .line 128
    :goto_203
    :try_start_203
    const-string v10, "MELFAS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_252

    .line 129
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "READ 1 : CM_ABS_RUN"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "run_cm_abs_read"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 147
    :cond_21e
    :goto_21e
    const-string v10, "NG"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29d

    .line 148
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 123
    :catch_22f
    move-exception v4

    .line 124
    .local v4, e:Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error - parameter X_AXIS : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_203

    .line 131
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_252
    const-string v10, "SYNAPTICS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_281

    .line 133
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_x_num"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, MAX_TSP_X:I
    if-ltz v2, :cond_276

    if-ge v2, v0, :cond_276

    const/4 v10, 0x1

    :goto_26d
    if-nez v10, :cond_278

    .line 137
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNA()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    .line 138
    goto/16 :goto_c

    .line 136
    :cond_276
    const/4 v10, 0x0

    goto :goto_26d

    .line 141
    :cond_278
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "run_rawcap_read"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    goto :goto_21e

    .end local v0           #MAX_TSP_X:I
    :cond_281
    const-string v10, "STM"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21e

    .line 143
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "READ 1 : RUN_REFERENCE"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "run_reference_read"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_21e

    .line 150
    :cond_29d
    const-string v10, "MELFAS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c9

    .line 151
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "READ 1 : CM_ABS_READ"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_cm_abs"

    invoke-virtual {v10, v11, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPReadTest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 162
    :cond_2b8
    :goto_2b8
    const-string v10, "NG"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f8

    .line 163
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 154
    :cond_2c9
    const-string v10, "SYNAPTICS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2dc

    .line 155
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_rawcap"

    invoke-virtual {v10, v11, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPReadTest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2b8

    .line 157
    :cond_2dc
    const-string v10, "STM"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b8

    .line 158
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "READ 1 : GET_REFERENCE"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_reference"

    invoke-virtual {v10, v11, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPReadTest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2b8

    .line 165
    :cond_2f8
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "READ 1 : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10, v7}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 171
    :cond_31b
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "2"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_32b
    .catchall {:try_start_203 .. :try_end_32b} :catchall_13a

    move-result v10

    if-eqz v10, :cond_423

    .line 174
    const/4 v10, 0x2

    :try_start_32f
    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_334
    .catchall {:try_start_32f .. :try_end_334} :catchall_13a
    .catch Ljava/lang/NumberFormatException; {:try_start_32f .. :try_end_334} :catch_35a

    move-result v2

    .line 175
    add-int/lit8 v2, v2, -0x1

    .line 181
    :goto_337
    :try_start_337
    const-string v10, "MELFAS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37d

    .line 182
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "run_cm_delta_read"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 199
    :cond_349
    :goto_349
    const-string v10, "NG"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c8

    .line 200
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 176
    :catch_35a
    move-exception v4

    .line 177
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error - parameter X_AXIS : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_337

    .line 183
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_37d
    const-string v10, "SYNAPTICS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3ac

    .line 185
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_y_num"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 188
    .local v1, MAX_TSP_Y:I
    if-ltz v2, :cond_3a1

    if-ge v2, v1, :cond_3a1

    const/4 v10, 0x1

    :goto_398
    if-nez v10, :cond_3a3

    .line 189
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNA()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    .line 190
    goto/16 :goto_c

    .line 188
    :cond_3a1
    const/4 v10, 0x0

    goto :goto_398

    .line 193
    :cond_3a3
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "run_rx_to_rx_read"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 194
    goto :goto_349

    .end local v1           #MAX_TSP_Y:I
    :cond_3ac
    const-string v10, "STM"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_349

    .line 195
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "READ 1 : RUN_RAW"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "run_raw_read"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_349

    .line 202
    :cond_3c8
    const-string v10, "MELFAS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3eb

    .line 203
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_cm_delta"

    invoke-virtual {v10, v11, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPReadTest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 213
    :cond_3da
    :goto_3da
    const-string v10, "NG"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_41a

    .line 214
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 205
    :cond_3eb
    const-string v10, "SYNAPTICS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3fe

    .line 206
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_rx_to_rx"

    invoke-virtual {v10, v11, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPReadTest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3da

    .line 208
    :cond_3fe
    const-string v10, "STM"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3da

    .line 209
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "READ 1 : GET_RAW"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_raw"

    invoke-virtual {v10, v11, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPReadTest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3da

    .line 216
    :cond_41a
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10, v7}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 221
    :cond_423
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "3"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_433
    .catchall {:try_start_337 .. :try_end_433} :catchall_13a

    move-result v10

    if-eqz v10, :cond_53b

    .line 224
    const/4 v10, 0x2

    :try_start_437
    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_43c
    .catchall {:try_start_437 .. :try_end_43c} :catchall_13a
    .catch Ljava/lang/NumberFormatException; {:try_start_437 .. :try_end_43c} :catch_462

    move-result v2

    .line 225
    add-int/lit8 v2, v2, -0x1

    .line 231
    :goto_43f
    :try_start_43f
    const-string v10, "MELFAS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_485

    .line 232
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "run_intensity_read"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 249
    :cond_451
    :goto_451
    const-string v10, "NG"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d0

    .line 250
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 226
    :catch_462
    move-exception v4

    .line 227
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error - parameter X_AXIS : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_43f

    .line 233
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_485
    const-string v10, "SYNAPTICS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b4

    .line 235
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_x_num"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 238
    .restart local v0       #MAX_TSP_X:I
    if-ltz v2, :cond_4a9

    if-ge v2, v0, :cond_4a9

    const/4 v10, 0x1

    :goto_4a0
    if-nez v10, :cond_4ab

    .line 239
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNA()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    .line 240
    goto/16 :goto_c

    .line 238
    :cond_4a9
    const/4 v10, 0x0

    goto :goto_4a0

    .line 243
    :cond_4ab
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "run_tx_to_tx_read"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 244
    goto :goto_451

    .end local v0           #MAX_TSP_X:I
    :cond_4b4
    const-string v10, "STM"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_451

    .line 245
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "READ 1 : RUN_DELTA"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "run_delta_read"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_451

    .line 252
    :cond_4d0
    const-string v10, "MELFAS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_50e

    .line 253
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_intensity"

    invoke-virtual {v10, v11, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPReadTest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 262
    :cond_4e2
    :goto_4e2
    const-string v10, "STM"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4fd

    .line 263
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    const-string v12, "READ 1 : GET_DELTA"

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_delta"

    invoke-virtual {v10, v11, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPReadTest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 267
    :cond_4fd
    const-string v10, "NG"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_532

    .line 268
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 255
    :cond_50e
    const-string v10, "SYNAPTICS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e2

    .line 259
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get_tx_to_tx,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4e2

    .line 270
    :cond_532
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10, v7}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 275
    :cond_53b
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "4"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_54b
    .catchall {:try_start_43f .. :try_end_54b} :catchall_13a

    move-result v10

    if-eqz v10, :cond_617

    .line 278
    const/4 v10, 0x2

    :try_start_54f
    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_554
    .catchall {:try_start_54f .. :try_end_554} :catchall_13a
    .catch Ljava/lang/NumberFormatException; {:try_start_54f .. :try_end_554} :catch_56f

    move-result v2

    .line 279
    add-int/lit8 v2, v2, -0x1

    .line 285
    :goto_557
    :try_start_557
    const-string v10, "MELFAS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_592

    .line 286
    const-string v7, "NA"

    .line 300
    :cond_563
    :goto_563
    const-string v10, "NA"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5c1

    .line 301
    const-string v6, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto/16 :goto_3d

    .line 280
    :catch_56f
    move-exception v4

    .line 281
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->CLASS_NAME:Ljava/lang/String;

    const-string v11, "handleCommand"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error - parameter X_AXIS : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_557

    .line 287
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_592
    const-string v10, "SYNAPTICS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_563

    .line 289
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_x_num"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 292
    .restart local v0       #MAX_TSP_X:I
    if-ltz v2, :cond_5b6

    if-ge v2, v0, :cond_5b6

    const/4 v10, 0x1

    :goto_5ad
    if-nez v10, :cond_5b8

    .line 293
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNA()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    .line 294
    goto/16 :goto_c

    .line 292
    :cond_5b6
    const/4 v10, 0x0

    goto :goto_5ad

    .line 297
    :cond_5b8
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "run_tx_to_gnd_read"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_563

    .line 302
    .end local v0           #MAX_TSP_X:I
    :cond_5c1
    const-string v10, "NG"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5d2

    .line 303
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 305
    :cond_5d2
    const-string v10, "SYNAPTICS"

    iget-object v11, p0, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mTspManufacture:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5fd

    .line 306
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_tx_to_gnd"

    invoke-virtual {v10, v11, v2}, Lcom/sec/factory/modules/ModuleDevice;->startTSPReadTest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 308
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get_tx_to_gnd,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 311
    :cond_5fd
    const-string v10, "NG"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_60e

    .line 312
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 314
    :cond_60e
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10, v7}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 319
    :cond_617
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "5"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "0"

    aput-object v12, v10, v11

    invoke-virtual {p0, p1, v10}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_65f

    .line 320
    sget-object v10, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v11, "get_x_num"

    invoke-virtual {v10, v11}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/sec/factory/aporiented/athandler/AtTspptest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    const-string v12, "get_y_num"

    invoke-virtual {v11, v12}, Lcom/sec/factory/modules/ModuleDevice;->startTSPTest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 322
    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-virtual {p0, v10, v7}, Lcom/sec/factory/aporiented/athandler/AtTspptest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3d

    .line 324
    :cond_65f
    const-string v6, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_661
    .catchall {:try_start_557 .. :try_end_661} :catchall_13a

    goto/16 :goto_3d
.end method
