.class Lcom/wssyncmldm/XDMService$5;
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
    .line 485
    iput-object p1, p0, Lcom/wssyncmldm/XDMService$5;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 489
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 491
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_IsSyncTaskInit:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    if-nez v0, :cond_21

    .line 493
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wssyncmldm/XDMService;->g_bIsInitializing:Z

    .line 494
    const-string v0, "----------- XEVENT_DM_INIT WIFI ok"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 495
    const/16 v0, 0xc

    invoke-static {v0, v1, v1}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 503
    :cond_20
    :goto_20
    return-void

    .line 497
    :cond_21
    sget v0, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    if-eqz v0, :cond_20

    .line 499
    const-string v0, "Run Resume Operation, Resume call WIFIConnect"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 500
    #calls: Lcom/wssyncmldm/XDMService;->xdmResumeOperation()Z
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$700()Z

    goto :goto_20
.end method
