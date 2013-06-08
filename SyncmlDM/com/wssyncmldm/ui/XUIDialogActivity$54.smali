.class Lcom/wssyncmldm/ui/XUIDialogActivity$54;
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
    .line 1295
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$54;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

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

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "whichButton : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1300
    packed-switch p2, :pswitch_data_44

    .line 1326
    :cond_1a
    :goto_1a
    return-void

    .line 1304
    :pswitch_1b
    const-string v1, "Hiden button clicked..."

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1305
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$54;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto :goto_1a

    .line 1311
    :pswitch_26
    const-string v1, "Cancel button clicked..."

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1312
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    .line 1313
    .local v0, nFumoState:I
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1a

    .line 1315
    invoke-static {v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgResetUpdateDownloadProgressBar(Z)V

    .line 1316
    const/16 v1, 0x113

    invoke-static {v1}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrStartOMADLAgent(I)I

    .line 1317
    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 1318
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$54;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto :goto_1a

    .line 1300
    :pswitch_data_44
    .packed-switch -0x2
        :pswitch_26
        :pswitch_1b
    .end packed-switch
.end method
