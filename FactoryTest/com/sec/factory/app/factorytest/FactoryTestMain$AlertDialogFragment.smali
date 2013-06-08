.class public Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "FactoryTestMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 841
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;
    .registers 4
    .parameter "title"

    .prologue
    .line 843
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;

    invoke-direct {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;-><init>()V

    .line 844
    .local v0, alertDialogFragment:Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 845
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 846
    invoke-virtual {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 847
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 853
    .local v0, title:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "CP Unknown"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment$2;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment$1;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMain$AlertDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
