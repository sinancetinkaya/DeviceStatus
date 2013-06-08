.class Lcom/sec/factory/app/ui/UIHardKey$1;
.super Ljava/lang/Object;
.source "UIHardKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIHardKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIHardKey;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIHardKey;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIHardKey$1;->this$0:Lcom/sec/factory/app/ui/UIHardKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 48
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIHardKey$1;->this$0:Lcom/sec/factory/app/ui/UIHardKey;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIHardKey;->mTestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    .line 49
    .local v1, item:Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;
    iget-boolean v2, v1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mEnabled:Z

    if-eqz v2, :cond_8

    .line 50
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    .line 51
    iget-object v2, v1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    if-eqz v2, :cond_31

    .line 52
    iget-object v2, v1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeySensitivityText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, v1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mTouchKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIKeyBase$TouchKeyItem;->mTouchKeyTestResult:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_31
    iget-object v2, v1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    .line 58
    .end local v1           #item:Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;
    :cond_3b
    return-void
.end method
