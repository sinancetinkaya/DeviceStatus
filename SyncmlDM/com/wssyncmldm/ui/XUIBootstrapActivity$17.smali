.class Lcom/wssyncmldm/ui/XUIBootstrapActivity$17;
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
    .line 257
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$17;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 260
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiGetCurAuthCnt()I

    move-result v0

    .line 261
    .local v0, nAuthCnt:I
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$17;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    const/16 v2, 0xb6

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->removeDialog(I)V

    .line 262
    const/4 v1, 0x3

    if-gt v0, v1, :cond_14

    .line 263
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$17;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->showDialog(I)V

    .line 264
    :cond_14
    return-void
.end method
