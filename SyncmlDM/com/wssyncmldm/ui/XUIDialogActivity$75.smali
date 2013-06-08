.class Lcom/wssyncmldm/ui/XUIDialogActivity$75;
.super Ljava/lang/Object;
.source "XUIDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

.field final synthetic val$DownloadAD:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIDialogActivity;Landroid/app/AlertDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$75;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    iput-object p2, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$75;->val$DownloadAD:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$75;->val$DownloadAD:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x3f666666

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setLineSpacing(FF)V

    .line 1649
    return-void
.end method
