.class public final Lcom/sec/android/app/sysscope/engine/l;
.super Lcom/sec/android/app/sysscope/engine/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/g;-><init>()V

    return-void
.end method

.method private d()Landroid/os/Bundle;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/l;->b:Lcom/sec/android/app/sysscope/engine/d;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    :try_start_d
    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/l;->b:Lcom/sec/android/app/sysscope/engine/d;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/sec/android/app/sysscope/engine/d;->a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/f;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sysscope/service/f;->a:Lcom/sec/android/app/sysscope/service/f;

    if-eq v0, v1, :cond_21

    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/l;->b:Lcom/sec/android/app/sysscope/engine/d;

    invoke-interface {v1}, Lcom/sec/android/app/sysscope/engine/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_28} :catch_44

    :goto_28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sysscope/engine/l;->a(Landroid/os/Bundle;)V

    const-string v3, "result"

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/f;->a()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "info"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5

    :catch_44
    move-exception v1

    goto :goto_28
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/l;->d()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
