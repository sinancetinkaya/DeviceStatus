.class Lcom/wssyncmldm/ui/XUIDialogActivity$79;
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
    .line 1697
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$79;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$79;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    const/16 v1, 0xe9

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIDialogActivity;->removeDialog(I)V

    .line 1701
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$79;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgShowWiFiSetting()V

    .line 1702
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$79;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIDialogActivity;->finish()V

    .line 1703
    return-void
.end method
