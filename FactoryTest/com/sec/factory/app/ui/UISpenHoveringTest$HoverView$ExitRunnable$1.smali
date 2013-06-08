.class Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable$1;
.super Ljava/lang/Object;
.source "UISpenHoveringTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;)V
    .registers 2
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable$1;->this$2:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 399
    const-string v0, "FACTORY_TEST_APP"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Version;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    const-string v1, "SpenHoveringTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FACTORY_TEST_APP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 402
    const/16 v1, 0x12

    if-lt v0, v1, :cond_51

    .line 403
    const-string v0, "SpenHoveringTest"

    const-string v1, "startSPenHoveringDraw test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable$1;->this$2:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->access$800(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/sec/factory/app/ui/UISpenHoveringDrawTest;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable$1;->this$2:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->access$900(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 409
    :goto_50
    return-void

    .line 407
    :cond_51
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable$1;->this$2:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->onFinish()V

    goto :goto_50
.end method
