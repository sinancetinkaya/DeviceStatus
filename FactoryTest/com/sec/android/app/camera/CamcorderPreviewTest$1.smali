.class Lcom/sec/android/app/camera/CamcorderPreviewTest$1;
.super Ljava/lang/Object;
.source "CamcorderPreviewTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderPreviewTest;->doPrepareVideoRecordingAsync()V
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
    .line 403
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$1;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$1;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    #calls: Lcom/sec/android/app/camera/CamcorderPreviewTest;->initializeMediaRecorder()V
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$500(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    .line 406
    return-void
.end method
