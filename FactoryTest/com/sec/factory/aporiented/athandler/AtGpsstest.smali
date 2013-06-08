.class public Lcom/sec/factory/aporiented/athandler/AtGpsstest;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtGpsstest.java"


# instance fields
.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtGpsstest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    const-string v0, "GPSSTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->CMD_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "AtGpsstest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->CLASS_NAME:Ljava/lang/String;

    .line 38
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->NUM_ARGS:I

    .line 39
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtGpsstest$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtGpsstest;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    const-string v0, "GPSSTEST"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->CMD_NAME:Ljava/lang/String;

    .line 45
    const-string v0, "AtGpsstest"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->CLASS_NAME:Ljava/lang/String;

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->NUM_ARGS:I

    .line 47
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 48
    return-void
.end method

.method private saveGlonassMultiFCN(Ljava/lang/String;)V
    .registers 12
    .parameter "cmd_glonass_fcn"

    .prologue
    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 139
    .local v2, glonass_fcn_int:I
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "saveGlonassMultiFCN"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[#######]cmd_glonass_fcn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v3, 0x0

    .line 144
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_23
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/glonass_fcn"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2f} :catch_45
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2f} :catch_50

    .line 145
    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_2f
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 146
    .local v5, pw:Ljava/io/PrintWriter;
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 147
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 148
    const-string v6, "/data/glonass_fcn"

    const/16 v7, 0x1ff

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_43} :catch_5e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_43} :catch_5b

    move-object v3, v4

    .line 156
    .end local v4           #out:Ljava/io/FileOutputStream;
    .end local v5           #pw:Ljava/io/PrintWriter;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :goto_44
    return-void

    .line 150
    :catch_45
    move-exception v1

    .line 151
    .local v1, ex:Ljava/io/FileNotFoundException;
    :goto_46
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "saveGlonassMultiFCN"

    const-string v8, "FileNotFoundException, file was not created"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 153
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_50
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    :goto_51
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "saveGlonassMultiFCN"

    const-string v8, "IOException"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 153
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_5b
    move-exception v0

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_51

    .line 150
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_5e
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_46
.end method


# virtual methods
.method protected checkArgu([Ljava/lang/String;[Ljava/lang/String;I)Z
    .registers 10
    .parameter "argu"
    .parameter "argv"
    .parameter "checkLen"

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "checkArgu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkArgu(String argu["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], String argv["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], int checkLen("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    array-length v2, p1

    if-lt v2, p3, :cond_3d

    array-length v2, p2

    if-ge v2, p3, :cond_3e

    .line 62
    :cond_3d
    :goto_3d
    return v1

    .line 57
    :cond_3e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3f
    if-ge v0, p3, :cond_4e

    .line 58
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 62
    :cond_4e
    const/4 v1, 0x1

    goto :goto_3d
.end method

.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "argu"

    .prologue
    .line 69
    monitor-enter p0

    const/4 v1, 0x0

    .line 78
    .local v1, resData:Ljava/lang/String;
    const/4 v2, 0x3

    :try_start_3
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 79
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand()"

    const-string v4, "Command is 0, 1, 1"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->startReceiver()V

    .line 81
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleCommunication;->gpsActivation(Landroid/content/Context;I)V

    .line 82
    const-string v1, "WAIT"
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_161

    .line 131
    :goto_31
    monitor-exit p0

    return-object v1

    .line 84
    :cond_33
    const/4 v2, 0x3

    :try_start_34
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 85
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand()"

    const-string v4, "Command is 0, 1, 2"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->startReceiver()V

    .line 87
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleCommunication;->gpsActivation(Landroid/content/Context;I)V

    .line 88
    const-string v1, "WAIT"

    goto :goto_31

    .line 89
    :cond_63
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 90
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "handleCommand()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GLONASS command - input Argument is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->saveGlonassMultiFCN(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->startReceiver()V

    .line 94
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/factory/modules/ModuleCommunication;->gpsActivation(Landroid/content/Context;I)V

    .line 95
    const-string v1, "WAIT"

    goto :goto_31

    .line 98
    :cond_ad
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_f8

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_f8

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 107
    :cond_f8
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommunication;->gpsDeactivation()V

    .line 109
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 112
    :cond_106
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_138

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->checkArgu([Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 119
    :cond_138
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->setResultType(I)V

    .line 120
    sget-object v2, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    invoke-virtual {v2}, Lcom/sec/factory/modules/ModuleCommunication;->gpsReadCN()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, cn:Ljava/lang/String;
    if-eqz v0, :cond_14c

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 122
    :cond_14c
    const-string v2, "NG"

    invoke-virtual {p0, v2}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->responseNG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 124
    :cond_154
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2, v0}, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_31

    .line 128
    .end local v0           #cn:Ljava/lang/String;
    :cond_15d
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_15f
    .catchall {:try_start_34 .. :try_end_15f} :catchall_161

    goto/16 :goto_31

    .line 69
    :catchall_161
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.samsungtest.GPS_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "com.android.samsungtest.GPS_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtGpsstest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    return-void
.end method
