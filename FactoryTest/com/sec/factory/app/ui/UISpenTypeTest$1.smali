.class Lcom/sec/factory/app/ui/UISpenTypeTest$1;
.super Landroid/os/Handler;
.source "UISpenTypeTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenTypeTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenTypeTest;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenTypeTest;->KEY_TIMER_EXPIRED:I

    if-ne v0, v1, :cond_e

    .line 189
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UISpenTypeTest;->mIsPressedBackkey:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$002(Lcom/sec/factory/app/ui/UISpenTypeTest;Z)Z

    .line 191
    :cond_e
    return-void
.end method
