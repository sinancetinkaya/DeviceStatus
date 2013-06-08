.class Lcom/wssyncmldm/ui/XUIDialogActivity$46;
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
    .line 1196
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$46;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$46;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    #calls: Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgCPopupKillTimer()V
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->access$000(Lcom/wssyncmldm/ui/XUIDialogActivity;)V

    .line 1200
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$46;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 1201
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$46;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    sget-object v1, Lcom/wssyncmldm/ui/XUIDialogActivity;->g_UicOption:Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgUicChoiceResult(Ljava/lang/Object;I)V

    .line 1202
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$46;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    .line 1203
    return-void
.end method
