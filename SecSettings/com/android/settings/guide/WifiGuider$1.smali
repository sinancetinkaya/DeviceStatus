.class Lcom/android/settings/guide/WifiGuider$1;
.super Ljava/lang/Object;
.source "WifiGuider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/guide/WifiGuider;->showHelpDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/guide/WifiGuider;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings/guide/WifiGuider;Landroid/widget/ListView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/guide/WifiGuider$1;->this$0:Lcom/android/settings/guide/WifiGuider;

    iput-object p2, p0, Lcom/android/settings/guide/WifiGuider$1;->val$list:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/guide/WifiGuider$1;->val$list:Landroid/widget/ListView;

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 51
    return-void
.end method
