.class public abstract Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.super Ljava/lang/Object;
.source "AtCommandHandler.java"


# static fields
.field public static N_RESULT:I

.field protected static mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

.field protected static mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

.field protected static mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

.field protected static mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

.field protected static mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

.field protected static mModulePower:Lcom/sec/factory/modules/ModulePower;

.field protected static mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

.field protected static mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;


# instance fields
.field protected CLASS_NAME:Ljava/lang/String;

.field protected CMD_NAME:Ljava/lang/String;

.field public CMD_TYPE:I

.field protected final DELIMITER:Ljava/lang/String;

.field public NUM_ARGS:I

.field protected context:Landroid/content/Context;

.field public mResult:I

.field protected writer:Lcom/sec/factory/aporiented/ResponseWriter;

.field protected writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->N_RESULT:I

    .line 62
    sput-object v1, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    .line 63
    sput-object v1, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    .line 64
    sput-object v1, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    .line 65
    sput-object v1, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    .line 66
    sput-object v1, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    .line 67
    sput-object v1, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    .line 68
    sput-object v1, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    .line 69
    sput-object v1, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->CMD_TYPE:I

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mResult:I

    .line 53
    const-string v0, ","

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->DELIMITER:Ljava/lang/String;

    .line 55
    const-string v0, "CMD_NAME"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->CMD_NAME:Ljava/lang/String;

    .line 56
    const-string v0, "AtCommandHandler"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->CLASS_NAME:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->NUM_ARGS:I

    .line 83
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->context:Landroid/content/Context;

    .line 84
    iput-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 85
    iput-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 86
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    if-nez v0, :cond_70

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    :goto_27
    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    .line 87
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    if-nez v0, :cond_73

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    :goto_31
    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    .line 88
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    if-nez v0, :cond_76

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleCommunication;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommunication;

    move-result-object v0

    :goto_3b
    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    .line 90
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    if-nez v0, :cond_79

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    :goto_45
    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    .line 91
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    if-nez v0, :cond_7c

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleDFT;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDFT;

    move-result-object v0

    :goto_4f
    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    .line 92
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    if-nez v0, :cond_7f

    invoke-static {p1}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    :goto_59
    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    .line 93
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    if-nez v0, :cond_82

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleSensor;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleSensor;

    move-result-object v0

    :goto_63
    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    .line 94
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    if-nez v0, :cond_85

    invoke-static {p1}, Lcom/sec/factory/modules/ModuleTouchScreen;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleTouchScreen;

    move-result-object v0

    :goto_6d
    sput-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    .line 96
    return-void

    .line 86
    :cond_70
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleAudio:Lcom/sec/factory/modules/ModuleAudio;

    goto :goto_27

    .line 87
    :cond_73
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleCommon:Lcom/sec/factory/modules/ModuleCommon;

    goto :goto_31

    .line 88
    :cond_76
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleCommunication:Lcom/sec/factory/modules/ModuleCommunication;

    goto :goto_3b

    .line 90
    :cond_79
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;

    goto :goto_45

    .line 91
    :cond_7c
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleDFT:Lcom/sec/factory/modules/ModuleDFT;

    goto :goto_4f

    .line 92
    :cond_7f
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    goto :goto_59

    .line 93
    :cond_82
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;

    goto :goto_63

    .line 94
    :cond_85
    sget-object v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModuleTouchScreen:Lcom/sec/factory/modules/ModuleTouchScreen;

    goto :goto_6d
.end method


# virtual methods
.method protected checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .parameter "argu"
    .parameter "argv"

    .prologue
    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_13

    .line 124
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 125
    const/4 v1, 0x0

    .line 128
    :goto_f
    return v1

    .line 123
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_13
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public getCmdType()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->CMD_TYPE:I

    return v0
.end method

.method public getResultType()I
    .registers 2

    .prologue
    .line 119
    sget v0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->N_RESULT:I

    return v0
.end method

