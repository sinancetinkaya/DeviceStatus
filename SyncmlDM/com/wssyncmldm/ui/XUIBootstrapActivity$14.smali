.class Lcom/wssyncmldm/ui/XUIBootstrapActivity$14;
.super Ljava/lang/Object;
.source "XUIBootstrapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 210
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$14;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$14;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->showDialog(I)V

    .line 215
    return-void
.end method
