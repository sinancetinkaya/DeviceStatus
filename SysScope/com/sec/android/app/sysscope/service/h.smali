.class final Lcom/sec/android/app/sysscope/service/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sec/android/app/sysscope/service/SysScopeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sysscope/service/SysScopeService;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/h;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/h;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;)Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->b()V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/h;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    const-string v2, "SysScope scanning finished"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/h;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    const-string v2, "com.sec.android.app.sysscope.permission.RUN_SYSSCOPE"

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v0, "SysScopeService"

    const-string v1, "SysScopeService : send status Intent"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/Log;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
