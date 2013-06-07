.class public Lcom/sec/android/app/sysscope/service/SysScopeService;
.super Landroid/app/Service;


# instance fields
.field private volatile a:Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

.field private final b:Ljava/util/HashMap;

.field private volatile c:Lcom/sec/android/app/sysscope/service/k;

.field private volatile d:Landroid/content/Context;

.field private e:I

.field private f:Ljava/lang/Thread;

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/app/sysscope/service/h;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/h;-><init>(Lcom/sec/android/app/sysscope/service/SysScopeService;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->g:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sysscope/service/i;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/i;-><init>(Lcom/sec/android/app/sysscope/service/SysScopeService;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/sec/android/app/sysscope/service/SysScopeService;)Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->a:Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_10
.end method

.method private declared-synchronized a(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setState state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->h:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "param"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput p1, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->e:I
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/sec/android/app/sysscope/service/SysScopeService;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->f:Ljava/lang/Thread;

    return-void
.end method

.method private b()I
    .registers 5

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    :goto_10
    return v0

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_10
.end method

.method static synthetic b(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->f:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/sec/android/app/sysscope/service/SysScopeService;)I
    .registers 2

    iget v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->e:I

    return v0
.end method

.method static synthetic g(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/sec/android/app/sysscope/service/SysScopeService;)I
    .registers 2

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    const-string v0, "SysScopeService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->c:Lcom/sec/android/app/sysscope/service/k;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->a:Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

    new-instance v0, Lcom/sec/android/app/sysscope/service/k;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sysscope/service/k;-><init>(Lcom/sec/android/app/sysscope/service/SysScopeService;B)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->c:Lcom/sec/android/app/sysscope/service/k;

    iput-object p0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->d:Landroid/content/Context;

    iput v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->e:I

    const-string v0, "SYSSCOPE"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_29

    const-string v0, "SysScopeService"

    const-string v1, "add service"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SYSSCOPE"

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->c:Lcom/sec/android/app/sysscope/service/k;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_29
    new-instance v0, Lcom/sec/android/app/sysscope/engine/h;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sysscope/engine/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/h;->b()V

    const-string v0, "SysScopeService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->f:Ljava/lang/Thread;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 7

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_38

    const-string v0, "period_scan"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v1, "SysScopeService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "periodic:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/Log;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->c:Lcom/sec/android/app/sysscope/service/k;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/k;->a()I

    :cond_38
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
