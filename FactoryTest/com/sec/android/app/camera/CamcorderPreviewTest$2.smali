.class Lcom/sec/android/app/camera/CamcorderPreviewTest$2;
.super Ljava/lang/Object;
.source "CamcorderPreviewTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderPreviewTest;->doStartVideoRecordingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V
    .registers 2
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$2;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 482
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$2;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$600(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/media/MediaRecorder;

    move-result-object v2

    if-nez v2, :cond_11

    .line 483
    sget-object v2, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v3, "MediaRecorder is not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_10
    return-void

    .line 488
    :cond_11
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$2;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #setter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorderRecording:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$702(Lcom/sec/android/app/camera/CamcorderPreviewTest;Z)Z

    .line 492
    :try_start_16
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$2;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$600(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1f} :catch_25

    .line 510
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$2;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #setter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsRecordingStarted:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1102(Lcom/sec/android/app/camera/CamcorderPreviewTest;Z)Z

    goto :goto_10

    .line 493
    :catch_25
    move-exception v0

    .line 494
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v3, "Could not start media recorder. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$2;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #calls: Lcom/sec/android/app/camera/CamcorderPreviewTest;->releaseMediaRecorder()V
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$800(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    .line 498
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$2;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->doStopVideoRecordingSync()V

    .line 500
    :try_start_37
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$2;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$900(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_40} :catch_46

    .line 506
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$2;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #setter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPreviewing:Z
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1002(Lcom/sec/android/app/camera/CamcorderPreviewTest;Z)Z

    goto :goto_10

    .line 501
    :catch_46
    move-exception v1

    .line 502
    .local v1, ex:Ljava/lang/Throwable;
    sget-object v2, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v3, "exception while startPreview"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$2;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    const v3, 0x7f070009

    #calls: Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$200(Lcom/sec/android/app/camera/CamcorderPreviewTest;I)V

    goto :goto_10
.end method
