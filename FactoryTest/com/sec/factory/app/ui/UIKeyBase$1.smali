.class Lcom/sec/factory/app/ui/UIKeyBase$1;
.super Ljava/lang/Object;
.source "UIKeyBase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIKeyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIKeyBase;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIKeyBase;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIKeyBase$1;->this$0:Lcom/sec/factory/app/ui/UIKeyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;)I
    .registers 5
    .parameter "item0"
    .parameter "item1"

    .prologue
    .line 24
    iget v0, p1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode:I

    iget v1, p2, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode:I

    if-le v0, v1, :cond_8

    .line 25
    const/4 v0, 0x1

    .line 29
    :goto_7
    return v0

    .line 26
    :cond_8
    iget v0, p1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode:I

    iget v1, p2, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;->mKeyCode:I

    if-ge v0, v1, :cond_10

    .line 27
    const/4 v0, -0x1

    goto :goto_7

    .line 29
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    check-cast p1, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    .end local p1
    check-cast p2, Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/factory/app/ui/UIKeyBase$1;->compare(Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;Lcom/sec/factory/app/ui/UIKeyBase$KeyTestItem;)I

    move-result v0

    return v0
.end method
