.class Lcom/sec/factory/app/ui/UiHallICTest$1;
.super Landroid/os/Handler;
.source "UiHallICTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UiHallICTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UiHallICTest;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UiHallICTest;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sec/factory/app/ui/UiHallICTest$1;->this$0:Lcom/sec/factory/app/ui/UiHallICTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 154
    :goto_5
    return-void

    .line 150
    :pswitch_6
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest$1;->this$0:Lcom/sec/factory/app/ui/UiHallICTest;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UiHallICTest;->mIsPressedBackkey:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UiHallICTest;->access$002(Lcom/sec/factory/app/ui/UiHallICTest;Z)Z

    .line 151
    const-string v0, "HallICTest"

    const-string v1, "mTimerHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 148
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
