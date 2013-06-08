.class Lcom/wssyncmldm/ui/XUIDialogActivity$104;
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
    .line 2214
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$104;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2217
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$104;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v2, 0xea

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 2218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2219
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2220
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$104;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1, v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 2221
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$104;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    .line 2222
    return-void
.end method