.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "argu"

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method protected readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "filepath"

    .prologue
    .line 190
    const-string v4, ""

    .line 191
    .local v4, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 193
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1fa0

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_57
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_2a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_f} :catch_48

    .line 194
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    if-eqz v1, :cond_19

    .line 195
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_63
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_18} :catch_6c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_69
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_18} :catch_66

    move-result-object v4

    .line 204
    :cond_19
    if-eqz v1, :cond_6f

    .line 206
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_24

    move-object v0, v1

    .line 212
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_1f
    :goto_1f
    if-nez v4, :cond_23

    .line 213
    const-string v4, ""

    .line 215
    .end local v4           #result:Ljava/lang/String;
    :cond_23
    return-object v4

    .line 207
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v4       #result:Ljava/lang/String;
    :catch_24
    move-exception v2

    .line 208
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 209
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f

    .line 197
    .end local v2           #e:Ljava/io/IOException;
    :catch_2a
    move-exception v3

    .line 198
    .local v3, ex:Ljava/io/FileNotFoundException;
    :goto_2b
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_57

    .line 204
    if-eqz v0, :cond_1f

    .line 206
    :try_start_30
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_1f

    .line 207
    :catch_34
    move-exception v2

    .line 208
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 199
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_39
    move-exception v2

    .line 200
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3a
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_57

    .line 204
    if-eqz v0, :cond_1f

    .line 206
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_1f

    .line 207
    :catch_43
    move-exception v2

    .line 208
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 201
    .end local v2           #e:Ljava/io/IOException;
    :catch_48
    move-exception v2

    .line 202
    .local v2, e:Ljava/lang/NullPointerException;
    :goto_49
    :try_start_49
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_57

    .line 204
    if-eqz v0, :cond_1f

    .line 206
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_1f

    .line 207
    :catch_52
    move-exception v2

    .line 208
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 204
    .end local v2           #e:Ljava/io/IOException;
    :catchall_57
    move-exception v5

    :goto_58
    if-eqz v0, :cond_5d

    .line 206
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 209
    :cond_5d
    :goto_5d
    throw v5

    .line 207
    :catch_5e
    move-exception v2

    .line 208
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 204
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_63
    move-exception v5

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_58

    .line 201
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_66
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_49

    .line 199
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_69
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3a

    .line 197
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_6c
    move-exception v3

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2b

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_6f
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f
.end method

.method protected responseNA()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->getCmdType()I

    move-result v0

    if-nez v0, :cond_c

    .line 183
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->setResultType(I)V

    .line 184
    const/4 v0, 0x0

    .line 186
    :goto_b
    return-object v0

    :cond_c
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"

    goto :goto_b
.end method

.method protected responseNG(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "arg"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->getCmdType()I

    move-result v0

    if-nez v0, :cond_d

    .line 167
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->setResultType(I)V

    .line 168
    const-string v0, "NG"

    .line 170
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",NG\r\n\r\nOK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method protected responseOK(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "arg"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->getCmdType()I

    move-result v0

    if-nez v0, :cond_d

    .line 175
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->setResultType(I)V

    .line 176
    const-string v0, "OK"

    .line 178
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OK\r\n\r\nOK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method protected responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "arg"
    .parameter "input"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->getCmdType()I

    move-result v0

    if-nez v0, :cond_2f

    .line 157
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->setResultType(I)V

    .line 158
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "responseString"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local p2
    :goto_2e
    return-object p2

    .restart local p2
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n\r\nOK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2e
.end method

.method protected responseStringCMDNG()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->getCmdType()I

    move-result v0

    if-nez v0, :cond_c

    .line 133
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->setResultType(I)V

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_b
    return-object v0

    :cond_c
    const-string v0, "\r\n+CME Error:NG\r\n\r\nOK\r\n"

    goto :goto_b
.end method

.method protected responseStringNoArg(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->getCmdType()I

    move-result v0

    if-nez v0, :cond_c

    .line 149
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->setResultType(I)V

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n\r\nOK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method protected responseStringNoArgAndNoNewLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->getCmdType()I

    move-result v0

    if-nez v0, :cond_c

    .line 141
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->setResultType(I)V

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n\r\nOK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public setCmdType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 103
    iput p1, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->CMD_TYPE:I

    .line 104
    return-void
.end method

.method public setResultType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 115
    sput p1, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->N_RESULT:I

    .line 116
    return-void
.end method

.method protected startReceiver()V
    .registers 1

    .prologue
    .line 72
    return-void
.end method

.method protected stopReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3
    .parameter "mReceiver"

    .prologue
    .line 75
    if-eqz p1, :cond_7

    .line 76
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    :cond_7
    return-void
.end method

.method protected writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "filepath"
    .parameter "value"

    .prologue
    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, fw:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_29
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_19

    .line 222
    .end local v1           #fw:Ljava/io/FileWriter;
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_6
    invoke-virtual {v2, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_35
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_38

    .line 228
    if-eqz v2, :cond_11

    .line 230
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_14

    .line 236
    :cond_11
    :goto_11
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    :cond_13
    :goto_13
    return v3

    .line 231
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catch_14
    move-exception v0

    .line 232
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 224
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    :catch_19
    move-exception v0

    .line 225
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1a
    :try_start_1a
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_29

    .line 226
    const/4 v3, 0x0

    .line 228
    if-eqz v1, :cond_13

    .line 230
    :try_start_20
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_13

    .line 231
    :catch_24
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 228
    .end local v0           #e:Ljava/io/IOException;
    :catchall_29
    move-exception v3

    :goto_2a
    if-eqz v1, :cond_2f

    .line 230
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 233
    :cond_2f
    :goto_2f
    throw v3

    .line 231
    :catch_30
    move-exception v0

    .line 232
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    .line 228
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catchall_35
    move-exception v3

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_2a

    .line 224
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catch_38
    move-exception v0

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_1a
.end method
