.class final Lcom/sec/android/app/camera/CamcorderPreviewTest$ShutterCallback;
.super Ljava/lang/Object;
.source "CamcorderPreviewTest.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderPreviewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$ShutterCallback;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;Lcom/sec/android/app/camera/CamcorderPreviewTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderPreviewTest$ShutterCallback;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .registers 3

    .prologue
    .line 177
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "ShutterCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method
