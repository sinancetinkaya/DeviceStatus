.class Lcom/wssyncmldm/XDMService$2;
.super Landroid/os/Handler;
.source "XDMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/XDMService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/XDMService;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/XDMService;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/16 v2, 0xad

    .line 360
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 362
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_ec

    .line 461
    :goto_a
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$500()Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    return-void

    .line 388
    :sswitch_14
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/wssyncmldm/XDMService;->xdmCallUiDialogActivity(I)V
    invoke-static {v0, v1}, Lcom/wssyncmldm/XDMService;->access$200(Lcom/wssyncmldm/XDMService;I)V

    goto :goto_a

    .line 396
    :sswitch_1c
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetTopActivityName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XUIDialogActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 397
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    #calls: Lcom/wssyncmldm/XDMService;->xdmCallUiDialogActivity(I)V
    invoke-static {v0, v2}, Lcom/wssyncmldm/XDMService;->access$200(Lcom/wssyncmldm/XDMService;I)V

    .line 398
    :cond_2d
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/wssyncmldm/XDMService;->xdmCallUiFotaBlockDialogActivity(I)V
    invoke-static {v0, v1}, Lcom/wssyncmldm/XDMService;->access$300(Lcom/wssyncmldm/XDMService;I)V

    goto :goto_a

    .line 402
    :sswitch_35
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDialogActivity;->xuiDlgUpdateDownloadProgress()V

    goto :goto_a

    .line 408
    :sswitch_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetTopActivityName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XUIDialogActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 410
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    #calls: Lcom/wssyncmldm/XDMService;->xdmCallUiDialogActivity(I)V
    invoke-static {v0, v2}, Lcom/wssyncmldm/XDMService;->access$200(Lcom/wssyncmldm/XDMService;I)V

    .line 411
    :cond_66
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-virtual {v0}, Lcom/wssyncmldm/XDMService;->xdmCallUiFotaInstall()V

    goto :goto_a

    .line 415
    :sswitch_6c
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-virtual {v0}, Lcom/wssyncmldm/XDMService;->xdmCallUiFotaPostpone()V

    goto :goto_a

    .line 420
    :sswitch_77
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetTopActivityName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XUIDialogActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 422
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    #calls: Lcom/wssyncmldm/XDMService;->xdmCallUiDialogActivity(I)V
    invoke-static {v0, v2}, Lcom/wssyncmldm/XDMService;->access$200(Lcom/wssyncmldm/XDMService;I)V

    .line 423
    :cond_8d
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-virtual {v0}, Lcom/wssyncmldm/XDMService;->xdmCallUiStorageNotify()V

    goto/16 :goto_a

    .line 428
    :sswitch_94
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetTopActivityName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XUIDialogActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 430
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    #calls: Lcom/wssyncmldm/XDMService;->xdmCallUiDialogActivity(I)V
    invoke-static {v0, v2}, Lcom/wssyncmldm/XDMService;->access$200(Lcom/wssyncmldm/XDMService;I)V

    .line 431
    :cond_aa
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/XDMService;->xdmCallUiFotaAutoInstall(I)V

    goto/16 :goto_a

    .line 435
    :sswitch_b3
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-virtual {v0}, Lcom/wssyncmldm/XDMService;->xdmCallUiBootstrapMsg()V

    goto/16 :goto_a

    .line 439
    :sswitch_ba
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$400()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$400()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070040

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 443
    :sswitch_cf
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-virtual {v0}, Lcom/wssyncmldm/XDMService;->xdmSetRegisterBatteryReceiver()V

    goto/16 :goto_a

    .line 447
    :sswitch_d6
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-virtual {v0}, Lcom/wssyncmldm/XDMService;->xdmUnRegisterBatteryReceiver()V

    goto/16 :goto_a

    .line 451
    :sswitch_dd
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-virtual {v0}, Lcom/wssyncmldm/XDMService;->xdmSetRegisterTimeTickReceiver()V

    goto/16 :goto_a

    .line 455
    :sswitch_e4
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$2;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-virtual {v0}, Lcom/wssyncmldm/XDMService;->xdmUnRegisterTimeTickReceiver()V

    goto/16 :goto_a

    .line 362
    nop

    :sswitch_data_ec
    .sparse-switch
        0x67 -> :sswitch_14
        0x68 -> :sswitch_14
        0x69 -> :sswitch_ba
        0x6f -> :sswitch_14
        0x89 -> :sswitch_14
        0x8a -> :sswitch_14
        0x91 -> :sswitch_14
        0x94 -> :sswitch_14
        0x95 -> :sswitch_14
        0x96 -> :sswitch_14
        0xac -> :sswitch_14
        0xad -> :sswitch_14
        0xcb -> :sswitch_14
        0xcc -> :sswitch_39
        0xce -> :sswitch_14
        0xcf -> :sswitch_14
        0xd0 -> :sswitch_14
        0xd1 -> :sswitch_35
        0xd3 -> :sswitch_39
        0xd4 -> :sswitch_39
        0xd5 -> :sswitch_14
        0xd6 -> :sswitch_14
        0xd7 -> :sswitch_14
        0xd8 -> :sswitch_14
        0xdd -> :sswitch_6c
        0xde -> :sswitch_14
        0xe2 -> :sswitch_94
        0xe3 -> :sswitch_94
        0xe7 -> :sswitch_14
        0xe9 -> :sswitch_14
        0xea -> :sswitch_14
        0xeb -> :sswitch_77
        0xec -> :sswitch_14
        0x191 -> :sswitch_1c
        0x192 -> :sswitch_1c
        0x193 -> :sswitch_1c
        0x194 -> :sswitch_1c
        0x195 -> :sswitch_1c
        0x262 -> :sswitch_b3
        0x266 -> :sswitch_cf
        0x267 -> :sswitch_d6
        0x268 -> :sswitch_dd
        0x269 -> :sswitch_e4
    .end sparse-switch
.end method
