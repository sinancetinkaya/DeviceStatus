.class final Lcom/sec/android/app/sysscope/service/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sec/android/app/sysscope/engine/m;


# instance fields
.field final synthetic a:Lcom/sec/android/app/sysscope/service/i;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sysscope/service/i;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/i;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/i;->b(Lcom/sec/android/app/sysscope/service/i;)Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/a;

    const/16 v2, 0x16

    :try_start_15
    invoke-interface {v0, v2}, Lcom/sec/android/app/sysscope/service/a;->b(I)V
    :try_end_18
    .catch Landroid/os/DeadObjectException; {:try_start_15 .. :try_end_18} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_1b

    goto :goto_6

    :catch_19
    move-exception v0

    goto :goto_6

    :catch_1b
    move-exception v0

    const-string v2, "SysScopeService"

    const-string v3, "RemoteException: ISYDSCOPEListener.onError"

    invoke-static {v2, v3}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method

.method public final a(I)V
    .registers 6

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/i;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/i;->a(Lcom/sec/android/app/sysscope/service/i;)V

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnJobProgressListener.onStart: total = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/i;

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/i;->c(Lcom/sec/android/app/sysscope/service/i;)Lcom/sec/android/app/sysscope/service/SysScopeService;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->b(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/i;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/i;->b(Lcom/sec/android/app/sysscope/service/i;)Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3e

    return-void

    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/a;

    :try_start_44
    invoke-interface {v0, p1}, Lcom/sec/android/app/sysscope/service/a;->a(I)V
    :try_end_47
    .catch Landroid/os/DeadObjectException; {:try_start_44 .. :try_end_47} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_51

    goto :goto_37

    :catch_48
    move-exception v0

    const-string v0, "SysScopeService"

    const-string v2, "DeadObjectException: ISYDSCOPEListener.onStart"

    invoke-static {v0, v2}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :catch_51
    move-exception v0

    const-string v2, "SysScopeService"

    const-string v3, "RemoteException: ISYDSCOPEListener.onStart"

    invoke-static {v2, v3}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_37
.end method

.method public final a(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/i;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/i;->b(Lcom/sec/android/app/sysscope/service/i;)Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/a;

    :try_start_13
    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sysscope/service/a;->a(ILjava/lang/String;)V
    :try_end_16
    .catch Landroid/os/DeadObjectException; {:try_start_13 .. :try_end_16} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_20

    goto :goto_6

    :catch_17
    move-exception v0

    const-string v0, "SysScopeService"

    const-string v2, "RemoteException: ISYDSCOPEListener.onProgress"

    invoke-static {v0, v2}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_20
    move-exception v0

    const-string v2, "SysScopeService"

    const-string v3, "RemoteException: ISYDSCOPEListener.onProgress"

    invoke-static {v2, v3}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method

.method public final a(ZLjava/lang/String;)V
    .registers 7

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnJobProgressListener.onFinish: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/i;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/i;->b(Lcom/sec/android/app/sysscope/service/i;)Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2b

    return-void

    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/a;

    :try_start_31
    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sysscope/service/a;->a(ZLjava/lang/String;)V
    :try_end_34
    .catch Landroid/os/DeadObjectException; {:try_start_31 .. :try_end_34} :catch_35
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_37

    goto :goto_24

    :catch_35
    move-exception v0

    goto :goto_24

    :catch_37
    move-exception v0

    const-string v2, "SysScopeService"

    const-string v3, "RemoteException: ISYDSCOPEListener.onComplete"

    invoke-static {v2, v3}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_24
.end method
