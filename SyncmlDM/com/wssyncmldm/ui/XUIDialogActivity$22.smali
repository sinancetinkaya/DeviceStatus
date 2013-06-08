.class Lcom/wssyncmldm/ui/XUIDialogActivity$22;
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
    .line 820
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$22;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$22;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v1, 0x94

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 824
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 825
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 827
    sget-boolean v0, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v0, :cond_2b

    :cond_19
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 830
    const/4 v0, 0x0

    const/16 v1, 0x95

    invoke-static {v0, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 837
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$22;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    .line 838
    return-void

    .line 832
    :cond_2b
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 834
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 835
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_25
.end method
