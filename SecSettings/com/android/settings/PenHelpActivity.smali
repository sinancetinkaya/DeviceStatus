.class public Lcom/android/settings/PenHelpActivity;
.super Landroid/app/Activity;
.source "PenHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private img1:Landroid/widget/ImageView;

.field private img2:Landroid/widget/ImageView;

.field private img3:Landroid/widget/ImageView;

.field private img4:Landroid/widget/ImageView;

.field private img5:Landroid/widget/ImageView;

.field private mAni1:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni2:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni3:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni4:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni5:Landroid/graphics/drawable/AnimationDrawable;

.field private penHelpMenu:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/16 v1, 0x8

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_ae

    .line 236
    :goto_9
    return-void

    .line 196
    :sswitch_a
    const v0, 0x7f0b0195

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_9

    .line 200
    :sswitch_1c
    const v0, 0x7f0b0198

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_9

    .line 204
    :sswitch_2e
    const v0, 0x7f0b018d

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_9

    .line 208
    :sswitch_40
    const v0, 0x7f0b0190

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_9

    .line 212
    :sswitch_52
    const v0, 0x7f0b019e

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_9

    .line 216
    :sswitch_64
    const v0, 0x7f0b01a3

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_9

    .line 220
    :sswitch_76
    const v0, 0x7f0b01a6

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_9

    .line 224
    :sswitch_88
    const v0, 0x7f0b01a9

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_9

    .line 228
    :sswitch_9b
    const v0, 0x7f0b01ab

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_9

    .line 193
    :sswitch_data_ae
    .sparse-switch
        0x7f0b018c -> :sswitch_2e
        0x7f0b018f -> :sswitch_40
        0x7f0b0194 -> :sswitch_a
        0x7f0b0197 -> :sswitch_1c
        0x7f0b019d -> :sswitch_52
        0x7f0b01a2 -> :sswitch_64
        0x7f0b01a5 -> :sswitch_76
        0x7f0b01a8 -> :sswitch_88
        0x7f0b01aa -> :sswitch_9b
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/PenHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "pen_help_menu"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    .line 58
    const-string v2, "hovering"

    iget-object v3, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 59
    const v2, 0x7f04009a

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->setContentView(I)V

    .line 61
    const v2, 0x7f0b0191

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, hoveringButton:Landroid/widget/Button;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setHoverPopupType(I)V

    .line 64
    const v2, 0x7f0b0194

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    .line 65
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v2, 0x7f0b0197

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    .line 67
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .end local v0           #hoveringButton:Landroid/widget/Button;
    :cond_55
    :goto_55
    return-void

    .line 68
    :cond_56
    const-string v2, "gesture"

    iget-object v3, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 69
    const v2, 0x7f040099

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->setContentView(I)V

    .line 71
    const v2, 0x7f0b018c

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    .line 72
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v2, 0x7f0b018f

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    .line 74
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_55

    .line 75
    :cond_87
    const-string v2, "quickcommand"

    iget-object v3, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 76
    const v2, 0x7f04009c

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->setContentView(I)V

    .line 78
    const v2, 0x7f0b01a1

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a21

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v2, 0x7f0b01a4

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a22

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v2, 0x7f0b01ae

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a2a

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v2, 0x7f0b01af

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a2b

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v2, 0x7f0b01b0

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a2c

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v2, 0x7f0b01b1

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a2d

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v2, 0x7f0b01b3

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a2f

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v2, 0x7f0b01b4

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a30

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v2, 0x7f0b01b5

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a31

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v2, 0x7f0b01b6

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a32

    invoke-virtual {p0, v4}, Lcom/android/settings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v2, 0x7f0b019d

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    .line 92
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v2, 0x7f0b01a2

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    .line 94
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v2, 0x7f0b01a5

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    .line 96
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v2, 0x7f0b01a8

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    .line 98
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v2, 0x7f0b01aa

    invoke-virtual {p0, v2}, Lcom/android/settings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    .line 100
    iget-object v2, p0, Lcom/android/settings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_55
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 153
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    .line 154
    :cond_a
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    .line 155
    :cond_10
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    .line 156
    :cond_16
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    .line 157
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    if-eqz v0, :cond_22

    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    .line 160
    :cond_22
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2d

    .line 161
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 162
    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 164
    :cond_2d
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_38

    .line 165
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 166
    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    .line 168
    :cond_38
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_43

    .line 169
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 170
    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    .line 172
    :cond_43
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_4e

    .line 173
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 174
    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    .line 176
    :cond_4e
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_59

    .line 177
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 178
    iput-object v1, p0, Lcom/android/settings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    .line 186
    :cond_59
    invoke-virtual {p0}, Lcom/android/settings/PenHelpActivity;->finish()V

    .line 187
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasFocus"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 112
    if-eqz p1, :cond_33

    .line 113
    const-string v0, "hovering"

    iget-object v1, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 114
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    const v1, 0x7f020283

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 117
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    const v1, 0x7f020284

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    .line 145
    :cond_33
    :goto_33
    return-void

    .line 119
    :cond_34
    const-string v0, "gesture"

    iget-object v1, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 120
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    const v1, 0x7f020281

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 123
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    const v1, 0x7f020282

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_33

    .line 125
    :cond_63
    const-string v0, "quickcommand"

    iget-object v1, p0, Lcom/android/settings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 126
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    const v1, 0x7f02027b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 129
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    const v1, 0x7f02027c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    .line 132
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    const v1, 0x7f02027d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    .line 135
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    const v1, 0x7f02027e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    .line 138
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    const v1, 0x7f02027f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    goto/16 :goto_33
.end method
