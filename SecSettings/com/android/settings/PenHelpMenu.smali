.class public Lcom/android/settings/PenHelpMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenHelpMenu.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpMenu;->addPreferencesFromResource(I)V

    .line 33
    return-void
.end method
