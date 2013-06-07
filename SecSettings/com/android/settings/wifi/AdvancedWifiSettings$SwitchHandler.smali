.class Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;
.super Landroid/os/Handler;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 540
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 548
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 549
    return-void

    .line 542
    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_5

    .line 545
    :pswitch_12
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_5

    .line 540
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_12
    .end packed-switch
.end method
