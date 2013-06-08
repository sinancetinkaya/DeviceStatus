.class Lcom/wssyncmldm/ui/XUIBootstrapActivity$12;
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
    .line 194
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$12;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$12;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->finish()V

    .line 200
    return-void
.end method
