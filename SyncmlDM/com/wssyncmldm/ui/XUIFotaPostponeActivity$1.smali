.class Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$1;
.super Ljava/lang/Object;
.source "XUIFotaPostponeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->removeDialog(I)V

    .line 249
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    .line 250
    .local v0, nStatus:I
    if-nez v0, :cond_18

    .line 252
    const/16 v1, 0x94

    invoke-static {v3, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 264
    :goto_12
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->finish()V

    .line 265
    return-void

    .line 254
    :cond_18
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_22

    .line 256
    const/16 v1, 0xce

    invoke-static {v3, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_12

    .line 260
    :cond_22
    const-string v1, "process pre start"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 261
    const/16 v1, 0xd3

    invoke-static {v3, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 262
    const/16 v1, 0x267

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    goto :goto_12
.end method
