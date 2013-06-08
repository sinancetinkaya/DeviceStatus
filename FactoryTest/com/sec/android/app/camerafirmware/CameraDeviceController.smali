.class public Lcom/sec/android/app/camerafirmware/CameraDeviceController;
.super Ljava/lang/Object;
.source "CameraDeviceController.java"


# instance fields
.field private mCameraDevice:Landroid/hardware/Camera;

.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openCamera()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 33
    const-string v1, "CameraFirmware_broadcast"

    const-string v2, "openCameraDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_12

    .line 35
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->mCameraDevice:Landroid/hardware/Camera;

    .line 38
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public releaseCamera()V
    .registers 3

    .prologue
    .line 42
    const-string v0, "CameraFirmware_broadcast"

    const-string v1, "releaseCameraDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_13

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->mCameraDevice:Landroid/hardware/Camera;

    .line 47
    :cond_13
    return-void
.end method

.method public setFirmwareMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_c

    .line 51
    const-string v1, "CameraFirmware_broadcast"

    const-string v2, "setFirmwareMode - mCameraDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_b
    return-void

    .line 55
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 57
    const-string v0, "version"

    .line 58
    .local v0, valueFwMode:Ljava/lang/String;
    packed-switch p1, :pswitch_data_34

    .line 69
    const-string v0, "none"

    .line 73
    :goto_1b
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "firmware-mode"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_b

    .line 60
    :pswitch_2a
    const-string v0, "version"

    .line 61
    goto :goto_1b

    .line 63
    :pswitch_2d
    const-string v0, "update"

    .line 64
    goto :goto_1b

    .line 66
    :pswitch_30
    const-string v0, "dump"

    .line 67
    goto :goto_1b

    .line 58
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method
