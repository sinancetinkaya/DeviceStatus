.class public Lcom/android/settings/guide/WifiGuider;
.super Lcom/android/settings/guide/ListGuiderBase;
.source "WifiGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mWiFiEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/guide/ListGuiderBase;-><init>(Landroid/app/Activity;)V

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/guide/WifiGuider;->mWiFiEnabled:Z

    .line 25
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 27
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/guide/WifiGuider;->mWiFiEnabled:Z

    .line 28
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 87
    const/4 v0, -0x2

    if-ne p2, v0, :cond_6

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiGuider;->showCompleteDialog()V

    .line 91
    :cond_6
    return-void
.end method

.method public showHelpDialog(Z)V
    .registers 11
    .parameter "isWifiOn"

    .prologue
    const/4 v8, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/guide/ListGuiderBase;->showHelpDialog(Z)V

    .line 36
    iget-object v5, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v5, :cond_14

    iget-object v6, p0, Lcom/android/settings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    if-eqz p1, :cond_11

    sget-object v5, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    :goto_e
    if-ne v6, v5, :cond_14

    .line 83
    :cond_10
    :goto_10
    return-void

    .line 36
    :cond_11
    sget-object v5, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    goto :goto_e

    .line 41
    :cond_14
    iget-object v5, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v5}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_78

    sget-object v5, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    :goto_1e
    iput-object v5, p0, Lcom/android/settings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Landroid/app/ListActivity;

    invoke-virtual {v5}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 46
    .local v1, list:Landroid/widget/ListView;
    new-instance v5, Lcom/android/settings/guide/WifiGuider$1;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/guide/WifiGuider$1;-><init>(Lcom/android/settings/guide/WifiGuider;Landroid/widget/ListView;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v7}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    iget-object v5, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v5, :cond_50

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 58
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 60
    .local v3, wifiApState:I
    const/16 v5, 0xc

    if-eq v3, v5, :cond_10

    const/16 v5, 0xd

    if-eq v3, v5, :cond_10

    .line 68
    .end local v3           #wifiApState:I
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_50
    if-eqz p1, :cond_7b

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04006b

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, guideView:Landroid/view/View;
    const/4 v2, 0x0

    .line 73
    .local v2, v:Landroid/view/View;
    iget-boolean v5, p0, Lcom/android/settings/guide/WifiGuider;->mWiFiEnabled:Z

    if-nez v5, :cond_74

    const v5, 0x7f0b0006

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_74

    .line 75
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .end local v2           #v:Landroid/view/View;
    :cond_74
    :goto_74
    invoke-super {p0, v0}, Lcom/android/settings/guide/ListGuiderBase;->showDialog(Landroid/view/View;)V

    goto :goto_10

    .line 41
    .end local v0           #guideView:Landroid/view/View;
    .end local v1           #list:Landroid/widget/ListView;
    :cond_78
    sget-object v5, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    goto :goto_1e

    .line 78
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_7b
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04006a

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #guideView:Landroid/view/View;
    goto :goto_74
.end method
