.class public Lcom/sec/factory/modules/ModulePower;
.super Lcom/sec/factory/modules/ModuleObject;
.source "ModulePower.java"


# static fields
.field private static mInstance:Lcom/sec/factory/modules/ModulePower;


# instance fields
.field private mMediaScanWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/modules/ModulePower;->mInstance:Lcom/sec/factory/modules/ModulePower;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 25
    const-string v0, "ModulePower"

    invoke-direct {p0, p1, v0}, Lcom/sec/factory/modules/ModuleObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    iput-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    iput-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 63
    iput-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mMediaScanWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 26
    iget-object v0, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ModulePower"

    const-string v2, "Create ModulePower"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;
    .registers 2
    .parameter "context"

    .prologue
    .line 30
    sget-object v0, Lcom/sec/factory/modules/ModulePower;->mInstance:Lcom/sec/factory/modules/ModulePower;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/sec/factory/modules/ModulePower;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModulePower;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/factory/modules/ModulePower;->mInstance:Lcom/sec/factory/modules/ModulePower;

    .line 33
    :cond_b
    sget-object v0, Lcom/sec/factory/modules/ModulePower;->mInstance:Lcom/sec/factory/modules/ModulePower;

    return-object v0
.end method


# virtual methods
.method public doMediaScanWakeLock(Z)V
    .registers 7
    .parameter "wake"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "doMediaScanWakeLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wake="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5e

    .line 117
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mMediaScanWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_47

    .line 118
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModulePower;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 119
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Media"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mMediaScanWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 123
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_47
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mMediaScanWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 124
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mMediaScanWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 125
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "doMediaScanWakeLock"

    const-string v3, "FULL WAKELOCK ON"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_5d
    :goto_5d
    return-void

    .line 128
    :cond_5e
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mMediaScanWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5d

    .line 129
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mMediaScanWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 130
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mMediaScanWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 131
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "doMediaScanWakeLock"

    const-string v3, "FULL WAKELOCK OFF"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mMediaScanWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_5d
.end method

.method public doPartialWakeLock(Z)V
    .registers 8
    .parameter "wake"

    .prologue
    const/4 v5, 0x1

    .line 139
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "doPartialWakeLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wake="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-ne p1, v5, :cond_5b

    .line 141
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_44

    .line 142
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModulePower;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 143
    .local v0, pm:Landroid/os/PowerManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Partial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 146
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_44
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 147
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 148
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "doPartialWakeLock"

    const-string v3, "PARTIAL WAKELOCK ON"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_5a
    :goto_5a
    return-void

    .line 151
    :cond_5b
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5a

    .line 152
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 153
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 154
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "doPartialWakeLock"

    const-string v3, "PARTIAL WAKELOCK OFF"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_5a
.end method

.method public doWakeLock(Z)V
    .registers 7
    .parameter "wake"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "doWakeLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wake="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4b

    .line 93
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_34

    .line 94
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModulePower;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 95
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    iget-object v2, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 99
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_34
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 100
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 101
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "doWakeLock"

    const-string v3, "FULL WAKELOCK ON"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_4a
    :goto_4a
    return-void

    .line 104
    :cond_4b
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_4a

    .line 105
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 106
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 107
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "doWakeLock"

    const-string v3, "FULL WAKELOCK OFF"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/factory/modules/ModulePower;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_4a
.end method

.method public getBrightness()I
    .registers 6

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModulePower;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, brightness:I
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getBrightness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return v0
.end method

.method public getScreenBrightnessMode()I
    .registers 6

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModulePower;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 271
    .local v0, mode:I
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getScreenBrightnessMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return v0
.end method

.method public getTouchLedTime()I
    .registers 4

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModulePower;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "button_key_light"

    const/16 v2, 0x5dc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public gotosleep()V
    .registers 5

    .prologue
    .line 85
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "goToSleep"

    const-string v3, "Power Sleep"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModulePower;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 87
    .local v0, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 88
    return-void
.end method

.method public isBatteryAuthPass()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 415
    const-string v1, "BATTERY_AUTH"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isHeldWakeLock()Z
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/factory/modules/ModulePower;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_6

    .line 163
    const/4 v0, 0x0

    .line 165
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/factory/modules/ModulePower;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    goto :goto_5
.end method

.method public isScreenOn()Z
    .registers 3

    .prologue
    .line 276
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModulePower;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 277
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method public readApChipTemp()Ljava/lang/String;
    .registers 6

    .prologue
    .line 374
    const-string v1, "APCHIP_TEMP_ADC"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, adc:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readApChipTemp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-object v0
