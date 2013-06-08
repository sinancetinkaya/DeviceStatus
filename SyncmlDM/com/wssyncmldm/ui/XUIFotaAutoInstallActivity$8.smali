.class Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$8;
.super Ljava/lang/Object;
.source "XUIFotaAutoInstallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 263
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$8;->this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 266
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPostponeAutoinstall(Z)V

    .line 267
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$8;->this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    const/16 v1, 0xe3

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->removeDialog(I)V

    .line 269
    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 270
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$8;->this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiFotaPostpone()V

    .line 271
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$8;->this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->finish()V

    .line 272
    return-void
.end method
