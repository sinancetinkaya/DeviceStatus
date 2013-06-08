.class public Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;
.super Ljava/lang/Object;
.source "UIKeyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIKeyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HardKeyItem"
.end annotation


# instance fields
.field protected mHardKeyText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/factory/app/ui/UIKeyBase;


# direct methods
.method protected constructor <init>(Lcom/sec/factory/app/ui/UIKeyBase;Landroid/widget/TextView;)V
    .registers 4
    .parameter
    .parameter "harKeyText"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->this$0:Lcom/sec/factory/app/ui/UIKeyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    .line 169
    iput-object p2, p0, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    .line 170
    return-void
.end method


# virtual methods
.method protected setAttribute_TextView(ILjava/lang/String;FF)V
    .registers 8
    .parameter "visibility"
    .parameter "text"
    .parameter "textSize"
    .parameter "textViewHeight"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    if-eqz v0, :cond_35

    .line 175
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    const-string v0, "DUMMY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 177
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->this$0:Lcom/sec/factory/app/ui/UIKeyBase;

    invoke-virtual {v1}, Lcom/sec/factory/app/ui/UIKeyBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 181
    :goto_2a
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 182
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    float-to-int v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 184
    :cond_35
    return-void

    .line 180
    :cond_36
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a
.end method
