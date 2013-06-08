.class Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$1;
.super Ljava/lang/Object;
.source "UISpenAccuracyPointTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;

    #calls: Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->initPoints()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->access$000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)V

    .line 138
    return-void
.end method
