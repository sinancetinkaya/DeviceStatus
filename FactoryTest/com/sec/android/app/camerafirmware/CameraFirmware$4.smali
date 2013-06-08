.class Lcom/sec/android/app/camerafirmware/CameraFirmware$4;
.super Landroid/os/Handler;
.source "CameraFirmware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camerafirmware/CameraFirmware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V
    .registers 2
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$4;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 558
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    .line 585
    :goto_6
    return-void

    .line 561
    :pswitch_7
    const-string v0, "CameraFirmware"

    const-string v1, "handleMessage : updateFirmware - finish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$4;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$600(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$4;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$600(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 566
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$4;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->hideUpdateProgress()V

    .line 568
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_4c

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$4;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    const-string v1, "F/W Update complete.\nNeed to reboot!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$4;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->updateFirmwareUpdateCount()V

    .line 577
    :goto_3e
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$4;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware;->setBlockHold(Z)Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$700(Lcom/sec/android/app/camerafirmware/CameraFirmware;Z)Z

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$4;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v0}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->resetFWInfo()V

    goto :goto_6

    .line 573
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$4;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    const-string v1, "F/W dump complete"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3e

    .line 582
    :pswitch_58
    const-string v0, "CameraFirmware"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 558
    nop

    :pswitch_data_74
    .packed-switch 0x3e8
        :pswitch_58
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
