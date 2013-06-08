.class Lcom/sec/android/app/camera/Camera$ImageCapture;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/app/camera/Interface/Capturer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCapture"
.end annotation


# instance fields
.field private mCapturing:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .registers 3
    .parameter

    .prologue
    .line 979
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->mCapturing:Z

    .line 980
    return-void
.end method

.method private capture(Z)V
    .registers 8
    .parameter "captureOnly"

    .prologue
    .line 1019
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/camera/Camera;->mPreviewing:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camera;->access$2302(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 1020
    const-string v1, "testCamera"

    const-string v2, "capture : mPreviewing set false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v0, 0x0

    .line 1023
    .local v0, loc:Landroid/location/Location;
    const-string v1, "selftest"

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->testType:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1024
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->cameraType:I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_66

    .line 1029
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->cameraType:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$4400(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/framework/CameraSettings;->setPictureSize(ILandroid/hardware/Camera$Parameters;)V

    .line 1044
    :goto_3a
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$4300(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$4400(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1046
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$4300(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mShutterCallback:Lcom/sec/android/app/camera/Camera$ShutterCallback;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$4500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$ShutterCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mRawPictureCallback:Lcom/sec/android/app/camera/Camera$RawPictureCallback;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$4600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$RawPictureCallback;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v4, v5, v0}, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1048
    return-void

    .line 1032
    :cond_66
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->cameraType:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$4400(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/framework/CameraSettings;->setPictureSize(ILandroid/hardware/Camera$Parameters;)V

    goto :goto_3a

    .line 1035
    :cond_7c
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->cameraType:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$4400(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/framework/CameraSettings;->setPictureSize(ILandroid/hardware/Camera$Parameters;)V

    goto :goto_3a
.end method


# virtual methods
.method public dismissFreezeFrame()V
    .registers 3

    .prologue
    .line 995
    const-string v0, "testCamera"

    const-string v1, "dismissFreezeFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 999
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1003
    :goto_1a
    return-void

    .line 1001
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->restartPreview()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1900(Lcom/sec/android/app/camera/Camera;)V

    goto :goto_1a
.end method

.method public initiate(Z)V
    .registers 3
    .parameter "captureOnly"

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$4300(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1016
    :goto_8
    return-void

    .line 1013
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->mCapturing:Z

    .line 1015
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera$ImageCapture;->capture(Z)V

    goto :goto_8
.end method

.method public onSnap()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 1051
    const-string v0, "testCamera"

    const-string v1, "onSnap()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mPausing:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1053
    const-string v0, "testCamera"

    const-string v1, "onSnap() - mPausing == true, return "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :goto_17
    return-void

    .line 1057
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/camera/Camera;->mCaptureStartTime:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->access$1502(Lcom/sec/android/app/camera/Camera;J)J

    .line 1062
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    if-eq v0, v3, :cond_32

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$400(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3d

    .line 1065
    :cond_32
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_17

    .line 1069
    :cond_3d
    const-string v0, "testCamera"

    const-string v1, "mStatus = SNAPSHOT_IN_PROGRESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mStatus:I
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Camera;->access$402(Lcom/sec/android/app/camera/Camera;I)I

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mImageCapture:Lcom/sec/android/app/camera/Camera$ImageCapture;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$3900(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$ImageCapture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$ImageCapture;->initiate(Z)V

    goto :goto_17
.end method
