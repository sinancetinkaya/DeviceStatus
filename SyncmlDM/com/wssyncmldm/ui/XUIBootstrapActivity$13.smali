.class Lcom/wssyncmldm/ui/XUIBootstrapActivity$13;
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
    .line 176
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$13;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x5

    .line 180
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$13;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szResponseText:Ljava/lang/String;
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$100(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$13;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szResponseText:Ljava/lang/String;
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$100(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_34

    .line 182
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$13;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szResponseText:Ljava/lang/String;
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$100(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$13;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0, v2}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->removeDialog(I)V

    .line 184
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$202(I)I

    .line 185
    sget-object v0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    const/16 v1, 0x2c2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 192
    :goto_33
    return-void

    .line 189
    :cond_34
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$13;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0, v2}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->removeDialog(I)V

    .line 190
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$13;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->showDialog(I)V

    goto :goto_33
.end method
