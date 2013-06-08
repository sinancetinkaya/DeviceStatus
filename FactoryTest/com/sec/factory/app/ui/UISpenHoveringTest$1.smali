.class Lcom/sec/factory/app/ui/UISpenHoveringTest$1;
.super Landroid/os/Handler;
.source "UISpenHoveringTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenHoveringTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenHoveringTest;)V
    .registers 2
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 420
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenHoveringTest;->KEY_TIMER_EXPIRED:I

    if-ne v0, v1, :cond_15

    .line 421
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPressedBackkey:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$302(Lcom/sec/factory/app/ui/UISpenHoveringTest;Z)Z

    .line 422
    const-string v0, "SpenHoveringTest"

    const-string v1, "mTimerHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_15
    return-void
.end method
