.class public Lcom/android/settings/wifi/mobileap/WifiApLanSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDhcpEnable:Z

.field private mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

.field private mDhcpEndIp:Ljava/lang/String;

.field private mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

.field private mDhcpLeaseTime:I

.field private mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

.field private mDhcpMaxUser:I

.field private mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

.field private mDhcpStartIp:Ljava/lang/String;

.field private mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

.field private mLocalIp:Ljava/lang/String;

.field private mLocalIpETPref:Landroid/preference/EditTextPreference;

.field private mPreferenceKeys:[Ljava/lang/String;

.field private mServerConfig:Landroid/net/DhcpServerConfiguration;

.field private mSubnetmask:Ljava/lang/String;

.field private mSubnetmaskETPref:Landroid/preference/EditTextPreference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wifiap_local_ip_addrs"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wifiap_local_subnetmask"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wifiap_dhcp_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "wifiap_dhcp_start_ip"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wifiap_dhcp_end_ip"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "wifiap_dhcp_lease_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wifiap_dhcp_max_user"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mPreferenceKeys:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->saveAndFinishServerSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->readServerSettings()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->fillLayout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/DhcpServerConfiguration;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/ConnectivityManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiConfiguration;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/DhcpServerConfiguration;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    return-object p1
.end method

.method private convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "referenceIP"
    .parameter "targetIP"
    .parameter "subnetMask"

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v0

    .line 465
    .local v0, intReferenceIP:I
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v2

    .line 466
    .local v2, intTargetIP:I
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v1

    .line 468
    .local v1, intSubnetMask:I
    and-int v3, v0, v1

    .line 469
    .local v3, networkAddress:I
    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v2, v4

    .line 470
    or-int/2addr v2, v3

    .line 472
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->intToIp(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private fillLayout()V
    .registers 7

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090313

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    if-eqz v1, :cond_85

    .line 152
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    :goto_4b
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    const v2, 0x7f090315

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    return-void

    .line 155
    :cond_85
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLastNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, endIP:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4b
.end method

.method private getLastNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "anyIP"
    .parameter "subnetMask"

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v1

    .line 477
    .local v1, intanyIP:I
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v0

    .line 479
    .local v0, intSubnetMask:I
    xor-int/lit8 v2, v0, -0x1

    or-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->intToIp(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLocalServerConfig()Landroid/net/DhcpServerConfiguration;
    .registers 4

    .prologue
    .line 510
    const-string v1, "WifiApLanSettings"

    const-string v2, "getServerConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v0, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v0}, Landroid/net/DhcpServerConfiguration;-><init>()V

    .line 513
    .local v0, mCurrentServerConfig:Landroid/net/DhcpServerConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 514
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 515
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    iput-boolean v1, v0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 516
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 518
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    if-eqz v1, :cond_2d

    .line 519
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 524
    :goto_24
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    iput v1, v0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 525
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    iput v1, v0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    .line 526
    return-object v0

    .line 521
    :cond_2d
    const-string v1, "static"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    goto :goto_24
.end method

.method private intToIp(I)Ljava/lang/String;
    .registers 4
    .parameter "i"

    .prologue
    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ipToInt(Ljava/lang/String;)I
    .registers 9
    .parameter "addr"

    .prologue
    const/4 v6, 0x4

    const/4 v4, -0x1

    .line 483
    if-nez p1, :cond_5

    .line 499
    :cond_4
    :goto_4
    return v4

    .line 486
    :cond_5
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, addrArray:[Ljava/lang/String;
    array-length v5, v0

    if-ne v5, v6, :cond_4

    .line 491
    new-array v3, v6, [I

    .line 492
    .local v3, ipOct:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    if-ge v2, v6, :cond_20

    .line 494
    :try_start_13
    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v2
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1b} :catch_1e

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 495
    :catch_1e
    move-exception v1

    .line 496
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 499
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_20
    const/4 v4, 0x0

    aget v4, v3, v4

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget v5, v3, v5

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v3, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    const/4 v5, 0x3

    aget v5, v3, v5

    add-int/2addr v4, v5

    goto :goto_4
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .registers 4
    .parameter "testIp"

    .prologue
    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    .line 427
    const/4 v1, 0x0

    .line 430
    :goto_7
    return v1

    .line 429
    :cond_8
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 430
    .local v0, validIp:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_7
.end method

.method private isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "firstIp"
    .parameter "secondIp"
    .parameter "subnetMask"

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v0

    .line 457
    .local v0, intFirstIp:I
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v1

    .line 458
    .local v1, intSecondIp:I
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v2

    .line 460
    .local v2, intSubnetMask:I
    and-int v3, v0, v2

    and-int v4, v1, v2

    if-ne v3, v4, :cond_14

    const/4 v3, 0x1

    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method private isValidSubnetMask(Ljava/lang/String;)Z
    .registers 9
    .parameter "subnet"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 434
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v2

    .line 435
    .local v2, intsubnet:I
    if-eqz v2, :cond_11

    const v6, 0xffff

    xor-int/2addr v6, v2

    if-eqz v6, :cond_11

    const/4 v6, -0x1

    if-ne v2, v6, :cond_13

    :cond_11
    move v4, v5

    .line 452
    :cond_12
    :goto_12
    return v4

    .line 438
    :cond_13
    const v3, 0x7fffffff

    .line 439
    .local v3, testMask:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    const/16 v6, 0x1f

    if-ge v1, v6, :cond_31

    .line 440
    ushr-int/lit8 v2, v2, 0x1

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v4, :cond_2a

    move v0, v4

    .line 441
    .local v0, bitValue:Z
    :goto_22
    if-eqz v0, :cond_2c

    .line 442
    xor-int v6, v2, v3

    if-eqz v6, :cond_12

    move v4, v5

    .line 445
    goto :goto_12

    .end local v0           #bitValue:Z
    :cond_2a
    move v0, v5

    .line 440
    goto :goto_22

    .line 448
    .restart local v0       #bitValue:Z
    :cond_2c
    ushr-int/lit8 v3, v3, 0x1

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .end local v0           #bitValue:Z
    :cond_31
    move v4, v5

    .line 452
    goto :goto_12
.end method

.method private readServerSettings()V
    .registers 3

    .prologue
    .line 530
    const-string v0, "WifiApLanSettings"

    const-string v1, "readServerSettings 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    .line 532
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    if-nez v0, :cond_4a

    .line 533
    new-instance v0, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v0}, Landroid/net/DhcpServerConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    .line 534
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const-string v1, "192.168.1.1"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const-string v1, "255.255.255.0"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 537
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const-string v1, "192.168.1.100"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const-string v1, "192.168.1.254"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const/16 v1, 0x5a

    iput v1, v0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 540
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const/16 v1, 0x64

    iput v1, v0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    .line 542
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    .line 544
    :cond_4a
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-boolean v0, v0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    .line 547
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    .line 549
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget v0, v0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    .line 550
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget v0, v0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    .line 551
    return-void
.end method

.method private saveAndFinishServerSettings()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 591
    const-string v4, "WifiApLanSettings"

    const-string v5, "saveAndFinishServerSettings"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/DhcpServerConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 594
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 595
    .local v3, wifiApState:I
    const/4 v0, 0x0

    .line 597
    .local v0, ClientNum:I
    const/16 v4, 0xd

    if-ne v3, v4, :cond_2d

    .line 598
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 599
    .local v2, msg:Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v2, Landroid/os/Message;->what:I

    .line 600
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 603
    .end local v2           #msg:Landroid/os/Message;
    :cond_2d
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_78

    .line 604
    if-lez v0, :cond_45

    .line 605
    const-string v4, "WifiApLanSettings"

    const-string v5, "saveAndFinishServerSettings : WifiAP enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->showDialog(I)V

    .line 625
    .end local v0           #ClientNum:I
    .end local v3           #wifiApState:I
    :cond_44
    :goto_44
    return-void

    .line 608
    .restart local v0       #ClientNum:I
    .restart local v3       #wifiApState:I
    :cond_45
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    .line 610
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    const-string v5, "SAMSUNG_HOTSPOT"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    .line 611
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 612
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "DHCP_CHANGE"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 613
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 615
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 616
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v5, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->finish()V

    goto :goto_44

    .line 621
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_78
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    .line 622
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->finish()V

    goto :goto_44
.end method

.method private saveServerSettings()V
    .registers 9

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    .line 554
    const-string v4, "WifiApLanSettings"

    const-string v5, "saveServerSettings"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/DhcpServerConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 557
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 558
    .local v3, wifiApState:I
    const/4 v0, 0x0

    .line 560
    .local v0, ClientNum:I
    const/16 v4, 0xd

    if-ne v3, v4, :cond_2d

    .line 561
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 562
    .local v2, msg:Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 563
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 566
    .end local v2           #msg:Landroid/os/Message;
    :cond_2d
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_77

    .line 567
    if-lez v0, :cond_44

    .line 568
    const-string v4, "WifiApLanSettings"

    const-string v5, "saveServerSettings : WifiAP enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->showDialog(I)V

    .line 588
    .end local v0           #ClientNum:I
    .end local v3           #wifiApState:I
    :goto_43
    return-void

    .line 572
    .restart local v0       #ClientNum:I
    .restart local v3       #wifiApState:I
    :cond_44
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    .line 574
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    const-string v5, "SAMSUNG_HOTSPOT"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    .line 575
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 576
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "DHCP_CHANGE"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 577
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 579
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 580
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v5, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 587
    .end local v0           #ClientNum:I
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v3           #wifiApState:I
    :cond_73
    :goto_73
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->finish()V

    goto :goto_43

    .line 583
    .restart local v0       #ClientNum:I
    .restart local v3       #wifiApState:I
    :cond_77
    const-string v4, "WifiApLanSettings"

    const-string v5, "saveServerSettings : Just saveDhcpServerConfiguration"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    goto :goto_73
.end method

.method private setLayout()V
    .registers 4

    .prologue
    .line 128
    const-string v2, "wifiap_local_ip_addrs"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    .line 129
    const-string v2, "wifiap_local_subnetmask"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    .line 130
    const-string v2, "wifiap_dhcp_enable"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

    .line 131
    const-string v2, "wifiap_dhcp_start_ip"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    .line 132
    const-string v2, "wifiap_dhcp_end_ip"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    .line 133
    const-string v2, "wifiap_dhcp_lease_time"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    .line 134
    const-string v2, "wifiap_dhcp_max_user"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    .line 136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_47
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5a

    .line 137
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 138
    .local v1, preference:Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 140
    .end local v1           #preference:Landroid/preference/Preference;
    :cond_5a
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 106
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 108
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 109
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->readServerSettings()V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->setLayout()V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->fillLayout()V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->setHasOptionsMenu(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->addPreferencesFromResource(I)V

    .line 102
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    const v6, 0x7f090320

    const v5, 0x7f09031f

    const v4, 0x7f09031e

    const v3, 0x7f09031d

    const v2, 0x7f09031c

    .line 311
    packed-switch p1, :pswitch_data_ba

    .line 418
    const/4 v0, 0x0

    :goto_13
    return-object v0

    .line 313
    :pswitch_14
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_13

    .line 341
    :pswitch_3a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_13

    .line 369
    :pswitch_60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090321

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090322

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_13

    .line 394
    :pswitch_8c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090321

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090322

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_13

    .line 311
    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_14
        :pswitch_3a
        :pswitch_60
        :pswitch_8c
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 167
    const v0, 0x7f0902ac

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 170
    const/4 v0, 0x1

    const v1, 0x7f0902ab

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 172
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 422
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 423
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 178
    :pswitch_d
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->saveServerSettings()V

    goto :goto_c

    .line 181
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->finish()V

    goto :goto_c

    .line 176
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v5, 0x7f090317

    const/4 v7, 0x2

    const v6, 0x7f0902ad

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 196
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_10

    .line 306
    .end local p2
    :goto_f
    return v2

    .line 199
    .restart local p2
    :cond_10
    const-string v4, "wifiap_local_ip_addrs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 200
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    .line 201
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 202
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 206
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 207
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 211
    :cond_61
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 212
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    .line 213
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_87
    :goto_87
    move v2, v3

    .line 306
    goto :goto_f

    .line 218
    :cond_89
    const-string v4, "WifiApLanSettings"

    const-string v5, "Not a valid IP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 220
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v2, v2, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    goto :goto_87

    .line 222
    .restart local p2
    :cond_a0
    const-string v4, "wifiap_local_subnetmask"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_131

    .line 223
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    .line 224
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isValidSubnetMask(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_119

    .line 225
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 230
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f1

    .line 231
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    .line 232
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 235
    :cond_f1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 236
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    .line 237
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_87

    .line 241
    :cond_119
    const-string v4, "WifiApLanSettings"

    const-string v5, "Not a valid Subnet"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 243
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v2, v2, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    goto/16 :goto_87

    .line 245
    .restart local p2
    :cond_131
    const-string v4, "wifiap_dhcp_enable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15f

    .line 246
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    .line 247
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 248
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    if-eqz v2, :cond_87

    .line 249
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLastNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    .line 250
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_87

    .line 252
    .restart local p2
    :cond_15f
    const-string v4, "wifiap_dhcp_start_ip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ac

    .line 253
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    .line 254
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_194

    .line 255
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18f

    .line 256
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_87

    .line 259
    :cond_18f
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->showDialog(I)V

    goto/16 :goto_87

    .line 262
    :cond_194
    const-string v4, "WifiApLanSettings"

    const-string v5, "Not a valid IP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 264
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v2, v2, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    goto/16 :goto_87

    .line 266
    .restart local p2
    :cond_1ac
    const-string v4, "wifiap_dhcp_end_ip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f9

    .line 267
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    .line 268
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e1

    .line 269
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 270
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_87

    .line 273
    :cond_1dc
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->showDialog(I)V

    goto/16 :goto_87

    .line 276
    :cond_1e1
    const-string v4, "WifiApLanSettings"

    const-string v5, "Not a valid IP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 278
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v2, v2, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    goto/16 :goto_87

    .line 280
    .restart local p2
    :cond_1f9
    const-string v2, "wifiap_dhcp_lease_time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23e

    .line 282
    :try_start_201
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    .line 283
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    if-lt v2, v7, :cond_236

    .line 284
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    const v4, 0x7f090315

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_87

    .line 289
    :catch_232
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 290
    goto/16 :goto_f

    .line 287
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_236
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget v2, v2, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I
    :try_end_23c
    .catch Ljava/lang/NumberFormatException; {:try_start_201 .. :try_end_23c} :catch_232

    goto/16 :goto_87

    .line 292
    .restart local p2
    :cond_23e
    const-string v2, "wifiap_dhcp_max_user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 294
    :try_start_246
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    .line 295
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    if-lez v2, :cond_26e

    .line 296
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_87

    .line 301
    :catch_26a
    move-exception v0

    .restart local v0       #e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 302
    goto/16 :goto_f

    .line 299
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_26e
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget v2, v2, Landroid/net/DhcpServerConfiguration;->maxClient:I

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I
    :try_end_274
    .catch Ljava/lang/NumberFormatException; {:try_start_246 .. :try_end_274} :catch_26a

    goto/16 :goto_87
.end method
