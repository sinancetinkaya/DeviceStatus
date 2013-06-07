.class public Lcom/android/settings/fmm/TabletRemoteControls;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TabletRemoteControls.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mGoogleAccountContext:Landroid/content/Context;

.field private mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mGoogleAccountPref:Landroid/preference/Preference;

.field private mHasGoogleAccount:Z

.field private mHasGoogleDescription:Z

.field private mHasSamsungAccount:Z

.field private mNetworkPref:Landroid/preference/CheckBoxPreference;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mSamsungAccountPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleAccount:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleDescription:Z

    .line 76
    new-instance v0, Lcom/android/settings/fmm/TabletRemoteControls$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fmm/TabletRemoteControls$1;-><init>(Lcom/android/settings/fmm/TabletRemoteControls;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/TabletRemoteControls;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fmm/TabletRemoteControls;)Landroid/widget/Switch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private updateAccountInformation()V
    .registers 12

    .prologue
    const v10, 0x7f09077e

    const v9, 0x7f0400ce

    const v8, 0x7f040092

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 196
    .local v1, manager:Landroid/accounts/AccountManager;
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 197
    .local v2, samsungAccnts:[Landroid/accounts/Account;
    array-length v3, v2

    if-lez v3, :cond_88

    move v3, v4

    :goto_1d
    iput-boolean v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    .line 198
    iget-boolean v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    if-eqz v3, :cond_8a

    .line 199
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    aget-object v6, v2, v5

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v7, v7, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 208
    :goto_44
    const-string v3, "com.google"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 209
    .local v0, googleAccnts:[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_9d

    :goto_4d
    iput-boolean v4, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleAccount:Z

    .line 210
    iget-boolean v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleAccount:Z

    if-eqz v3, :cond_9f

    .line 211
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    aget-object v4, v0, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v5, v5, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 220
    :goto_74
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_87

    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    if-eqz v3, :cond_87

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    :cond_87
    return-void

    .end local v0           #googleAccnts:[Landroid/accounts/Account;
    :cond_88
    move v3, v5

    .line 197
    goto :goto_1d

    .line 203
    :cond_8a
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 204
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    const v6, 0x7f090901

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 205
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_44

    .restart local v0       #googleAccnts:[Landroid/accounts/Account;
    :cond_9d
    move v4, v5

    .line 209
    goto :goto_4d

    .line 215
    :cond_9f
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 216
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    const v4, 0x7f090902

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 217
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_74
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 187
    if-eqz p2, :cond_d

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    :goto_c
    return-void

    .line 190
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v10, -0x2

    const/4 v8, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const-string v6, "TabletRemoteControls"

    const-string v7, "TabletRemoteControls"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 93
    .local v0, activity:Landroid/app/Activity;
    new-instance v6, Landroid/widget/Switch;

    invoke-direct {v6, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    .line 95
    instance-of v6, v0, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_51

    move-object v5, v0

    .line 96
    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 97
    .local v5, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 98
    .local v4, padding:I
    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8, v8, v4, v8}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 100
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 102
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    .line 104
    .end local v4           #padding:I
    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_51
    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    const v6, 0x7f070049

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/TabletRemoteControls;->addPreferencesFromResource(I)V

    .line 108
    const-string v6, "samsung_account"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/TabletRemoteControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    .line 109
    const-string v6, "google_account"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/TabletRemoteControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    .line 110
    const-string v6, "location_network"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/TabletRemoteControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 114
    .local v1, desc:[Landroid/accounts/AuthenticatorDescription;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_83
    array-length v6, v1

    if-ge v3, v6, :cond_96

    .line 115
    aget-object v6, v1, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v7, "com.osp.app.signin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11b

    .line 116
    aget-object v6, v1, v3

    iput-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    .line 121
    :cond_96
    :try_start_96
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountContext:Landroid/content/Context;
    :try_end_a5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_96 .. :try_end_a5} :catch_11f

    .line 125
    :goto_a5
    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v8, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    const/4 v3, 0x0

    :goto_b9
    array-length v6, v1

    if-ge v3, v6, :cond_cf

    .line 129
    aget-object v6, v1, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_129

    .line 130
    aget-object v6, v1, v3

    iput-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    .line 131
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleDescription:Z

    .line 136
    :cond_cf
    iget-boolean v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleDescription:Z

    if-eqz v6, :cond_f5

    .line 138
    :try_start_d3
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountContext:Landroid/content/Context;
    :try_end_e2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d3 .. :try_end_e2} :catch_12c

    .line 142
    :goto_e2
    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v8, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_f5
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_107

    .line 146
    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f090537

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 148
    :cond_107
    iget-object v6, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "network"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    return-void

    .line 114
    :cond_11b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_83

    .line 122
    :catch_11f
    move-exception v2

    .line 123
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TabletRemoteControls"

    const-string v7, "No Package name for account type com.osp.app.signin"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a5

    .line 128
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_129
    add-int/lit8 v3, v3, 0x1

    goto :goto_b9

    .line 139
    :catch_12c
    move-exception v2

    .line 140
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TabletRemoteControls"

    const-string v7, "No Package name for account type com.google"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 175
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 176
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1d

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 243
    :cond_18
    :goto_18
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 230
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3c

    .line 231
    iget-boolean v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    if-nez v0, :cond_18

    .line 232
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v9, mIntent:Landroid/content/Intent;
    const-string v0, "com.osp.app.signin"

    const-string v1, "com.osp.app.signin.AccountView"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v0, "MODE"

    const-string v1, "REMOTE_CONTROLS"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v9}, Lcom/android/settings/fmm/TabletRemoteControls;->startActivity(Landroid/content/Intent;)V

    goto :goto_18

    .line 237
    .end local v9           #mIntent:Landroid/content/Intent;
    :cond_3c
    iget-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_18

    .line 238
    iget-boolean v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mHasGoogleAccount:Z

    if-nez v0, :cond_18

    .line 239
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v8, addAccountOptions:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_18
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 154
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_e

    .line 155
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "GoogleAccountPreferences"

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    .local v0, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "pref_fmm"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 159
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 164
    :goto_25
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_66

    :goto_37
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "remote_control"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->updateAccountInformation()V

    .line 169
    iget-object v1, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    return-void

    .line 161
    :cond_60
    iget-object v3, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_25

    :cond_66
    move v1, v2

    .line 164
    goto :goto_37
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 182
    iget-object v0, p0, Lcom/android/settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_d
    return-void
.end method
