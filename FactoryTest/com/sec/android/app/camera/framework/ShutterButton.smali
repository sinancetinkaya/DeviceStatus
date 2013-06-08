.class public Lcom/sec/android/app/camera/framework/ShutterButton;
.super Landroid/widget/ImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/framework/ShutterButton;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/framework/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .registers 3
    .parameter "pressed"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/framework/ShutterButton;->mListener:Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_9

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/framework/ShutterButton;->mListener:Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/sec/android/app/camera/framework/ShutterButton;Z)V

    .line 118
    :cond_9
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/camera/framework/ShutterButton;->isPressed()Z

    move-result v0

    .line 71
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/sec/android/app/camera/framework/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_17

    .line 72
    if-nez v0, :cond_18

    .line 102
    new-instance v1, Lcom/sec/android/app/camera/framework/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/framework/ShutterButton$1;-><init>(Lcom/sec/android/app/camera/framework/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/framework/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 110
    :goto_15
    iput-boolean v0, p0, Lcom/sec/android/app/camera/framework/ShutterButton;->mOldPressed:Z

    .line 112
    :cond_17
    return-void

    .line 108
    :cond_18
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/framework/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_15
.end method

.method public performClick()Z
    .registers 3

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 123
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/app/camera/framework/ShutterButton;->mListener:Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_d

    .line 124
    iget-object v1, p0, Lcom/sec/android/app/camera/framework/ShutterButton;->mListener:Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/sec/android/app/camera/framework/ShutterButton;)V

    .line 126
    :cond_d
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/camera/framework/ShutterButton;->mListener:Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;

    .line 60
    return-void
.end method
