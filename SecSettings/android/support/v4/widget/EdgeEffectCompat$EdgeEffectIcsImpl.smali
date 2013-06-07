.class Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"

# interfaces
.implements Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EdgeEffectIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .registers 4
    .parameter "edgeEffect"
    .parameter "canvas"

    .prologue
    .line 120
    invoke-static {p1, p2}, Landroid/support/v4/widget/EdgeEffectCompatIcs;->draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public finish(Ljava/lang/Object;)V
    .registers 2
    .parameter "edgeEffect"

    .prologue
    .line 104
    invoke-static {p1}, Landroid/support/v4/widget/EdgeEffectCompatIcs;->finish(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .registers 3
    .parameter "edgeEffect"

    .prologue
    .line 100
    invoke-static {p1}, Landroid/support/v4/widget/EdgeEffectCompatIcs;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .parameter "context"

    .prologue
    .line 92
    invoke-static {p1}, Landroid/support/v4/widget/EdgeEffectCompatIcs;->newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPull(Ljava/lang/Object;F)Z
    .registers 4
    .parameter "edgeEffect"
    .parameter "deltaDistance"

    .prologue
    .line 108
    invoke-static {p1, p2}, Landroid/support/v4/widget/EdgeEffectCompatIcs;->onPull(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public onRelease(Ljava/lang/Object;)Z
    .registers 3
    .parameter "edgeEffect"

    .prologue
    .line 112
    invoke-static {p1}, Landroid/support/v4/widget/EdgeEffectCompatIcs;->onRelease(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSize(Ljava/lang/Object;II)V
    .registers 4
    .parameter "edgeEffect"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 96
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/EdgeEffectCompatIcs;->setSize(Ljava/lang/Object;II)V

    .line 97
    return-void
.end method
