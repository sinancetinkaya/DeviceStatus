.class final Lcom/sec/android/app/camera/Camera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 800
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 14
    .parameter "focused"
    .parameter "camera"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/16 v8, 0x1c

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 802
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocusL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    if-eqz p1, :cond_ae

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mAF_Fail_Count:I
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/Camera;->access$3602(Lcom/sec/android/app/camera/Camera;I)I

    .line 810
    :goto_25
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/camera/Camera;->mFocusCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->access$3702(Lcom/sec/android/app/camera/Camera;J)J

    .line 811
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto focus took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mFocusCallbackTime:J
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$3700(Lcom/sec/android/app/camera/Camera;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mFocusStartTime:J
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$3800(Lcom/sec/android/app/camera/Camera;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Interface/Capturer;

    move-result-object v0

    if-nez v0, :cond_73

    .line 817
    const-string v0, "testCamera"

    const-string v1, "onAutoFocus - mCaptureObject == null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mImageCapture:Lcom/sec/android/app/camera/Camera$ImageCapture;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$ImageCapture;

    move-result-object v1

    #setter for: Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$602(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Interface/Capturer;)Lcom/sec/android/app/camera/Interface/Capturer;

    .line 823
    :cond_73
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mFocusState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4000(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    if-ne v0, v7, :cond_db

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Interface/Capturer;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 824
    const-string v0, "testCamera"

    const-string v1, "onAutoFocus - mFocusState == FOCUSING_SNAP_ON_FINISH && mCaptureObject != null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    if-eqz p1, :cond_b5

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mFocusState:I
    invoke-static {v0, v9}, Lcom/sec/android/app/camera/Camera;->access$4002(Lcom/sec/android/app/camera/Camera;I)I

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->updateFocusIndicator()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)V

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4200(Lcom/sec/android/app/camera/Camera;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Interface/Capturer;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/Interface/Capturer;->onSnap()V

    .line 882
    :cond_a8
    :goto_a8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->updateFocusIndicator()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)V

    .line 883
    :cond_ad
    :goto_ad
    return-void

    .line 806
    :cond_ae
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3608(Lcom/sec/android/app/camera/Camera;)I

    goto/16 :goto_25

    .line 835
    :cond_b5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mFocusState:I
    invoke-static {v0, v10}, Lcom/sec/android/app/camera/Camera;->access$4002(Lcom/sec/android/app/camera/Camera;I)I

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->updateFocusIndicator()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)V

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mAF_Fail_Count:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    if-le v0, v7, :cond_cc

    .line 838
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->dialogFocusPopup()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4100(Lcom/sec/android/app/camera/Camera;)V

    .line 840
    :cond_cc
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4200(Lcom/sec/android/app/camera/Camera;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->shortSnapshotcancelAutoFocus()V

    goto :goto_ad

    .line 846
    :cond_db
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mFocusState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4000(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_153

    .line 847
    const-string v0, "testCamera"

    const-string v1, "onAutoFocus - mFocusState == FOCUSING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4200(Lcom/sec/android/app/camera/Camera;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 853
    if-eqz p1, :cond_106

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mFocusState:I
    invoke-static {v0, v9}, Lcom/sec/android/app/camera/Camera;->access$4002(Lcom/sec/android/app/camera/Camera;I)I

    .line 855
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mAF_Fail_Count:I
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/Camera;->access$3602(Lcom/sec/android/app/camera/Camera;I)I

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->updateFocusIndicator()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)V

    goto :goto_a8

    .line 858
    :cond_106
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mFocusState:I
    invoke-static {v0, v10}, Lcom/sec/android/app/camera/Camera;->access$4002(Lcom/sec/android/app/camera/Camera;I)I

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->updateFocusIndicator()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)V

    .line 860
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraSettings.FOCUSING = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mAF_Fail_Count:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mAF_Fail_Count:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3600(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    if-le v0, v7, :cond_140

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mAF_Fail_Count:I
    invoke-static {v0, v6}, Lcom/sec/android/app/camera/Camera;->access$3602(Lcom/sec/android/app/camera/Camera;I)I

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->dialogFocusPopup()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4100(Lcom/sec/android/app/camera/Camera;)V

    .line 866
    :cond_140
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4300(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4300(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto/16 :goto_ad

    .line 871
    :cond_153
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mFocusState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4000(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    if-nez v0, :cond_a8

    .line 874
    const-string v0, "testCamera"

    const-string v1, "onAutoFocus - mFocusState == FOCUS_NOT_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4300(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_a8

    goto/16 :goto_a8
.end method
