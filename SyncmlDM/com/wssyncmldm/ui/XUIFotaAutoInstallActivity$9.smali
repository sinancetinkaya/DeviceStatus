.class Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$9;
.super Ljava/lang/Object;
.source "XUIFotaAutoInstallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$9;->this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 255
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPostponeAutoinstall(Z)V

    .line 256
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$9;->this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    const/16 v1, 0xe3

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->removeDialog(I)V

    .line 258
    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 259
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$9;->this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiFotaPostpone()V

    .line 260
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$9;->this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->finish()V

    .line 261
    return-void
.end method
