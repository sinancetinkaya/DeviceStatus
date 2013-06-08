.class Lcom/wssyncmldm/ui/XUIDialogActivity$1;
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
    .line 515
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 518
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    .line 520
    invoke-static {v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetUserCancel(Z)V

    .line 521
    const/16 v1, 0xfb

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmCreateAbortMessage(IZ)Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    move-result-object v0

    .line 523
    .local v0, pFailParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_22

    .line 524
    const/16 v1, 0x19

    invoke-static {v1, v0, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 527
    :goto_1c
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    .line 528
    return-void

    .line 526
    :cond_22
    const/16 v1, 0x72

    invoke-static {v1, v0, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1c
.end method
