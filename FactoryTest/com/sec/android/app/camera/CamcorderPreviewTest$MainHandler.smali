.class Lcom/sec/android/app/camera/CamcorderPreviewTest$MainHandler;
.super Landroid/os/Handler;
.source "CamcorderPreviewTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderPreviewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V
    .registers 2
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$MainHandler;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;Lcom/sec/android/app/camera/CamcorderPreviewTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 965
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderPreviewTest$MainHandler;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 968
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 976
    :goto_5
    return-void

    .line 971
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$MainHandler;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    const v1, 0x7f070009

    #calls: Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->access$200(Lcom/sec/android/app/camera/CamcorderPreviewTest;I)V

    goto :goto_5

    .line 968
    nop

    :pswitch_data_10
    .packed-switch 0x9
        :pswitch_6
    .end packed-switch
.end method
