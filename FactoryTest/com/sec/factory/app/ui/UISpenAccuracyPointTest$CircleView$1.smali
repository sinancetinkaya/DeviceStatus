.class Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView$1;
.super Ljava/lang/Object;
.source "UISpenAccuracyPointTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView$1;->this$1:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView$1;->this$1:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    const/16 v1, 0x1a

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->setTestResult(BB)V

    .line 368
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView$1;->this$1:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->finish()V

    .line 369
    return-void
.end method
