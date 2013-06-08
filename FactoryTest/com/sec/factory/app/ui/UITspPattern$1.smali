.class Lcom/sec/factory/app/ui/UITspPattern$1;
.super Landroid/os/Handler;
.source "UITspPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UITspPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UITspPattern;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UITspPattern;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/factory/app/ui/UITspPattern$1;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UITspPattern$1;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    iget v1, v1, Lcom/sec/factory/app/ui/UITspPattern;->KEY_TIMER_EXPIRED:I

    if-ne v0, v1, :cond_18

    .line 187
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$1;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UITspPattern;->mIsPressedBackkey:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UITspPattern;->access$002(Lcom/sec/factory/app/ui/UITspPattern;Z)Z

    .line 188
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPattern$1;->this$0:Lcom/sec/factory/app/ui/UITspPattern;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspPattern;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mTimerHandler.handleMessage"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_18
    return-void
.end method
