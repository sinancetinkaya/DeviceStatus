.class public Lcom/android/settings/guide/BtGuider;
.super Lcom/android/settings/guide/ListGuiderBase;
.source "BtGuider.java"


# instance fields
.field private mBTEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/settings/guide/ListGuiderBase;-><init>(Landroid/app/Activity;)V

    .line 16
    iput-boolean v1, p0, Lcom/android/settings/guide/BtGuider;->mBTEnabled:Z

    .line 20
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 21
    .local v0, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    iput-boolean v1, p0, Lcom/android/settings/guide/BtGuider;->mBTEnabled:Z

    .line 22
    return-void
.end method


# virtual methods
.method public showHelpDialog(Z)V
    .registers 9
    .parameter "isBluetoothOn"

    .prologue
    const/4 v6, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/guide/ListGuiderBase;->showHelpDialog(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/guide/BtGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/app/ListActivity;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 32
    .local v1, list:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v3, :cond_1e

    iget-object v4, p0, Lcom/android/settings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    if-eqz p1, :cond_1b

    sget-object v3, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    :goto_18
    if-ne v4, v3, :cond_1e

    .line 65
    :goto_1a
    return-void

    .line 32
    :cond_1b
    sget-object v3, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    goto :goto_18

    .line 37
    :cond_1e
    iget-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v3}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5c

    sget-object v3, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    :goto_28
    iput-object v3, p0, Lcom/android/settings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    .line 40
    new-instance v3, Lcom/android/settings/guide/BtGuider$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/guide/BtGuider$1;-><init>(Lcom/android/settings/guide/BtGuider;Landroid/widget/ListView;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    if-eqz p1, :cond_5f

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/guide/BtGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040064

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, guideView:Landroid/view/View;
    const/4 v2, 0x0

    .line 55
    .local v2, v:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/settings/guide/BtGuider;->mBTEnabled:Z

    if-nez v3, :cond_58

    const v3, 0x7f0b0006

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 57
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .end local v2           #v:Landroid/view/View;
    :cond_58
    :goto_58
    invoke-super {p0, v0}, Lcom/android/settings/guide/ListGuiderBase;->showDialog(Landroid/view/View;)V

    goto :goto_1a

    .line 37
    .end local v0           #guideView:Landroid/view/View;
    :cond_5c
    sget-object v3, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    goto :goto_28

    .line 60
    :cond_5f
    invoke-virtual {p0}, Lcom/android/settings/guide/BtGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040063

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #guideView:Landroid/view/View;
    goto :goto_58
.end method
