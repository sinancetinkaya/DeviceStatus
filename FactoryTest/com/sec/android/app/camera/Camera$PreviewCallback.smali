.class public final Lcom/sec/android/app/camera/Camera$PreviewCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 10
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 737
    const-string v3, "testCamera"

    const-string v4, "onPreviewFrame - get the preview image"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mDatalineCheck:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 739
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->bDoneDTP:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3100(Lcom/sec/android/app/camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_6e

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->bCheckDTP:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3200(Lcom/sec/android/app/camera/Camera;)Z

    move-result v3

    if-ne v3, v5, :cond_6e

    .line 740
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->checkDataline([B)Z
    invoke-static {v3, p1}, Lcom/sec/android/app/camera/Camera;->access$3300(Lcom/sec/android/app/camera/Camera;[B)Z

    move-result v3

    if-nez v3, :cond_98

    .line 741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 742
    .local v0, dateTaken:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #calls: Lcom/sec/android/app/camera/Camera;->createName(J)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$2600(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dtp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->access$2900()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/camera/Camera;->writeImage(Ljava/lang/String;Ljava/lang/String;[B)V
    invoke-static {v3, v4, v2, p1}, Lcom/sec/android/app/camera/Camera;->access$2800(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 744
    const-string v3, "testCamera"

    const-string v4, "checkDataline - false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->cameraType:I
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v3

    if-ne v3, v5, :cond_8f

    .line 746
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f070008

    #calls: Lcom/sec/android/app/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$900(Lcom/sec/android/app/camera/Camera;I)V

    .line 754
    .end local v0           #dateTaken:J
    .end local v2           #name:Ljava/lang/String;
    :goto_69
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->bCheckDTP:Z
    invoke-static {v3, v6}, Lcom/sec/android/app/camera/Camera;->access$3202(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 757
    :cond_6e
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->bDoneDTP:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3100(Lcom/sec/android/app/camera/Camera;)Z

    move-result v3

    if-ne v3, v5, :cond_8a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->bSentAck:Z
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$3400(Lcom/sec/android/app/camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 758
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const-string v4, "com.android.samsungtest.CAMERA_GOOD"

    #calls: Lcom/sec/android/app/camera/Camera;->sendBroadCastAck(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$3500(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;)V

    .line 759
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mShutterBtnlock:Z
    invoke-static {v3, v6}, Lcom/sec/android/app/camera/Camera;->access$2202(Lcom/sec/android/app/camera/Camera;Z)Z

    .line 762
    :cond_8a
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 763
    return-void

    .line 748
    .restart local v0       #dateTaken:J
    .restart local v2       #name:Ljava/lang/String;
    :cond_8f
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f070007

    #calls: Lcom/sec/android/app/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$900(Lcom/sec/android/app/camera/Camera;I)V

    goto :goto_69

    .line 750
    .end local v0           #dateTaken:J
    .end local v2           #name:Ljava/lang/String;
    :cond_98
    const-string v3, "testCamera"

    const-string v4, "checkDataline - success"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$PreviewCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_69
.end method
