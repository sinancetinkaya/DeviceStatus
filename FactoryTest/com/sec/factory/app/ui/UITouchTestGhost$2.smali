.class Lcom/sec/factory/app/ui/UITouchTestGhost$2;
.super Landroid/os/Handler;
.source "UITouchTestGhost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UITouchTestGhost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UITouchTestGhost;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UITouchTestGhost;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/factory/app/ui/UITouchTestGhost$2;->this$0:Lcom/sec/factory/app/ui/UITouchTestGhost;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITouchTestGhost$2;->this$0:Lcom/sec/factory/app/ui/UITouchTestGhost;

    iget v1, v1, Lcom/sec/factory/app/ui/UITouchTestGhost;->KEY_TIMER_EXPIRED:I

    if-ne v0, v1, :cond_16

    .line 94
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITouchTestGhost$2;->this$0:Lcom/sec/factory/app/ui/UITouchTestGhost;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UITouchTestGhost;->mIsPressedBackkey:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UITouchTestGhost;->access$002(Lcom/sec/factory/app/ui/UITouchTestGhost;Z)Z

    .line 95
    const-string v0, "UITouchTestGhost"

    const-string v1, "mTimerHandler.handleMessage"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_16
    return-void
.end method
