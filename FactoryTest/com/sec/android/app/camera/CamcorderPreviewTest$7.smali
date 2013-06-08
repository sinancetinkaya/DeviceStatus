.class Lcom/sec/android/app/camera/CamcorderPreviewTest$7;
.super Landroid/os/Handler;
.source "CamcorderPreviewTest.java"


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
    .line 1157
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$7;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1159
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: mTimerHandler -msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 1168
    :goto_1f
    return-void

    .line 1162
    :pswitch_20
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: KEY_TIMER_EXPIRED -mIsCaptureEnble:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$7;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #getter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsPressedBackkey:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1900(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$7;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsPressedBackkey:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$1902(Lcom/sec/android/app/camera/CamcorderPreviewTest;Z)Z

    goto :goto_1f

    .line 1160
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method
