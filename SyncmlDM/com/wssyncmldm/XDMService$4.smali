.class Lcom/wssyncmldm/XDMService$4;
.super Landroid/content/BroadcastReceiver;
.source "XDMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/XDMService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/XDMService;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/XDMService;)V
    .registers 2
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/wssyncmldm/XDMService$4;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 479
    const-string v0, "TimeTickReceiver"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiReservationDateRefresh()V

    .line 481
    return-void
.end method
