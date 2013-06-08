.class final Lcom/sec/android/app/camera/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mJpegData:[B

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Landroid/location/Location;)V
    .registers 4
    .parameter
    .parameter "loc"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->mJpegData:[B

    .line 483
    return-void
.end method


# virtual methods
.method public SavingImageForCaptureIntent(Landroid/hardware/Camera;)V
    .registers 7
    .parameter "camera"

    .prologue
    const/4 v4, 0x1

    .line 502
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->mJpegData:[B

    if-eqz v1, :cond_e

    .line 505
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->mJpegData:[B

    iput-object v2, v1, Lcom/sec/android/app/camera/Camera;->capturedData:[B

    .line 506
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->mJpegData:[B

    .line 509
    :cond_e
    const-string v1, "testCamera"

    const-string v2, "mStatus = SNAPSHOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x4

    #setter for: Lcom/sec/android/app/camera/Camera;->mStatus:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camera;->access$402(Lcom/sec/android/app/camera/Camera;I)I

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->capturedData:[B

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->storeImage([BLandroid/hardware/Camera;)V

    .line 514
    const-string v1, "selftest"

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->testType:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 515
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->clearFocusState()V
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)V

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->updateFocusIndicator()V
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$800(Lcom/sec/android/app/camera/Camera;)V

    .line 517
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->restartPreview()V
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1900(Lcom/sec/android/app/camera/Camera;)V

    .line 543
    :goto_3f
    return-void

    .line 521
    :cond_40
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CameraStorage;->getInstance()Lcom/sec/android/app/camera/CameraStorage;

    move-result-object v2

    #setter for: Lcom/sec/android/app/camera/Camera;->cs:Lcom/sec/android/app/camera/CameraStorage;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camera;->access$2002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/CameraStorage;)Lcom/sec/android/app/camera/CameraStorage;

    .line 522
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->cs:Lcom/sec/android/app/camera/CameraStorage;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->cameraType:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->filePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$2100(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/CameraStorage;->setFilePath(ILjava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mFinishPostViewTest:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mShutterBtnlock:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/Camera;->access$2202(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 526
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mPreviewing:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/Camera;->access$2302(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 527
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->stopPreview()V
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)V

    goto :goto_3f

    .line 531
    :cond_76
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->cameraType:I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v1

    if-nez v1, :cond_95

    .line 532
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 533
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "data_filepath"

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$2100(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 541
    .end local v0           #intent:Landroid/content/Intent;
    :cond_95
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3f
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 9
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mPausing:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 499
    :goto_8
    return-void

    .line 491
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->access$1002(Lcom/sec/android/app/camera/Camera;J)J

    .line 492
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms elapsed between"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RawPictureCallback and JpegPictureCallback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->mJpegData:[B

    .line 498
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->SavingImageForCaptureIntent(Landroid/hardware/Camera;)V

    goto :goto_8
.end method

.method public storeImage([BLandroid/hardware/Camera;)V
    .registers 13
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 546
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeImage : bUseSdcard["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->bUseSdcard:Z
    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$2500(Lcom/sec/android/app/camera/Camera;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 548
    .local v3, dateTaken:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #calls: Lcom/sec/android/app/camera/Camera;->createName(J)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$2600(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, name:Ljava/lang/String;
    :try_start_3f
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->bUseSdcard:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2500(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 552
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->getAvailableSpaceSd()J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-lez v0, :cond_5a

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$2700()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/camera/Camera;->writeImage(Ljava/lang/String;Ljava/lang/String;[B)V
    invoke-static {v0, v1, v2, p1}, Lcom/sec/android/app/camera/Camera;->access$2800(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5a} :catch_7b

    .line 561
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getOrientationOnTake()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->calculateOrientationForPicture(I)I

    move-result v6

    .line 563
    .local v6, orientationForPicture:I
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$3000()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/camera/Camera;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BI)Landroid/net/Uri;

    .line 564
    return-void

    .line 555
    .end local v6           #orientationForPicture:I
    :cond_71
    :try_start_71
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$2900()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/camera/Camera;->writeImage(Ljava/lang/String;Ljava/lang/String;[B)V
    invoke-static {v0, v1, v2, p1}, Lcom/sec/android/app/camera/Camera;->access$2800(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7a} :catch_7b

    goto :goto_5a

    .line 557
    :catch_7b
    move-exception v7

    .line 558
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "testCamera"

    const-string v1, "Exception while compressing image."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a
.end method
