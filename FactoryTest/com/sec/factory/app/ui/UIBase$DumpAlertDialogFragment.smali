.class public Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "UIBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DumpAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 449
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;
    .registers 2
    .parameter "title"

    .prologue
    .line 451
    new-instance v0, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;

    invoke-direct {v0}, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;-><init>()V

    .line 455
    .local v0, alertDialogFragment:Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 460
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Start Dump"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment$3;-><init>(Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "CANCEL"

    new-instance v2, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment$2;-><init>(Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment$1;-><init>(Lcom/sec/factory/app/ui/UIBase$DumpAlertDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
