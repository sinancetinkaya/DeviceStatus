.class Lcom/sec/factory/modules/SensorReadIntent$1;
.super Landroid/content/BroadcastReceiver;
.source "SensorReadIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/SensorReadIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/SensorReadIntent;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/SensorReadIntent;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadIntent$1;->this$0:Lcom/sec/factory/modules/SensorReadIntent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, action:Ljava/lang/String;
    const-string v3, "SensorReadIntent"

    const-string v4, "mBroadcastReceiver.onReceive()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v3, "com.sec.android.app.factorytest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 217
    const-string v3, "COMMAND"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, cmdData:Ljava/lang/String;
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, sensorData:Ljava/lang/String;
    const-string v3, "SensorReadIntent"

    const-string v4, "mBroadcastReceiver.onReceive()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cmdData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , sensorData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v3, "030005"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v7, :cond_6e

    const-string v3, "07000b"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v7, :cond_6e

    const-string v3, "03000b"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v7, :cond_7d

    .line 226
    :cond_6e
    const-string v3, "SensorReadIntent"

    const-string v4, "onReceive"

    const-string v5, "Grip"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadIntent$1;->this$0:Lcom/sec/factory/modules/SensorReadIntent;

    #calls: Lcom/sec/factory/modules/SensorReadIntent;->setValueGrip(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/sec/factory/modules/SensorReadIntent;->access$000(Lcom/sec/factory/modules/SensorReadIntent;Ljava/lang/String;)V

    .line 248
    .end local v1           #cmdData:Ljava/lang/String;
    .end local v2           #sensorData:Ljava/lang/String;
    :cond_7c
    :goto_7c
    return-void

    .line 230
    .restart local v1       #cmdData:Ljava/lang/String;
    .restart local v2       #sensorData:Ljava/lang/String;
    :cond_7d
    const-string v3, "07000c"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v7, :cond_7c

    .line 231
    const-string v3, "SensorReadIntent"

    const-string v4, "onReceive"

    const-string v5, "Accelerometer"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/sec/factory/modules/SensorReadIntent$1;->this$0:Lcom/sec/factory/modules/SensorReadIntent;

    #calls: Lcom/sec/factory/modules/SensorReadIntent;->setValueCPsAccelerometerData(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/sec/factory/modules/SensorReadIntent;->access$100(Lcom/sec/factory/modules/SensorReadIntent;Ljava/lang/String;)V

    goto :goto_7c
.end method
