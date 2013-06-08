.class Lcom/wssyncmldm/ui/XUIDialogActivity$2;
.super Ljava/lang/Object;
.source "XUIDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 531
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 534
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    .line 536
    invoke-static {v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetUserCancel(Z)V

    .line 537
    const/16 v1, 0xfb

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmCreateAbortMessage(IZ)Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;

    move-result-object v0

    .line 539
    .local v0, pFailParam:Lcom/wssyncmldm/eng/core/XDMAbortMsgParam;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_22

    .line 540
    const/16 v1, 0x19

    invoke-static {v1, v0, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 543
    :goto_1c
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    .line 544
    return-void

    .line 542
    :cond_22
    const/16 v1, 0x72

    invoke-static {v1, v0, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1c
.end method
