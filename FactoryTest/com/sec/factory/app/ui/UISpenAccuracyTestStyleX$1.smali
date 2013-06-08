.class Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$1;
.super Landroid/os/Handler;
.source "UISpenAccuracyTestStyleX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$1;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 329
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$1;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->KEY_TIMER_EXPIRED:I

    if-ne v0, v1, :cond_15

    .line 330
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX$1;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->mIsPressedBackkey:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;->access$002(Lcom/sec/factory/app/ui/UISpenAccuracyTestStyleX;Z)Z

    .line 331
    const-string v0, "UISpenAccuracyTestStyleX"

    const-string v1, "mTimerHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_15
    return-void
.end method
