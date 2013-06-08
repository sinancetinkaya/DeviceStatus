.class Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;
.super Ljava/lang/Object;
.source "UISpenHoveringTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExitRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)V
    .registers 2
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPass:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$100(Lcom/sec/factory/app/ui/UISpenHoveringTest;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 393
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UISpenHoveringTest;->mIsPass:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISpenHoveringTest;->access$102(Lcom/sec/factory/app/ui/UISpenHoveringTest;Z)Z

    .line 394
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextResultPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->access$500(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x42c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 395
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mHoverCanvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->access$700(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)Landroid/graphics/Canvas;

    move-result-object v0

    const-string v1, "PASS"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mScreenWidth:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->access$600(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x447a

    iget-object v4, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    #getter for: Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->mTextResultPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->access$500(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 396
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->invalidate()V

    .line 397
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;->this$1:Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView;->this$0:Lcom/sec/factory/app/ui/UISpenHoveringTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenHoveringTest;->mTimerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable$1;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable$1;-><init>(Lcom/sec/factory/app/ui/UISpenHoveringTest$HoverView$ExitRunnable;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 413
    :cond_4e
    return-void
.end method
