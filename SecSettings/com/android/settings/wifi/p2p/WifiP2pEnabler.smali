.class public Lcom/android/settings/wifi/p2p/WifiP2pEnabler;
.super Ljava/lang/Object;
.source "WifiP2pEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mCheckBox:Landroid/preference/CheckBoxPreference;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pEnabler;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->handleP2pStateChanged(I)V

    return-void
.end method

.method private handleP2pStateChanged(I)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 104
    packed-switch p1, :pswitch_data_3a

    .line 114
    const-string v0, "WifiP2pEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled wifi state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_21
    return-void

    .line 106
    :pswitch_22
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_21

    .line 110
    :pswitch_2d
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_21

    .line 104
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v1, :cond_6

    .line 99
    .end local p2
    :goto_5
    return v3

    .line 91
    .restart local p2
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 92
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 94
    .local v0, enable:Z
    if-eqz v0, :cond_1b

    .line 95
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_5

    .line 97
    :cond_1b
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_5
.end method
