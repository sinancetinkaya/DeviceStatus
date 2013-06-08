.class public Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;
.super Lcom/sec/factory/aporiented/athandler/AtCommandHandler;
.source "AtFeliCaRfCal.java"


# static fields
.field private static isLaunchFeliCaTest:Z


# instance fields
.field private mFeliCaTestHandler:Landroid/os/Handler;

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->isLaunchFeliCaTest:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V
    .registers 4
    .parameter "context"
    .parameter "writer"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$1;-><init>(Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    const-string v0, "FLCRFCAL"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->CMD_NAME:Ljava/lang/String;

    .line 41
    const-string v0, "AtFeliCaRfCal"

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->CLASS_NAME:Ljava/lang/String;

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->NUM_ARGS:I

    .line 44
    iput-object p2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 45
    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 13
    sput-boolean p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->isLaunchFeliCaTest:Z

    return p0
.end method

.method private launchFeliCaActivity()V
    .registers 4

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.felicatest"

    const-string v2, "com.sec.android.app.felicatest.FeliCaTest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    const-string v1, "FeliCa_Start_Parameter"

    const/16 v2, 0xde

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method private launchFeliCaActivityIDM()V
    .registers 4

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.felicatest"

    const-string v2, "com.sec.android.app.felicatest.FeliCaTest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    const-string v1, "FeliCa_Start_Parameter"

    const/16 v2, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method private sendFeliCaTestCommand_cal(II)V
    .registers 7
    .parameter "cmd_id"
    .parameter "i_data"

    .prologue
    .line 224
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$2;

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$2;-><init>(Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;Landroid/os/Looper;II)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->mFeliCaTestHandler:Landroid/os/Handler;

    .line 233
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->mFeliCaTestHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 234
    return-void
.end method

.method private sendFeliCaTestCommand_end(II)V
    .registers 7
    .parameter "cmd_id"
    .parameter "i_data"

    .prologue
    .line 238
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$3;

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$3;-><init>(Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;Landroid/os/Looper;II)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->mFeliCaTestHandler:Landroid/os/Handler;

    .line 247
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->mFeliCaTestHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 248
    return-void
.end method

.method private sendFeliCaTestCommand_fail(II)V
    .registers 7
    .parameter "cmd_id"
    .parameter "i_data"

    .prologue
    .line 266
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$5;

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$5;-><init>(Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;Landroid/os/Looper;II)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->mFeliCaTestHandler:Landroid/os/Handler;

    .line 275
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->mFeliCaTestHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    return-void
.end method

.method private sendFeliCaTestCommand_pass(II)V
    .registers 7
    .parameter "cmd_id"
    .parameter "i_data"

    .prologue
    .line 252
    new-instance v0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$4;

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal$4;-><init>(Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;Landroid/os/Looper;II)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->mFeliCaTestHandler:Landroid/os/Handler;

    .line 261
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->mFeliCaTestHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    return-void
.end method


# virtual methods
.method public declared-synchronized handleCommand([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "argu"

    .prologue
    .line 133
    monitor-enter p0

    const/4 v0, 0x0

    .line 135
    .local v0, resData:Ljava/lang/String;
    :try_start_2
    array-length v1, p1

    iget v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->NUM_ARGS:I

    if-eq v1, v2, :cond_b

    .line 136
    const-string v0, "\r\n+CME Error:NA\r\n\r\nOK\r\n"
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_2d

    .line 201
    .end local v0           #resData:Ljava/lang/String;
    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    .line 138
    .restart local v0       #resData:Ljava/lang/String;
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->startReceiver()V

    .line 140
    const-string v1, "1"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 142
    sget-boolean v1, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->isLaunchFeliCaTest:Z

    if-eqz v1, :cond_30

    .line 143
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->sendFeliCaTestCommand_cal(II)V
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_2d

    goto :goto_9

    .line 133
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 145
    :cond_30
    :try_start_30
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v2, "+CME Error:NG"

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 146
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v2, "\r\n\r\nOK\r\n"

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_9

    .line 148
    :cond_3f
    const-string v1, "0"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 149
    const-string v1, "1"

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 151
    sget-boolean v1, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->isLaunchFeliCaTest:Z

    if-eqz v1, :cond_95

    .line 152
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 153
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 154
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v2, "\r\n\r\nOK\r\n"

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto/16 :goto_9

    .line 156
    :cond_95
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->launchFeliCaActivity()V

    goto/16 :goto_9

    .line 158
    :cond_9a
    const-string v1, "0"

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 160
    sget-boolean v1, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->isLaunchFeliCaTest:Z

    if-eqz v1, :cond_b0

    .line 161
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->sendFeliCaTestCommand_end(II)V

    goto/16 :goto_9

    .line 163
    :cond_b0
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->CMD_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 164
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 165
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v2, "\r\n\r\nOK\r\n"

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto/16 :goto_9

    .line 170
    :cond_ec
    const-string v1, "2"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 171
    const-string v1, "1"

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 172
    sget-boolean v1, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->isLaunchFeliCaTest:Z

    if-eqz v1, :cond_10d

    .line 173
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->sendFeliCaTestCommand_pass(II)V

    goto/16 :goto_9

    .line 175
    :cond_10d
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v2, "+CME Error:NG"

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 176
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v2, "\r\n\r\nOK\r\n"

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto/16 :goto_9

    .line 178
    :cond_11d
    const-string v1, "0"

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 179
    sget-boolean v1, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->isLaunchFeliCaTest:Z

    if-eqz v1, :cond_133

    .line 180
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->sendFeliCaTestCommand_fail(II)V

    goto/16 :goto_9

    .line 182
    :cond_133
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v2, "+CME Error:NG"

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 183
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v2, "\r\n\r\nOK\r\n"

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto/16 :goto_9

    .line 188
    :cond_143
    const-string v1, "3"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 189
    const-string v1, "0"

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 190
    sget-boolean v1, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->isLaunchFeliCaTest:Z

    if-eqz v1, :cond_16d

    .line 191
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v2, "+CME Error:NG"

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 192
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v2, "\r\n\r\nOK\r\n"

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto/16 :goto_9

    .line 194
    :cond_16d
    invoke-direct {p0}, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->launchFeliCaActivityIDM()V
    :try_end_170
    .catchall {:try_start_30 .. :try_end_170} :catchall_2d

    goto/16 :goto_9
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.felicatest.FELICA_TEST_SETNV_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "com.sec.android.app.felicatest.FELICA_TEST_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "com.sec.android.app.felicatest.FELICA_TEST_GETNV_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "com.sec.android.app.felicatest.FELICA_TEST_PASS_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "com.sec.android.app.felicatest.FELICA_TEST_FAIL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "com.sec.android.app.felicatest.FELICA_GETIDM_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method public stopReceiver()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFeliCaRfCal;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    return-void
.end method
