.class Lcom/sec/android/app/camera/CamcorderPreviewTest$3;
.super Ljava/lang/Object;
.source "CamcorderPreviewTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderPreviewTest;->onCreate(Landroid/os/Bundle;)V
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
    .line 734
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 736
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 738
    .local v0, cameraCnt:I
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->cameraType:I
    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$400(Lcom/sec/android/app/camera/CamcorderPreviewTest;)I

    move-result v3

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    #setter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$902(Lcom/sec/android/app/camera/CamcorderPreviewTest;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_69

    .line 745
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$900(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 746
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$900(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1302(Lcom/sec/android/app/camera/CamcorderPreviewTest;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 747
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1300(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I
    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1400(Lcom/sec/android/app/camera/CamcorderPreviewTest;)[[I

    move-result-object v3

    aget-object v3, v3, v5

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I
    invoke-static {v4}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1400(Lcom/sec/android/app/camera/CamcorderPreviewTest;)[[I

    move-result-object v4

    aget-object v4, v4, v5

    aget v4, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 751
    :try_start_4a
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$900(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1300(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_59} :catch_91
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_59} :catch_7d

    .line 759
    :goto_59
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$900(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;
    invoke-static {v3}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1500(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 760
    :goto_68
    return-void

    .line 739
    :catch_69
    move-exception v1

    .line 740
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #setter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mchkopencamera:Z
    invoke-static {v2, v6}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1202(Lcom/sec/android/app/camera/CamcorderPreviewTest;Z)Z

    .line 741
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    const v3, 0x7f070009

    #calls: Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$200(Lcom/sec/android/app/camera/CamcorderPreviewTest;I)V

    .line 742
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->finish()V

    goto :goto_68

    .line 754
    .end local v1           #e:Ljava/lang/Exception;
    :catch_7d
    move-exception v1

    .line 755
    .local v1, e:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v3, "setParameter fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$300(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_68

    .line 752
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_91
    move-exception v2

    goto :goto_59
.end method
