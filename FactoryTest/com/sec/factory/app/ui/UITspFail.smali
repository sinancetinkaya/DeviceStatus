.class public Lcom/sec/factory/app/ui/UITspFail;
.super Landroid/app/Activity;
.source "UITspFail.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspFail;->requestWindowFeature(I)Z

    .line 24
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspFail;->setContentView(I)V

    .line 25
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UITspFail;->setResult(I)V

    .line 16
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UITspFail;->finish()V

    .line 17
    const/4 v0, 0x1

    return v0
.end method
