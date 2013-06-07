.class Lcom/android/settings/wfd/WfdPickerActivity$3;
.super Landroid/os/Handler;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WfdPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 435
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_94

    .line 455
    :cond_21
    :goto_21
    return-void

    .line 438
    :pswitch_22
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 439
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 440
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 442
    :cond_3f
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2400(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v0

    if-ne v0, v3, :cond_6e

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v0

    if-eq v0, v4, :cond_6e

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6e

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6e

    .line 446
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 447
    :cond_6e
    const/16 v0, 0x1e1

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/wfd/WfdPickerActivity$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_21

    .line 450
    :pswitch_76
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z
    invoke-static {v0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 451
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 452
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$3;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    goto :goto_21

    .line 436
    nop

    :pswitch_data_94
    .packed-switch 0x1e0
        :pswitch_22
        :pswitch_76
    .end packed-switch
.end method
