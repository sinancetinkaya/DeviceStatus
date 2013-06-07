.class public Lcom/android/settings/guide/ListGuiderBase;
.super Lcom/android/settings/guide/GuiderBase;
.source "ListGuiderBase.java"

# interfaces
.implements Lcom/android/settings/guide/GuiderLifecyrcleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/ListGuiderBase$GuideStates;
    }
.end annotation


# instance fields
.field mShowedDialog:Lcom/android/settings/guide/ListGuiderBase$GuideStates;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    .line 41
    instance-of v0, p1, Landroid/app/ListActivity;

    if-nez v0, :cond_12

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expecting ListActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_12
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-super {p0}, Lcom/android/settings/guide/GuiderBase;->finish()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 123
    .local v0, activity:Landroid/app/ListActivity;
    if-nez v0, :cond_10

    move-object v1, v2

    .line 125
    .local v1, list:Landroid/widget/ListView;
    :goto_d
    if-nez v1, :cond_15

    .line 130
    :goto_f
    return-void

    .line 123
    .end local v1           #list:Landroid/widget/ListView;
    :cond_10
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_d

    .line 129
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_15
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_f
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 110
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/ListGuiderBase;->mShowedDialog:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/guide/ListGuiderBase;->showHelpDialog()V

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 49
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/guide/ListGuiderBase;->finish()V

    .line 55
    iput-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 59
    .local v0, activity:Landroid/app/ListActivity;
    if-nez v0, :cond_f

    .line 68
    :cond_e
    :goto_e
    return-void

    .line 63
    :cond_f
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 65
    .local v1, list:Landroid/widget/ListView;
    if-eqz v1, :cond_e

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_e
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v4, 0x6f

    .line 172
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 173
    .local v0, action:I
    const/4 v2, 0x0

    .line 175
    .local v2, retval:Z
    const/16 v3, 0x42

    if-eq p1, v3, :cond_11

    const/16 v3, 0x17

    if-eq p1, v3, :cond_11

    if-ne p1, v4, :cond_26

    :cond_11
    if-eqz v0, :cond_16

    const/4 v3, 0x1

    if-ne v0, v3, :cond_26

    .line 181
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, focus:Landroid/view/View;
    if-nez v0, :cond_27

    .line 184
    if-eqz v1, :cond_25

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 194
    :cond_25
    :goto_25
    const/4 v2, 0x1

    .line 197
    .end local v1           #focus:Landroid/view/View;
    :cond_26
    return v2

    .line 186
    .restart local v1       #focus:Landroid/view/View;
    :cond_27
    if-eqz v1, :cond_2c

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 188
    :cond_2c
    if-ne p1, v4, :cond_25

    invoke-virtual {p0}, Lcom/android/settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_25
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 168
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v3, :cond_a

    .line 144
    iget-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v3, v2}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V

    .line 147
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 148
    .local v0, activity:Landroid/app/ListActivity;
    if-nez v0, :cond_16

    move-object v1, v2

    .line 150
    .local v1, list:Landroid/widget/ListView;
    :goto_13
    if-nez v1, :cond_1b

    .line 155
    :goto_15
    return-void

    .line 148
    .end local v1           #list:Landroid/widget/ListView;
    :cond_16
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_13

    .line 154
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_1b
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_15
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 115
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/guide/ListGuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 73
    .local v0, activity:Landroid/app/ListActivity;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    .line 75
    .local v1, list:Landroid/widget/ListView;
    :goto_9
    if-nez v1, :cond_11

    .line 93
    :cond_b
    :goto_b
    return-void

    .line 73
    .end local v1           #list:Landroid/widget/ListView;
    :cond_c
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_9

    .line 80
    .restart local v1       #list:Landroid/widget/ListView;
    :cond_11
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v2, :cond_1e

    .line 81
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v2}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/guide/ListGuiderBase;->showHelpDialog(Z)V

    .line 84
    :cond_1e
    new-instance v2, Lcom/android/settings/guide/ListGuiderBase$1;

    invoke-direct {v2, p0}, Lcom/android/settings/guide/ListGuiderBase$1;-><init>(Lcom/android/settings/guide/ListGuiderBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 90
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v2, :cond_b

    .line 91
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v2, p0}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V

    goto :goto_b
.end method

.method public setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V
    .registers 3
    .parameter "enabler"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/guide/ListGuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/settings/guide/ListGuiderBase;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_1b

    .line 137
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V

    .line 139
    :cond_1b
    return-void
.end method

.method public showHelpDialog()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_d

    .line 161
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/ListGuiderBase;->showHelpDialog(Z)V

    .line 163
    :cond_d
    return-void
.end method
