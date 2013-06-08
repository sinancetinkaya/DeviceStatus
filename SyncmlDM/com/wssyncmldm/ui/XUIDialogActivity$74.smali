.class Lcom/wssyncmldm/ui/XUIDialogActivity$74;
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
    .line 1591
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$74;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v3, 0xce

    const/16 v2, 0x10

    .line 1594
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmWifiDownloadSizeCheck()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1596
    const/4 v0, 0x0

    const/16 v1, 0xe9

    invoke-static {v0, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 1598
    invoke-static {v2}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1599
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$74;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v0, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 1600
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$74;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    .line 1608
    :goto_1d
    return-void

    .line 1604
    :cond_1e
    invoke-static {v2}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 1605
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadMemoryCheck(I)I

    .line 1606
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$74;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v0, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 1607
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$74;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto :goto_1d
.end method
