.class Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "UIBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment$1;->this$0:Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dInterface"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 478
    const/4 v0, 0x4

    if-ne p2, v0, :cond_8

    .line 480
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment$1;->this$0:Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;->dismiss()V

    .line 482
    :cond_8
    const/4 v0, 0x1

    return v0
.end method
