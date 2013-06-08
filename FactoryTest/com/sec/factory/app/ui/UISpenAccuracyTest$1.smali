.class Lcom/sec/factory/app/ui/UISpenAccuracyTest$1;
.super Landroid/os/Handler;
.source "UISpenAccuracyTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenAccuracyTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenAccuracyTest;)V
    .registers 2
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 312
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    iget v1, v1, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->KEY_TIMER_EXPIRED:I

    if-ne v0, v1, :cond_15

    .line 313
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyTest;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UISpenAccuracyTest;->mIsPressedBackkey:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyTest;->access$002(Lcom/sec/factory/app/ui/UISpenAccuracyTest;Z)Z

    .line 314
    const-string v0, "SpenAccuracyTest"

    const-string v1, "mTimerHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_15
    return-void
.end method
