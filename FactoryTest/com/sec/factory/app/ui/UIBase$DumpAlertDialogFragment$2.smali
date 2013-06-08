.class Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment$2;
.super Ljava/lang/Object;
.source "UIBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 469
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment$2;->this$0:Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment$2;->this$0:Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;->dismiss()V

    .line 474
    return-void
.end method
