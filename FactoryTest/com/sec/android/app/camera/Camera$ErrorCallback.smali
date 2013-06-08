.class public final Lcom/sec/android/app/camera/Camera$ErrorCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .registers 6
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 667
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    sparse-switch p1, :sswitch_data_86

    .line 692
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCallback - CAMERA BAD["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f070009

    #calls: Lcom/sec/android/app/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$900(Lcom/sec/android/app/camera/Camera;I)V

    .line 696
    :goto_41
    :sswitch_41
    return-void

    .line 673
    :sswitch_42
    const-string v0, "testCamera"

    const-string v1, "ErrorCallback - CAMERA_ERROR_WRONG_FW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f07000b

    #calls: Lcom/sec/android/app/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$900(Lcom/sec/android/app/camera/Camera;I)V

    goto :goto_41

    .line 678
    :sswitch_52
    const-string v0, "testCamera"

    const-string v1, "ErrorCallback - CAMERA_ERROR_DATALINE_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 683
    :sswitch_64
    const-string v0, "testCamera"

    const-string v1, "ErrorCallback - CAMERA_ERROR_DATALINE_FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->cameraType:I
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7d

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f070008

    #calls: Lcom/sec/android/app/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$900(Lcom/sec/android/app/camera/Camera;I)V

    goto :goto_41

    .line 688
    :cond_7d
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f070007

    #calls: Lcom/sec/android/app/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$900(Lcom/sec/android/app/camera/Camera;I)V

    goto :goto_41

    .line 669
    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_41
        0x3e8 -> :sswitch_42
        0x7d0 -> :sswitch_64
        0x7d1 -> :sswitch_52
    .end sparse-switch
.end method
