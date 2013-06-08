.class Lcom/wssyncmldm/ui/XUIBootstrapActivity$15;
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
    .line 224
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$15;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$15;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    const/16 v1, 0xb7

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->removeDialog(I)V

    .line 230
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$15;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_PushAdp:Lcom/wssyncmldm/noti/XNOTIAdapter;
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$300(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Lcom/wssyncmldm/noti/XNOTIAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$15;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiDeleteCurBootstrapMessage(Landroid/content/Context;)Z

    .line 231
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$15;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->finish()V

    .line 232
    return-void
.end method
