.class Lcom/sec/android/app/camera/framework/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/framework/ShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/framework/ShutterButton;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/framework/ShutterButton;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/camera/framework/ShutterButton$1;->this$0:Lcom/sec/android/app/camera/framework/ShutterButton;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/framework/ShutterButton$1;->val$pressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/framework/ShutterButton$1;->this$0:Lcom/sec/android/app/camera/framework/ShutterButton;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/framework/ShutterButton$1;->val$pressed:Z

    #calls: Lcom/sec/android/app/camera/framework/ShutterButton;->callShutterButtonFocus(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/framework/ShutterButton;->access$000(Lcom/sec/android/app/camera/framework/ShutterButton;Z)V

    .line 105
    return-void
.end method
