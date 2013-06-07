.class Lcom/android/settings/wfd/WfdHelpActivity$3;
.super Ljava/lang/Object;
.source "WfdHelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdHelpActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdHelpActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/wfd/WfdHelpActivity$3;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity$3;->this$0:Lcom/android/settings/wfd/WfdHelpActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdHelpActivity;->finish()V

    .line 152
    return-void
.end method
