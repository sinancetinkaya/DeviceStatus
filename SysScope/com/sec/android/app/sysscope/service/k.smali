.class final Lcom/sec/android/app/sysscope/service/k;
.super Lcom/sec/android/app/sysscope/service/e;


# instance fields
.field final synthetic a:Lcom/sec/android/app/sysscope/service/SysScopeService;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sysscope/service/SysScopeService;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sysscope/service/SysScopeService;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sysscope/service/k;-><init>(Lcom/sec/android/app/sysscope/service/SysScopeService;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 4

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->f(Lcom/sec/android/app/sysscope/service/SysScopeService;)I

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service busy, state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->f(Lcom/sec/android/app/sysscope/service/SysScopeService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12

    :goto_24
    return v0

    :cond_25
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V

    const/4 v0, 0x0

    goto :goto_24
.end method

.method public final a(I)I
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    const-string v2, "SysScope Permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_34

    new-instance v0, Lcom/sec/android/app/sysscope/engine/h;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sysscope/engine/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sysscope/engine/h;->a(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/h;->a()V

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPeriodicScan:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_33
    return v0

    :catch_34
    move-exception v0

    const-string v1, "SysScopeService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    goto :goto_33
.end method

.method public final a(Lcom/sec/android/app/sysscope/service/a;)I
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.sysscope"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "SysScopeService"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3d} :catch_5c

    :goto_3d
    :try_start_3d
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    const-string v2, "SysScope Permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4a} :catch_65

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->f(Lcom/sec/android/app/sysscope/service/SysScopeService;)I

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "SysScopeService"

    const-string v1, "service busy"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12

    :goto_5b
    return v0

    :catch_5c
    move-exception v0

    const-string v0, "SysScopeService"

    const-string v1, "Failed to get SysScope Version."

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :catch_65
    move-exception v0

    const-string v1, "SysScopeService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    goto :goto_5b

    :cond_72
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sysscope/service/k;->b(Lcom/sec/android/app/sysscope/service/a;)V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V

    const-string v0, "SysScopeService"

    const-string v1, "Send listener"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_5b
.end method

.method public final a(Z)V
    .registers 2

    invoke-static {p1}, Lcom/sec/android/app/sysscope/engine/Log;->a(Z)V

    return-void
.end method

.method public final b()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "versionName"

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->g(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "versionCode"

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->h(Lcom/sec/android/app/sysscope/service/SysScopeService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final b(Lcom/sec/android/app/sysscope/service/a;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    const-string v2, "SysScope Permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_45

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->b(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sysscope/service/a;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/a;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->b(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sysscope/service/a;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register listener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void

    :catch_45
    move-exception v0

    const-string v1, "SysScopeService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method public final c()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    const-string v2, "SysScope Permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_1d

    new-instance v0, Lcom/sec/android/app/sysscope/engine/h;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sysscope/engine/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/h;->c()I

    move-result v0

    :goto_1c
    return v0

    :catch_1d
    move-exception v0

    const-string v1, "SysScopeService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    goto :goto_1c
.end method

.method public final c(Lcom/sec/android/app/sysscope/service/a;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    const-string v2, "SysScope Permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_45

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->b(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sysscope/service/a;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/a;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->b(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sysscope/service/a;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregister listener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_44
    return-void

    :catch_45
    move-exception v0

    const-string v1, "SysScopeService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method public final d()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    const-string v2, "SysScope Permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_16

    invoke-static {}, Lcom/sec/android/app/sysscope/engine/j;->a()Lcom/sec/android/app/sysscope/engine/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/j;->b()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const-string v1, "SysScopeService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final e()Z
    .registers 2

    invoke-static {}, Lcom/sec/android/app/sysscope/engine/Log;->a()Z

    move-result v0

    return v0
.end method
