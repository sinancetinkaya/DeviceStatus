.class Lcom/sec/factory/app/ui/UIKeyBase$2;
.super Ljava/lang/Object;
.source "UIKeyBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIKeyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIKeyBase;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIKeyBase;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIKeyBase$2;->this$0:Lcom/sec/factory/app/ui/UIKeyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$2;->this$0:Lcom/sec/factory/app/ui/UIKeyBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UIKeyBase;->setResult(I)V

    .line 36
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIKeyBase$2;->this$0:Lcom/sec/factory/app/ui/UIKeyBase;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIKeyBase;->finish()V

    .line 37
    return-void
.end method
