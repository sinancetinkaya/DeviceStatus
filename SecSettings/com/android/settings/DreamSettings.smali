.class public Lcom/android/settings/DreamSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DreamSettings$Enabler;
    }
.end annotation


# instance fields
.field private mActivateOnDockPreference:Landroid/preference/CheckBoxPreference;

.field private mEnableSwitch:Landroid/widget/Switch;

.field private mEnabler:Lcom/android/settings/DreamSettings$Enabler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 100
    return-void
.end method

.method public static isScreenSaverEnabled(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screensaver_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static setScreenSaverEnabled(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screensaver_enabled"

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    return-void

    .line 96
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    const v3, 0x7f070027

    invoke-virtual {p0, v3}, Lcom/android/settings/DreamSettings;->addPreferencesFromResource(I)V

    .line 64
    const-string v3, "activate_on_dock"

    invoke-virtual {p0, v3}, Lcom/android/settings/DreamSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DreamSettings;->mActivateOnDockPreference:Landroid/preference/CheckBoxPreference;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 68
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DreamSettings;->mEnableSwitch:Landroid/widget/Switch;

    .line 70
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_5a

    move-object v2, v0

    .line 71
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 75
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 77
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/DreamSettings;->mEnableSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 78
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 80
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mEnableSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 84
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f090436

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 87
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_5a
    new-instance v3, Lcom/android/settings/DreamSettings$Enabler;

    iget-object v4, p0, Lcom/android/settings/DreamSettings;->mEnableSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/settings/DreamSettings$Enabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/DreamSettings;->mEnabler:Lcom/android/settings/DreamSettings$Enabler;

    .line 88
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mEnabler:Lcom/android/settings/DreamSettings$Enabler;

    if-eqz v0, :cond_9

    .line 144
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mEnabler:Lcom/android/settings/DreamSettings$Enabler;

    invoke-virtual {v0}, Lcom/android/settings/DreamSettings$Enabler;->pause()V

    .line 147
    :cond_9
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 148
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mActivateOnDockPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screensaver_activate_on_dock"

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mActivateOnDockPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_13
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    :cond_16
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 153
    :cond_1b
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 131
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mEnabler:Lcom/android/settings/DreamSettings$Enabler;

    if-eqz v1, :cond_a

    .line 132
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mEnabler:Lcom/android/settings/DreamSettings$Enabler;

    invoke-virtual {v1}, Lcom/android/settings/DreamSettings$Enabler;->resume()V

    .line 135
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screensaver_activate_on_dock"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1f

    .line 137
    .local v0, currentActivateOnDock:Z
    :goto_16
    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mActivateOnDockPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 139
    return-void

    .line 135
    .end local v0           #currentActivateOnDock:Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_16
.end method
