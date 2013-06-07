.class public Lcom/android/settings/wifi/WifiConnectionMonitorService;
.super Landroid/app/Service;
.source "WifiConnectionMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;,
        Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field mBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

.field private mConnectionMonitorThread:Ljava/lang/Thread;

.field mContext:Landroid/content/Context;

.field private mLowSignalTimeCount:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mThreasholdObserver:Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

.field private mThreshold:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    .line 59
    new-instance v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;-><init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiConnectionMonitorService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiConnectionMonitorService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    return p1
.end method

.method private isWifiSettingScreen(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 349
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    return v0
.end method


# virtual methods
.method addBlackList(Ljava/lang/String;)V
    .registers 5
    .parameter "ssid"

    .prologue
    .line 252
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 266
    :cond_8
    :goto_8
    return-void

    .line 256
    :cond_9
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBlackList, ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_25
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 259
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_4f

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already in the blacklist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->printBlackList()V

    goto :goto_8

    .line 261
    :cond_53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->startSearch()V

    goto :goto_4f
.end method

.method doWifiConnectionMonitoringPolicy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 292
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 294
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    sget-boolean v1, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v1, :cond_33

    const-string v1, "WifiConnectionMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mThreshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_33
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iget v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    if-gt v1, v2, :cond_5a

    .line 297
    iget v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    .line 303
    iget v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_59

    .line 304
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->isWifiSettingScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 305
    sget-boolean v1, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v1, :cond_59

    const-string v1, "WifiConnectionMonitorService"

    const-string v2, "WifiSettingScreen, skip disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_59
    :goto_59
    return-void

    .line 299
    :cond_5a
    iput v4, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    goto :goto_59

    .line 309
    :cond_5d
    const-string v1, "WifiConnectionMonitorService"

    const-string v2, "Disconnect and add to blacklist"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v2

    .line 312
    :try_start_67
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->addBlackList(Ljava/lang/String;)V

    .line 313
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_7b

    .line 314
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 315
    iput v4, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    goto :goto_59

    .line 313
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 167
    sget-boolean v1, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "WifiConnectionMonitorService"

    const-string v2, "Service onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mContext:Landroid/content/Context;

    .line 171
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ConnectionMonitorThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorThread:Ljava/lang/Thread;

    .line 172
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 173
    new-instance v2, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorThread:Ljava/lang/Thread;

    check-cast v1, Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;-><init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    .line 176
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 178
    new-instance v1, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;-><init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreasholdObserver:Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    .line 179
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreasholdObserver:Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;->register()V

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "android.net.wifi.REMOVE_BLACKLIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 190
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 206
    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "Service Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreasholdObserver:Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->stopMonitor()V

    .line 211
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 212
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 213
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 194
    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand,  startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method printBlackList()V
    .registers 4

    .prologue
    .line 288
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blacklist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1e
    return-void
.end method

.method removeBlackList(Ljava/lang/String;)V
    .registers 5
    .parameter "ssid"

    .prologue
    .line 269
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 285
    :cond_8
    :goto_8
    return-void

    .line 273
    :cond_9
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeBlackList, ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_25
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->stopSearch()V

    .line 284
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->printBlackList()V

    goto :goto_8

    .line 281
    :cond_41
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_3d

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the blacklist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method startMonitor()V
    .registers 5

    .prologue
    const/16 v3, 0x3e9

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_15

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->removeMessages(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 223
    :cond_15
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "start monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_20
    return-void
.end method

.method startSearch()V
    .registers 3

    .prologue
    const/16 v1, 0x3ea

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_10

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->removeMessages(I)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->sendEmptyMessage(I)Z

    .line 240
    :cond_10
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "start searching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1b
    return-void
.end method

.method stopMonitor()V
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_b

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->removeMessages(I)V

    .line 231
    :cond_b
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_16

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "stop monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_16
    return-void
.end method

.method stopSearch()V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_b

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->removeMessages(I)V

    .line 248
    :cond_b
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_16

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "stop seraching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_16
    return-void
.end method
