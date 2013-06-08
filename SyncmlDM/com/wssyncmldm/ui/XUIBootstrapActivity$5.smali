.class Lcom/wssyncmldm/ui/XUIBootstrapActivity$5;
.super Ljava/lang/Object;
.source "XUIBootstrapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIBootstrapActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$5;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$5;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$5;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    const v2, 0x7f070025

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 121
    return-void
.end method
