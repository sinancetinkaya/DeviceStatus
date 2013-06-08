.class public Lcom/sec/android/app/camera/framework/FocusRectangle;
.super Landroid/view/View;
.source "FocusRectangle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method private setDrawable(I)V
    .registers 3
    .parameter "resid"

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/framework/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/framework/FocusRectangle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/framework/FocusRectangle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method

.method public showFail()V
    .registers 2

    .prologue
    .line 30
    const v0, 0x7f020005

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/framework/FocusRectangle;->setDrawable(I)V

    .line 31
    return-void
.end method

.method public showStart()V
    .registers 2

    .prologue
    .line 22
    const v0, 0x7f020007

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/framework/FocusRectangle;->setDrawable(I)V

    .line 23
    return-void
.end method

.method public showSuccess()V
    .registers 2

    .prologue
    .line 26
    const v0, 0x7f020006

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/framework/FocusRectangle;->setDrawable(I)V

    .line 27
    return-void
.end method
