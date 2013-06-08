.class public final Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;
.super Ljava/lang/Object;
.source "CamcorderPreviewTest.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderPreviewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .registers 6
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 143
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

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

    .line 145
    sparse-switch p1, :sswitch_data_86

    .line 168
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

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

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    const v1, 0x7f070009

    #calls: Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$200(Lcom/sec/android/app/camera/CamcorderPreviewTest;I)V

    .line 172
    :goto_41
    :sswitch_41
    return-void

    .line 149
    :sswitch_42
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCallback - CAMERA_ERROR_WRONG_FW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    const v1, 0x7f07000b

    #calls: Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$200(Lcom/sec/android/app/camera/CamcorderPreviewTest;I)V

    goto :goto_41

    .line 154
    :sswitch_52
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCallback - CAMERA_ERROR_DATALINE_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$300(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 159
    :sswitch_64
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCallback - CAMERA_ERROR_DATALINE_FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->cameraType:I
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$400(Lcom/sec/android/app/camera/CamcorderPreviewTest;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7d

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    const v1, 0x7f070008

    #calls: Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$200(Lcom/sec/android/app/camera/CamcorderPreviewTest;I)V

    goto :goto_41

    .line 164
    :cond_7d
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    const v1, 0x7f070007

    #calls: Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$200(Lcom/sec/android/app/camera/CamcorderPreviewTest;I)V

    goto :goto_41

    .line 145
    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_41
        0x3e8 -> :sswitch_42
        0x7d0 -> :sswitch_64
        0x7d1 -> :sswitch_52
    .end sparse-switch
.end method
