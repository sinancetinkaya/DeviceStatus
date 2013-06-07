.class Lcom/android/settings/LockScreenSettings$2;
.super Ljava/lang/Object;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockScreenSettings;->setCameraShortCut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LockScreenSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/settings/LockScreenSettings$2;->this$0:Lcom/android/settings/LockScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 532
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings$2;->this$0:Lcom/android/settings/LockScreenSettings;

    #getter for: Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/LockScreenSettings;->access$100(Lcom/android/settings/LockScreenSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings$2;->this$0:Lcom/android/settings/LockScreenSettings;

    invoke-virtual {v2}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_unlock_camera_short_cut"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 533
    return-void
.end method
