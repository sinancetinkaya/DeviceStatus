.class public final Lcom/sec/android/app/camera/CamcorderPreviewTest$PreviewCallback;
.super Ljava/lang/Object;
.source "CamcorderPreviewTest.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderPreviewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V
    .registers 2
    .parameter

    .prologue
    .line 979
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$PreviewCallback;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 5
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 981
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewFrame - get the preview image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$PreviewCallback;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->bSentAck:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1700(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 983
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$PreviewCallback;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    const-string v1, "com.android.samsungtest.CAMERA_GOOD"

    #calls: Lcom/sec/android/app/camera/CamcorderPreviewTest;->sendBroadCastAck(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1600(Lcom/sec/android/app/camera/CamcorderPreviewTest;Ljava/lang/String;)V

    .line 984
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 985
    return-void
.end method
