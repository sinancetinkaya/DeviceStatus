.class Lcom/android/settings/fmm/SimChangeAlert$4;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/SimChangeAlert;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    iput-object p2, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 266
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #calls: Lcom/android/settings/fmm/SimChangeAlert;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/fmm/SimChangeAlert;->access$400(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "change_alert"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1f

    .line 267
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v2}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "change_alert"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    :cond_1f
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #getter for: Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/fmm/SimChangeAlert;->access$600(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    #calls: Lcom/android/settings/fmm/SimChangeAlert;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/fmm/SimChangeAlert;->access$500(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "change_alert"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_34

    move v0, v1

    :cond_34
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 270
    sput-boolean v1, Lcom/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    .line 272
    :cond_41
    return-void
.end method
