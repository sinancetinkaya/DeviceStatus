.class Lcom/sec/factory/modules/ModuleDFT$2;
.super Ljava/lang/Object;
.source "ModuleDFT.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/modules/ModuleDFT;->injectTouchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleDFT;

.field final synthetic val$touch1:Landroid/view/MotionEvent;

.field final synthetic val$touch2:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/ModuleDFT;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleDFT$2;->this$0:Lcom/sec/factory/modules/ModuleDFT;

    iput-object p2, p0, Lcom/sec/factory/modules/ModuleDFT$2;->val$touch1:Landroid/view/MotionEvent;

    iput-object p3, p0, Lcom/sec/factory/modules/ModuleDFT$2;->val$touch2:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 177
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDFT$2;->val$touch1:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 178
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDFT$2;->val$touch2:Landroid/view/MotionEvent;

    if-eqz v0, :cond_18

    .line 179
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDFT$2;->val$touch2:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 182
    :cond_18
    return-void
.end method
