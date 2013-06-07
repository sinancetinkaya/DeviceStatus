.class Lcom/android/settings/wfd/WfdPickerActivity$7;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/16 v2, 0xd

    .line 1455
    const-string v0, "WfdPickerActivity"

    const-string v1, "createErrorHandlingDialog ok is clicked.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2900(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1458
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    .line 1461
    :cond_2e
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v0

    if-eq v0, v2, :cond_3e

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v0

    if-ne v0, v2, :cond_43

    .line 1465
    :cond_3e
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$7;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 1467
    :cond_43
    return-void
.end method