.end method

.method public readBatteryAdcCal()Ljava/lang/String;
    .registers 6

    .prologue
    .line 390
    const-string v1, "BATTERY_VOLT_ADC_CAL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, adc_cal:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readBatteryAdcCal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adc_cal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-object v0
.end method

.method public readBatteryCal()Ljava/lang/String;
    .registers 6

    .prologue
    .line 401
    const-string v1, "BATTERY_VOLT_ADC_CAL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->isExistFileID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 402
    const-string v1, "BATTERY_VOLT_ADC_CAL"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, cal:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readBatteryCal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v0           #cal:Ljava/lang/String;
    :goto_28
    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public readBatteryTemp()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 322
    const-string v3, "BATTERY_TEMP"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, temp:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "readBatteryTemp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sysfs temp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_5d

    .line 327
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 328
    .local v1, decimal:I
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, data:I
    const/4 v3, 0x5

    if-lt v1, v3, :cond_3e

    .line 330
    add-int/lit8 v0, v0, 0x1

    .line 334
    .end local v1           #decimal:I
    :cond_3e
    :goto_3e
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    iget-object v3, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "readBatteryTemp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return temp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-object v2

    .line 332
    .end local v0           #data:I
    :cond_5d
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #data:I
    goto :goto_3e
.end method

.method public readBatteryTempAdc()Ljava/lang/String;
    .registers 6

    .prologue
    .line 350
    const-string v1, "BATTERY_TEMP_ADC"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, adc:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readBatteryTempAdc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-object v0
.end method

.method public readBatteryVoltage()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x3

    .line 298
    const-string v1, "BATTERY_VOLT"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, voltage:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_3b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_11
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readBatteryVoltate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voltate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 299
    :cond_3b
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public readExternalApChipTemp()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 356
    const-string v3, "SEC_EXT_THERMISTER_ADC"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, ext_temp:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "readExternalApChipTemp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sysfs ext_temp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_5d

    .line 361
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 362
    .local v1, decimal:I
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 363
    .local v0, data:I
    const/4 v3, 0x5

    if-lt v1, v3, :cond_3e

    .line 364
    add-int/lit8 v0, v0, 0x1

    .line 368
    .end local v1           #decimal:I
    :cond_3e
    :goto_3e
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    iget-object v3, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "readExternalApChipTemp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return ext_temp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-object v2

    .line 366
    .end local v0           #data:I
    :cond_5d
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #data:I
    goto :goto_3e
.end method

.method public readFuelGaugeSOC()Ljava/lang/String;
    .registers 6

    .prologue
    .line 311
    const-string v1, "BATTERY_CAPACITY"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, soc:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_12
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readFuelGaugeSOC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "soc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-object v0
.end method

.method public reboot(B)V
    .registers 8
    .parameter "mode"

    .prologue
    .line 43
    iget-object v2, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "reboot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/sec/factory/modules/ModulePower;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 45
    .local v1, pm:Landroid/os/PowerManager;
    new-instance v0, Lcom/sec/factory/modules/ModulePower$1;

    invoke-virtual {p0}, Lcom/sec/factory/modules/ModulePower;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/sec/factory/modules/ModulePower$1;-><init>(Lcom/sec/factory/modules/ModulePower;Landroid/os/Looper;)V

    .line 55
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 56
    return-void
.end method

.method public resetFuelGaugeIC()Z
    .registers 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "resetFuelGaugeIC"

    const-string v2, "Fuel Gauge IC reset"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "FUEL_GAUGE_RESET"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendAlarmManagerOnOff(Z)V
    .registers 8
    .parameter "alarm"

    .prologue
    .line 177
    const-string v0, "android.intent.action.START_FACTORY_TEST"

    .line 178
    .local v0, RTC_OFF:Ljava/lang/String;
    const-string v1, "android.intent.action.STOP_FACTORY_TEST"

    .line 180
    .local v1, RTC_ON:Ljava/lang/String;
    if-nez p1, :cond_1a

    .line 181
    iget-object v3, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "sendAlarmOnOffIntent"

    const-string v5, "sendAlarmOnOffIntentandroid.intent.action.START_FACTORY_TEST"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_FACTORY_TEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/factory/modules/ModulePower;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    .end local v2           #intent:Landroid/content/Intent;
    :goto_19
    return-void

    .line 184
    :cond_1a
    const/4 v3, 0x1

    if-ne p1, v3, :cond_31

    .line 185
    iget-object v3, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "sendAlarmOnOffIntent"

    const-string v5, "sendAlarmOnOffIntentandroid.intent.action.STOP_FACTORY_TEST"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.STOP_FACTORY_TEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/factory/modules/ModulePower;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_19

    .line 189
    .end local v2           #intent:Landroid/content/Intent;
    :cond_31
    iget-object v3, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "sendAlarmOnOffIntent"

    const-string v5, "Invalid parameter"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public sendDvfsLockIntent()V
    .registers 6

    .prologue
    .line 170
    iget-object v2, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "sendDvfsLockIntent"

    const-string v4, "..."

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "com.sec.android.intent.action.DVFS_FACTORY_CPU_LOCK"

    .line 172
    .local v0, dvfsLockIntent:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.intent.action.DVFS_FACTORY_CPU_LOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModulePower;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    return-void
