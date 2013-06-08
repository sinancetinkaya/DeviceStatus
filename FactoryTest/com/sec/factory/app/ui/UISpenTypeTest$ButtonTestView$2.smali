.class Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView$2;
.super Ljava/lang/Object;
.source "UISpenTypeTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->onTouchOrHoverEvent(Landroid/view/MotionEvent;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView$2;->this$1:Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView$2;->this$1:Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenTypeTest;->mIsTestDone:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$400(Lcom/sec/factory/app/ui/UISpenTypeTest;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 278
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView$2;->this$1:Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    #calls: Lcom/sec/factory/app/ui/UISpenTypeTest;->onFinish()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$500(Lcom/sec/factory/app/ui/UISpenTypeTest;)V

    .line 279
    :cond_11
    return-void
.end method
