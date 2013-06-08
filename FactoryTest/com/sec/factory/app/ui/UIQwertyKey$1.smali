.class Lcom/sec/factory/app/ui/UIQwertyKey$1;
.super Ljava/lang/Object;
.source "UIQwertyKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIQwertyKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIQwertyKey;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIQwertyKey;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIQwertyKey$1;->this$0:Lcom/sec/factory/app/ui/UIQwertyKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 71
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey$1;->this$0:Lcom/sec/factory/app/ui/UIQwertyKey;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIQwertyKey;->mTestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    .line 72
    .local v1, item:Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;
    iput-boolean v4, v1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mIsPassed:Z

    .line 73
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIQwertyKey$1;->this$0:Lcom/sec/factory/app/ui/UIQwertyKey;

    #setter for: Lcom/sec/factory/app/ui/UIQwertyKey;->mIndex_Space:I
    invoke-static {v2, v4}, Lcom/sec/factory/app/ui/UIQwertyKey;->access$002(Lcom/sec/factory/app/ui/UIQwertyKey;I)I

    .line 74
    iget-object v2, v1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mHardKeyItem:Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIKeyBase$HardKeyItem;->mHardKeyText:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 76
    .end local v1           #item:Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;
    :cond_26
    return-void
.end method