.end method

.method public sendSleepCmd2Ril()V
    .registers 6

    .prologue
    .line 75
    const-string v1, "com.sec.factory.cporiented.SEND_CMD2RIL"

    .line 77
    .local v1, sendSleepCmd2RilIntent:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.factory.cporiented.SEND_CMD2RIL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModulePower;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    iget-object v2, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "sendSleepCmd2Ril"

    const-string v4, "Power Sleep for 2nd modem - com.sec.factory.cporiented.SEND_CMD2RIL"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public setBrightness(I)V
    .registers 8
    .parameter "brightness"

    .prologue
    .line 229
    iget-object v2, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "setBrightness"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "brightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :try_start_1a
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 233
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_29

    .line 234
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_29} :catch_2a

    .line 239
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_29
    :goto_29
    return-void

    .line 236
    :catch_2a
    move-exception v0

    .line 237
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_29
.end method

.method public setFactoryModeAtBatteryNode(Z)V
    .registers 7
    .parameter "factoryMode"

    .prologue
    .line 194
    const-string v1, "1"

    .line 195
    .local v1, FACTORYMODE_ON:Ljava/lang/String;
    const-string v0, "0"

    .line 197
    .local v0, FACTORYMODE_OFF:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_25

    .line 198
    const-string v2, "BATTRY_FACTORYMODE"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 199
    iget-object v2, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "setFactoryModeAtBatteryNode"

    const-string v4, "set : 1"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_1a
    return-void

    .line 201
    :cond_1b
    iget-object v2, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "setFactoryModeAtBatteryNode"

    const-string v4, "set : on Failed"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 204
    :cond_25
    const-string v2, "BATTRY_FACTORYMODE"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 205
    iget-object v2, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "setFactoryModeAtBatteryNode"

    const-string v4, "set : 0"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 207
    :cond_39
    iget-object v2, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "setFactoryModeAtBatteryNode"

    const-string v4, "set off : Failed"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public setScreenBrightnessMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setScreenBrightnessMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModulePower;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    return-void
.end method

.method public setScreenState(Z)V
    .registers 8
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 249
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setScreenState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModulePower;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 251
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz p1, :cond_30

    .line 252
    invoke-virtual {p0, v5}, Lcom/sec/factory/modules/ModulePower;->doPartialWakeLock(Z)V

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 261
    :goto_2f
    return-void

    .line 256
    :cond_30
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModulePower;->doPartialWakeLock(Z)V

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_2f
.end method

.method public setTouchLedTime(I)V
    .registers 4
    .parameter "time"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModulePower;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "button_key_light"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    return-void
.end method

.method public sleep()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 66
    iget-object v1, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "sleep"

    const-string v3, "Power Sleep"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v4}, Lcom/sec/factory/modules/ModulePower;->doWakeLock(Z)V

    .line 68
    invoke-virtual {p0, v4}, Lcom/sec/factory/modules/ModulePower;->doPartialWakeLock(Z)V

    .line 69
    invoke-virtual {p0, v4}, Lcom/sec/factory/modules/ModulePower;->doMediaScanWakeLock(Z)V

    .line 70
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModulePower;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 71
    .local v0, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 72
    return-void
.end method

.method public writeBatteryAdcCal(Ljava/lang/String;)V
    .registers 6
    .parameter "value"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "writeBatteryAdcCal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v0, "BATTERY_VOLT_ADC_CAL"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    return-void
.end method

.method public writeBatteryCal(Ljava/lang/String;)V
    .registers 6
    .parameter "value"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/factory/modules/ModulePower;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "writeBatteryCal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v0, "BATTERY_VOLT_ADC_CAL"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 412
    return-void
.end method
