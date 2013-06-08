.class Lcom/wssyncmldm/ui/XUIDialogActivity$90;
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
    .line 2051
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$90;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2054
    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$90;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v3, 0xd8

    invoke-virtual {v2, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2055
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetDeviceEncryptState()Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;

    move-result-object v0

    .line 2056
    .local v0, devEncrypt:Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;
    if-nez v0, :cond_17

    .line 2058
    const-string v2, "wssdmDeviceEncrypt is null"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2059
    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$90;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    .line 2062
    :cond_17
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetDeviceDecryptionSupport()Z

    move-result v2

    if-eqz v2, :cond_35

    iget-boolean v2, v0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaDecrypted:Z

    if-nez v2, :cond_35

    .line 2064
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2065
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2066
    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$90;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v3, 0x37

    invoke-virtual {v2, v1, v3}, Lcom/wssyncmldm/ui/XUIDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2073
    .end local v1           #intent:Landroid/content/Intent;
    :goto_34
    return-void

    .line 2070
    :cond_35
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaInstallStartCheck()V

    .line 2071
    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$90;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    goto :goto_34
.end method
