.class public Lcom/android/settings/motion/MotionSensitivitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSensitivitySettings.java"


# instance fields
.field private mGlanceView:Landroid/preference/Preference;

.field private mKeyOfLatestClickedMenu:Ljava/lang/String;

.field private mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

.field private mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

.field private mSensitivitySettingCategory:Landroid/preference/PreferenceCategory;

.field private mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

.field private mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mKeyOfLatestClickedMenu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 125
    const-string v0, "MotionsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    packed-switch p1, :pswitch_data_6a

    .line 141
    :cond_25
    :goto_25
    return-void

    .line 128
    :pswitch_26
    const/16 v0, 0x65

    if-ne p2, v0, :cond_25

    .line 129
    const-string v0, "tilt_sensitivity"

    iget-object v1, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mKeyOfLatestClickedMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 130
    iget-object v0, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_25

    .line 131
    :cond_3a
    const-string v0, "tilt_to_scroll_list_sensitivity"

    iget-object v1, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mKeyOfLatestClickedMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 132
    iget-object v0, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_25

    .line 133
    :cond_4a
    const-string v0, "pan_sensitivity"

    iget-object v1, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mKeyOfLatestClickedMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 134
    iget-object v0, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_25

    .line 135
    :cond_5a
    const-string v0, "pan_to_browse_image_sensitivity"

    iget-object v1, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mKeyOfLatestClickedMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 136
    iget-object v0, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_25

    .line 126
    :pswitch_data_6a
    .packed-switch 0xc
        :pswitch_26
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v2, 0x7f07003b

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/MotionSensitivitySettings;->addPreferencesFromResource(I)V

    .line 52
    const-string v2, "glance_view"

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/MotionSensitivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mGlanceView:Landroid/preference/Preference;

    .line 53
    const-string v2, "category_sensitivity_setting"

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/MotionSensitivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mSensitivitySettingCategory:Landroid/preference/PreferenceCategory;

    .line 55
    const-string v2, "tilt_sensitivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/MotionSensitivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/motion/SensitivityPreference;

    iput-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    .line 56
    const-string v2, "tilt_to_scroll_list_sensitivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/MotionSensitivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/motion/SensitivityPreference;

    iput-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    .line 57
    const-string v2, "pan_sensitivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/MotionSensitivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/motion/SensitivityPreference;

    iput-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    .line 58
    const-string v2, "pan_to_browse_image_sensitivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/MotionSensitivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/motion/SensitivityPreference;

    iput-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    .line 61
    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const/16 v3, 0x44d

    invoke-virtual {v2, v3}, Lcom/android/settings/motion/SensitivityPreference;->setMotion(I)V

    .line 62
    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const/16 v3, 0x44e

    invoke-virtual {v2, v3}, Lcom/android/settings/motion/SensitivityPreference;->setMotion(I)V

    .line 63
    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const/16 v3, 0x4b1

    invoke-virtual {v2, v3}, Lcom/android/settings/motion/SensitivityPreference;->setMotion(I)V

    .line 64
    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const/16 v3, 0x4b2

    invoke-virtual {v2, v3}, Lcom/android/settings/motion/SensitivityPreference;->setMotion(I)V

    .line 66
    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/motion/SensitivityPreference;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 67
    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/motion/SensitivityPreference;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 68
    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/motion/SensitivityPreference;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 69
    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/motion/SensitivityPreference;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSensitivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 73
    .local v1, ps:Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 92
    .local v0, isTablet:Z
    iget-object v2, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mKeyOfLatestClickedMenu:Ljava/lang/String;

    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 107
    const-string v1, "MotionsSettings"

    const-string v4, "onResume()"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSensitivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    .local v0, mResolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const-string v1, "motion_zooming"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_48

    move v1, v2

    :goto_1b
    invoke-virtual {v4, v1}, Lcom/android/settings/motion/SensitivityPreference;->setEnabled(Z)V

    .line 111
    iget-object v4, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mTiltToScrollListSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const-string v1, "motion_tilt_to_list_scrolling"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v2

    :goto_29
    invoke-virtual {v4, v1}, Lcom/android/settings/motion/SensitivityPreference;->setEnabled(Z)V

    .line 112
    iget-object v4, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const-string v1, "motion_panning"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4c

    move v1, v2

    :goto_37
    invoke-virtual {v4, v1}, Lcom/android/settings/motion/SensitivityPreference;->setEnabled(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/motion/MotionSensitivitySettings;->mPanToBrowseImageSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    const-string v4, "motion_pan_to_browse_image"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4e

    :goto_44
    invoke-virtual {v1, v2}, Lcom/android/settings/motion/SensitivityPreference;->setEnabled(Z)V

    .line 114
    return-void

    :cond_48
    move v1, v3

    .line 110
    goto :goto_1b

    :cond_4a
    move v1, v3

    .line 111
    goto :goto_29

    :cond_4c
    move v1, v3

    .line 112
    goto :goto_37

    :cond_4e
    move v2, v3

    .line 113
    goto :goto_44
.end method
