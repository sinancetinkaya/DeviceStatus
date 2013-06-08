.class Lcom/wssyncmldm/ui/XUIDialogActivity$20;
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
    .line 848
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$20;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 851
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 852
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    if-nez v0, :cond_10

    .line 854
    invoke-static {v1}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpResetSessionSaveState(I)V

    .line 855
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpHandleNotiQueue()V

    .line 857
    :cond_10
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$20;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v1, 0x94

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 858
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 859
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$20;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    .line 860
    return-void
.end method
