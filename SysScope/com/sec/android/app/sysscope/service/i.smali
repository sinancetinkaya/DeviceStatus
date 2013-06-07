.class final Lcom/sec/android/app/sysscope/service/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sec/android/app/sysscope/service/SysScopeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sysscope/service/SysScopeService;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sec/android/app/sysscope/service/i;)V
    .registers 4

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->b(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/a;

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/service/a;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->b(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/service/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SysScopeService"

    const-string v2, "clearDeadLink"

    invoke-static {v0, v2}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method static synthetic b(Lcom/sec/android/app/sysscope/service/i;)Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->b(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/sec/android/app/sysscope/service/i;)Lcom/sec/android/app/sysscope/service/SysScopeService;
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "SysScopeService"

    const-string v2, "handleMessage"

    invoke-static {v1, v2}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_b
    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_9c

    :pswitch_14
    const-string v0, "SysScopeService"

    const-string v1, "current state = ??, next state = SYDSCOPE_STATE_ERROR"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V

    :goto_21
    return-void

    :pswitch_22
    const-string v0, "SysScopeService"

    const-string v1, "current state = SYDSCOPE_STATE_NULL, next state = SYSSCOPE_STATE_INIT"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_2a

    goto :goto_21

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "SysScopeService"

    const-string v1, "handleMessage: exception"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :pswitch_36
    :try_start_36
    const-string v0, "SysScopeService"

    const-string v1, "current state = SYSSCOPE_STATE_INIT, next state = SYDSCOPE_STATE_RUN"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;)Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sysscope/service/j;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sysscope/service/j;-><init>(Lcom/sec/android/app/sysscope/service/i;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a(Lcom/sec/android/app/sysscope/engine/m;)V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;)Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a()V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V

    goto :goto_21

    :pswitch_5b
    const-string v0, "SysScopeService"

    const-string v1, "current state = SYDSCOPE_STATE_RUN, next state = SYDSCOPE_STATE_DONE"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v3}, Lcom/sec/android/app/sysscope/service/SysScopeService;->c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/Runnable;

    move-result-object v3

    const-string v4, "SysScope"

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->d(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_21

    :pswitch_7f
    const-string v0, "SysScopeService"

    const-string v1, "current state = SYDSCOPE_STATE_DONE, next state = SYDSCOPE_STATE_NULL"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V

    goto :goto_21

    :pswitch_8d
    const-string v0, "SysScopeService"

    const-string v1, "current state = SYDSCOPE_STATE_ERROR, next state = SYDSCOPE_STATE_NULL"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/i;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_9a} :catch_2a

    goto :goto_21

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_36
        :pswitch_5b
        :pswitch_7f
        :pswitch_14
        :pswitch_8d
    .end packed-switch
.end method
