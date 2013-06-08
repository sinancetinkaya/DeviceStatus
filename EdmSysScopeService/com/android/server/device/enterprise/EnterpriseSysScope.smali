.class public Lcom/android/server/device/enterprise/EnterpriseSysScope;
.super Landroid/app/Service;
.source "EnterpriseSysScope.java"


# instance fields
.field private final mBinder:Landroid/app/enterprise/IEnterpriseSysScopeInterface$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Lcom/android/server/device/enterprise/EnterpriseSysScope$1;

    invoke-direct {v0, p0}, Lcom/android/server/device/enterprise/EnterpriseSysScope$1;-><init>(Lcom/android/server/device/enterprise/EnterpriseSysScope;)V

    iput-object v0, p0, Lcom/android/server/device/enterprise/EnterpriseSysScope;->mBinder:Landroid/app/enterprise/IEnterpriseSysScopeInterface$Stub;

    return-void
.end method


# virtual methods
.method public declared-synchronized isDeviceRooted()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 49
    monitor-enter p0

    :try_start_3
    new-instance v1, Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-virtual {p0}, Lcom/android/server/device/enterprise/EnterpriseSysScope;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/android/app/sysscope/service/SysScope;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, sysScope:Lcom/sec/android/app/sysscope/service/SysScope;
    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/SysScope;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 52
    const-string v3, "EnterpriseSysScope"

    const-string v4, "SysScope is not connected. System might be modified."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_41

    .line 67
    :goto_19
    monitor-exit p0

    return v2

    .line 56
    :cond_1b
    :try_start_1b
    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/service/SysScope;->getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    move-result-object v0

    .line 57
    .local v0, r:Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    if-nez v0, :cond_2a

    .line 58
    const-string v2, "EnterpriseSysScope"

    const-string v4, "Scanning is not yet done"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 59
    goto :goto_19

    .line 62
    :cond_2a
    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->getResult()I

    move-result v4

    if-ne v4, v2, :cond_39

    .line 63
    const-string v2, "EnterpriseSysScope"

    const-string v4, "OK"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 64
    goto :goto_19

    .line 66
    :cond_39
    const-string v3, "EnterpriseSysScope"

    const-string v4, "NOK, System is modified"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_1b .. :try_end_40} :catchall_41

    goto :goto_19

    .line 49
    .end local v0           #r:Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    .end local v1           #sysScope:Lcom/sec/android/app/sysscope/service/SysScope;
    :catchall_41
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 40
    const-string v0, "EnterpriseSysScope"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 42
    iget-object v0, p0, Lcom/android/server/device/enterprise/EnterpriseSysScope;->mBinder:Landroid/app/enterprise/IEnterpriseSysScopeInterface$Stub;

    .line 44
    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 30
    const-string v0, "EnterpriseSysScope"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 35
    const-string v0, "EnterpriseSysScope"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 37
    return-void
.end method
