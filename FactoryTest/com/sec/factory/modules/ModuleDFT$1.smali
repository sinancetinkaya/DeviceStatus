.class Lcom/sec/factory/modules/ModuleDFT$1;
.super Ljava/lang/Object;
.source "ModuleDFT.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/modules/ModuleDFT;->injectKeyEvent(Landroid/view/KeyEvent;Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleDFT;

.field final synthetic val$event1:Landroid/view/KeyEvent;

.field final synthetic val$event2:Landroid/view/KeyEvent;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/ModuleDFT;Landroid/view/KeyEvent;Landroid/view/KeyEvent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleDFT$1;->this$0:Lcom/sec/factory/modules/ModuleDFT;

    iput-object p2, p0, Lcom/sec/factory/modules/ModuleDFT$1;->val$event1:Landroid/view/KeyEvent;

    iput-object p3, p0, Lcom/sec/factory/modules/ModuleDFT$1;->val$event2:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 167
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDFT$1;->val$event1:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 168
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleDFT$1;->val$event2:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 170
    return-void
.end method
