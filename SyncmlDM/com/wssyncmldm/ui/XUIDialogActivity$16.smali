.class Lcom/wssyncmldm/ui/XUIDialogActivity$16;
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
    .line 704
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$16;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 707
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 708
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiDownloadTimeInit()V

    .line 710
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmWifiDownloadSizeCheck()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 712
    const/16 v0, 0xe9

    invoke-static {v2, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 723
    :goto_15
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$16;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 724
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$16;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    .line 725
    return-void

    .line 714
    :cond_22
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2e

    .line 716
    invoke-static {v3}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadMemoryCheck(I)I

    goto :goto_15

    .line 720
    :cond_2e
    const/16 v0, 0x70

    invoke-static {v0, v2, v2}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 721
    invoke-static {v3}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_15
.end method
