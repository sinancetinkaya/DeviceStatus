.class Lcom/wssyncmldm/ui/XUIDialogActivity$52;
.super Ljava/lang/Object;
.source "XUIDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 1230
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$52;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 6
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 1233
    if-eqz p3, :cond_e

    .line 1234
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDialogActivity;->access$300()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMUicResult;

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    const/4 v1, 0x1

    aput v1, v0, p2

    .line 1237
    :goto_d
    return-void

    .line 1236
    :cond_e
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDialogActivity;->access$300()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMUicResult;

    iget-object v0, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    const/4 v1, 0x0

    aput v1, v0, p2

    goto :goto_d
.end method
