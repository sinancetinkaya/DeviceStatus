.class Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;
.super Landroid/view/View;
.source "UISpenTypeTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenTypeTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonTestView"
.end annotation


# instance fields
.field mOldButtonState:I

.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UISpenTypeTest;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "c"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    .line 225
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 226
    return-void
.end method

.method private onTouchOrHoverEvent(Landroid/view/MotionEvent;Z)Z
    .registers 13
    .parameter "event"
    .parameter "isTouch"

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v7, 0x1

    const/4 v4, 0x0

    const v6, -0xff0100

    const v5, -0xffff01

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    .line 243
    .local v0, buttonState:I
    iget v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->mOldButtonState:I

    xor-int/lit8 v2, v2, -0x1

    and-int v1, v0, v2

    .line 244
    .local v1, pressedButtons:I
    iput v0, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->mOldButtonState:I

    .line 246
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_74

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->mOldButtonState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_74

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenTypeTest;->mActiveType:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$100(Lcom/sec/factory/app/ui/UISpenTypeTest;)I

    move-result v2

    if-nez v2, :cond_74

    if-eqz p2, :cond_74

    .line 251
    const-string v2, "UISpenTypeTest"

    const-string v3, "onTouchOrHoverEvent"

    const-string v4, "BUTTON_SECONDARY"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "UISpenTypeTest"

    const-string v3, "onTouchOrHoverEvent"

    const-string v4, "event.getMetaState()=[PEN_ON & SIDE_BUTTON_ON]"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v2, "UISpenTypeTest"

    const-string v3, "onTouchOrHoverEvent"

    const-string v4, "PEN_BUTTON Result : PASS"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenTypeTest;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$200(Lcom/sec/factory/app/ui/UISpenTypeTest;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 256
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenTypeTest;->mResultText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$300(Lcom/sec/factory/app/ui/UISpenTypeTest;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "PASS"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenTypeTest;->mResultText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$300(Lcom/sec/factory/app/ui/UISpenTypeTest;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenTypeTest;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$600(Lcom/sec/factory/app/ui/UISpenTypeTest;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView$1;

    invoke-direct {v3, p0}, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView$1;-><init>(Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    :cond_73
    :goto_73
    return v7

    .line 266
    :cond_74
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_73

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenTypeTest;->mActiveType:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$100(Lcom/sec/factory/app/ui/UISpenTypeTest;)I

    move-result v2

    if-ne v2, v7, :cond_73

    if-eqz p2, :cond_73

    .line 269
    const-string v2, "UISpenTypeTest"

    const-string v3, "onTouchOrHoverEvent"

    const-string v4, "event.getMetaState()=[AMETA_ERASER_ON]"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v2, "UISpenTypeTest"

    const-string v3, "onTouchOrHoverEvent"

    const-string v4, "PEN_BUTTON Result : PASS"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenTypeTest;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$200(Lcom/sec/factory/app/ui/UISpenTypeTest;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 272
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenTypeTest;->mResultText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$300(Lcom/sec/factory/app/ui/UISpenTypeTest;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "PASS"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenTypeTest;->mResultText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$300(Lcom/sec/factory/app/ui/UISpenTypeTest;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    iget-object v2, p0, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->this$0:Lcom/sec/factory/app/ui/UISpenTypeTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenTypeTest;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISpenTypeTest;->access$600(Lcom/sec/factory/app/ui/UISpenTypeTest;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView$2;

    invoke-direct {v3, p0}, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView$2;-><init>(Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_73
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->onTouchOrHoverEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/factory/app/ui/UISpenTypeTest$ButtonTestView;->onTouchOrHoverEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method
