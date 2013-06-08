.class Lcom/wssyncmldm/XDMService$3;
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
    .line 466
    iput-object p1, p0, Lcom/wssyncmldm/XDMService$3;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$3;->this$0:Lcom/wssyncmldm/XDMService;

    #calls: Lcom/wssyncmldm/XDMService;->xdmBroadcastBatteryInfo(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/wssyncmldm/XDMService;->access$600(Lcom/wssyncmldm/XDMService;Landroid/content/Intent;)V

    .line 471
    return-void
.end method
