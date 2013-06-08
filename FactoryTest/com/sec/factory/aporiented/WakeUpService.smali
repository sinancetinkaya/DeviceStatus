.class public Lcom/sec/factory/aporiented/WakeUpService;
.super Landroid/content/BroadcastReceiver;
.source "WakeUpService.java"


# instance fields
.field private mWakeUp:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/aporiented/WakeUpService;->mWakeUp:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isAcquireWakelock"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 22
    .local v1, isAcquireWakelock:Z
    const-string v3, "WakeUpService"

    const-string v4, "onReceive"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v3, "com.sec.factory.aporiented.athandler.AtSensorHb.WakeUp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 25
    iget-object v3, p0, Lcom/sec/factory/aporiented/WakeUpService;->mWakeUp:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_76

    .line 26
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 27
    .local v2, pm:Landroid/os/PowerManager;
    const v3, 0x3000001a

    const-string v4, "WakeUpService"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/aporiented/WakeUpService;->mWakeUp:Landroid/os/PowerManager$WakeLock;

    .line 31
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_76

    .line 32
    iget-object v3, p0, Lcom/sec/factory/aporiented/WakeUpService;->mWakeUp:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_76

    .line 33
    iget-object v3, p0, Lcom/sec/factory/aporiented/WakeUpService;->mWakeUp:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 34
    const-string v3, "WakeUpService"

    const-string v4, "ACTION_WAKE_UP"

    const-string v5, "Wake up by sensorHub test cmd"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    if-nez v1, :cond_73

    .line 36
    iget-object v3, p0, Lcom/sec/factory/aporiented/WakeUpService;->mWakeUp:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 37
    const-string v3, "WakeUpService"

    const-string v4, "ACTION_WAKE_UP"

    const-string v5, "FULL WAKELOCK OFF"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_73
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/factory/aporiented/WakeUpService;->mWakeUp:Landroid/os/PowerManager$WakeLock;

    .line 45
    .end local v2           #pm:Landroid/os/PowerManager;
    :cond_76
    return-void
.end method
