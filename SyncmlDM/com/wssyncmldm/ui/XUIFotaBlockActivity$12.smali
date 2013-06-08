.class Lcom/wssyncmldm/ui/XUIFotaBlockActivity$12;
.super Ljava/lang/Object;
.source "XUIFotaBlockActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$12;->this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentSetNotiResumeCase(I)V

    .line 178
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$12;->this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->removeDialog(I)V

    .line 179
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$12;->this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->finish()V

    .line 180
    return-void
.end method
