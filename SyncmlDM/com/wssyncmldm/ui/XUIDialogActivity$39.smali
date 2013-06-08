.class Lcom/wssyncmldm/ui/XUIDialogActivity$39;
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
    .line 1080
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$39;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$39;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    #calls: Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgCPopupKillTimer()V
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->access$000(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    .line 1085
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$39;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 1086
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$39;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    sget-object v1, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgUicConfirmResult(Ljava/lang/Object;I)V

    .line 1087
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$39;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    .line 1088
    return-void
.end method
