.class Lcom/wssyncmldm/ui/XUIDialogActivity$31;
.super Ljava/lang/Object;
.source "XUIDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$31;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 1014
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$31;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v1, 0xec

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 1015
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1016
    const/16 v0, 0x113

    invoke-static {v0, v2, v2}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1017
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 1018
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$31;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    .line 1019
    return-void
.end method
