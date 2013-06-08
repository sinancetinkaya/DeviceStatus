.class Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment$2;
.super Ljava/lang/Object;
.source "FactoryTestMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->finish()V

    .line 857
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;->dismiss()V

    .line 858
    return-void
.end method
