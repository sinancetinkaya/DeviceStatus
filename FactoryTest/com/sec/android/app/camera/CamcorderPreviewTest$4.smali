.class Lcom/sec/android/app/camera/CamcorderPreviewTest$4;
.super Ljava/lang/Object;
.source "CamcorderPreviewTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderPreviewTest;
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
    .line 953
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$4;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 955
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "Camera Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$4;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    const-string v1, "com.android.samsungtest.CAMERA_GOOD"

    #calls: Lcom/sec/android/app/camera/CamcorderPreviewTest;->sendBroadCastAck(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1600(Lcom/sec/android/app/camera/CamcorderPreviewTest;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$4;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$900(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 958
    return-void
.end method
