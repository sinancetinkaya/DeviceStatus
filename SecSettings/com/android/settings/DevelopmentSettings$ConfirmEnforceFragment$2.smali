.class Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment$2;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment$2;->this$0:Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment$2;->this$0:Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;

    invoke-virtual {v0}, Lcom/android/settings/DevelopmentSettings$ConfirmEnforceFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DevelopmentSettings;

    #calls: Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V
    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->access$100(Lcom/android/settings/DevelopmentSettings;)V

    .line 1071
    return-void
.end method
