.class public Lcom/android/settings/ContextualPageHelpActivity;
.super Landroid/app/Activity;
.source "ContextualPageHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private img1:Landroid/widget/ImageView;

.field private img2:Landroid/widget/ImageView;

.field private mAni1:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni2:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/16 v1, 0x8

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_2e

    .line 87
    :goto_9
    return-void

    .line 79
    :sswitch_a
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/android/settings/ContextualPageHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_9

    .line 83
    :sswitch_1c
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/android/settings/ContextualPageHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_9

    .line 77
    :sswitch_data_2e
    .sparse-switch
        0x7f0b004f -> :sswitch_a
        0x7f0b0053 -> :sswitch_1c
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, intent:Landroid/content/Intent;
    const v1, 0x7f040027

    invoke-virtual {p0, v1}, Lcom/android/settings/ContextualPageHelpActivity;->setContentView(I)V

    .line 47
    const v1, 0x7f0b004d

    invoke-virtual {p0, v1}, Lcom/android/settings/ContextualPageHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090d68

    invoke-virtual {p0, v3}, Lcom/android/settings/ContextualPageHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v1, 0x7f0b004e

    invoke-virtual {p0, v1}, Lcom/android/settings/ContextualPageHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090d69

    invoke-virtual {p0, v3}, Lcom/android/settings/ContextualPageHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lcom/android/settings/ContextualPageHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090d6a

    invoke-virtual {p0, v3}, Lcom/android/settings/ContextualPageHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v1, 0x7f0b004f

    invoke-virtual {p0, v1}, Lcom/android/settings/ContextualPageHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/ContextualPageHelpActivity;->img1:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcom/android/settings/ContextualPageHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f0b0053

    invoke-virtual {p0, v1}, Lcom/android/settings/ContextualPageHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/ContextualPageHelpActivity;->img2:Landroid/widget/ImageView;

    .line 54
    iget-object v1, p0, Lcom/android/settings/ContextualPageHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->img1:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iput-object v1, p0, Lcom/android/settings/ContextualPageHelpActivity;->img1:Landroid/widget/ImageView;

    .line 94
    :cond_a
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->img2:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    iput-object v1, p0, Lcom/android/settings/ContextualPageHelpActivity;->img2:Landroid/widget/ImageView;

    .line 96
    :cond_10
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1b

    .line 97
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 98
    iput-object v1, p0, Lcom/android/settings/ContextualPageHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 101
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_26

    .line 102
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 103
    iput-object v1, p0, Lcom/android/settings/ContextualPageHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    .line 106
    :cond_26
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageHelpActivity;->finish()V

    .line 107
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasFocus"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 65
    if-eqz p1, :cond_29

    .line 66
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->img1:Landroid/widget/ImageView;

    const v1, 0x7f0201ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 69
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->img2:Landroid/widget/ImageView;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/ContextualPageHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    .line 72
    :cond_29
    return-void
.end method
