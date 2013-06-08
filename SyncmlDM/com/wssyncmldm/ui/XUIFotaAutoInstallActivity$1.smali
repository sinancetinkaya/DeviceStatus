.class Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$1;
.super Landroid/os/Handler;
.source "XUIFotaAutoInstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 74
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_88

    .line 105
    :goto_a
    return-void

    .line 82
    :pswitch_b
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$000()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$002(I)I

    .line 83
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$100()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    const v2, 0x7f07007f

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$000()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Autoinstall Timer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$000()I

    move-result v0

    if-gtz v0, :cond_69

    .line 88
    const-string v0, "AutoInstall Time end!!"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaInstallStartCheck()V

    .line 91
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->finish()V

    goto :goto_a

    .line 95
    :cond_69
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$200()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a

    .line 99
    :pswitch_73
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$002(I)I

    .line 100
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmWakeLockRelease()V

    .line 102
    const-string v0, "AUTOINSTALL_TIMER_STOP"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_a

    .line 79
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_b
        :pswitch_73
    .end packed-switch
.end method
