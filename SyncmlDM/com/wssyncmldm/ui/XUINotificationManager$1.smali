.class final Lcom/wssyncmldm/ui/XUINotificationManager$1;
.super Ljava/lang/Object;
.source "XUINotificationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/ui/XUINotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 39
    move-object v0, p2

    check-cast v0, Lcom/wssyncmldm/XDMService$XDMLocalBinder;

    .line 40
    .local v0, binder:Lcom/wssyncmldm/XDMService$XDMLocalBinder;
    invoke-virtual {v0}, Lcom/wssyncmldm/XDMService$XDMLocalBinder;->getService()Lcom/wssyncmldm/XDMService;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/ui/XUINotificationManager;->access$002(Lcom/wssyncmldm/XDMService;)Lcom/wssyncmldm/XDMService;

    .line 41
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->access$002(Lcom/wssyncmldm/XDMService;)Lcom/wssyncmldm/XDMService;

    .line 46
    return-void
.end method
