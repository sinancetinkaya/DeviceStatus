.class public Lcom/sec/factory/aporiented/athandler/AtFaildump;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFaildump.java"


# instance fields
.field private PastMainCMD:Ljava/lang/String;

.field private currentStage:Ljava/lang/String;

.field private mDestFilePath:Ljava/lang/String;

.field private mDumpFileName:Ljava/lang/String;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field public nFailDumpResult:I

.field private sysdump_time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v0, "00"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->PastMainCMD:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->mDestFilePath:Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->nFailDumpResult:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->mDumpFileName:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtFaildump$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtFaildump$2;-><init>(Lcom/sec/factory/aporiented/athandler/AtFaildump;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    const-string v0, "FAILDUMP"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->CMD_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "AtFaildump"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->CLASS_NAME:Ljava/lang/String;

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->NUM_ARGS:I

    .line 36
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v0, "00"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->PastMainCMD:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->mDestFilePath:Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->nFailDumpResult:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->mDumpFileName:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtFaildump$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtFaildump$2;-><init>(Lcom/sec/factory/aporiented/athandler/AtFaildump;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    const-string v0, "FAILDUMP"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->CMD_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "AtFaildump"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->CLASS_NAME:Ljava/lang/String;

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->NUM_ARGS:I

    .line 28
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    .line 29
    return-void
.end method

.method private generateAPDumpFileName()V
    .registers 11

    .prologue
    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    .local v0, cal:Ljava/util/Calendar;
    const-string v6, "ril.factory_mode"

    const-string v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->currentStage:Ljava/lang/String;

    .line 91
    const-string v6, "ril.factory_cmd"

    const-string v7, "00"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->PastMainCMD:Ljava/lang/String;

    .line 92
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "generateAPDumpFileName"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFailDump() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->currentStage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, month:Ljava/lang/String;
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, day:Ljava/lang/String;
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, hour:Ljava/lang/String;
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, min:Ljava/lang/String;
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, sec:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->sysdump_time:Ljava/lang/String;

    .line 101
    const-string v6, "/data/log/"

    iput-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->mDestFilePath:Ljava/lang/String;

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "factory_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->currentStage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->PastMainCMD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_dumpState_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->sysdump_time:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->mDumpFileName:Ljava/lang/String;

    .line 104
    iget-object v6, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "generateAPDumpFileName"

    iget-object v8, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->mDumpFileName:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private getAPCPDump()V
    .registers 5

    .prologue
    .line 108
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getAPCPDump"

    const-string v3, "..."

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFaildump;->startReceiver()V

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.sec.FAILDUMP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FILENAME"

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->mDumpFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 63
    monitor-enter p0

    const/4 v0, 0x0

    .line 65
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 66
    const-string v1, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_32

    .line 84
    :goto_9
    monitor-exit p0

    return-object v1

    .line 69
    :cond_b
    const/4 v1, 0x2

    :try_start_c
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFaildump;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 70
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtFaildump;->generateAPDumpFileName()V

    .line 71
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFaildump;->getCmdType()I

    move-result v1

    if-nez v1, :cond_2e

    .line 73
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtFaildump;->getAPCPDump()V

    .line 74
    const-string v0, "WAIT"

    :cond_2c
    :goto_2c
    move-object v1, v0

    .line 84
    goto :goto_9

    .line 76
    :cond_2e
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtFaildump;->getAPCPDump()V
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_32

    goto :goto_2c

    .line 63
    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1

    .line 78
    :cond_35
    const/4 v1, 0x2

    :try_start_36
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/factory/aporiented/athandler/AtFaildump;->checkArgu([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 81
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_32

    goto :goto_2c
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.sec.FAILDUMP.DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    return-void
.end method
