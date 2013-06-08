.class Lcom/wssyncmldm/ui/XUIBootstrapActivity$1;
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
    .line 93
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->showDialog(I)V

    .line 97
    return-void
.end method
