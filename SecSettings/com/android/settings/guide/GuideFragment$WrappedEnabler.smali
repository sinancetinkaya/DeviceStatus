.class Lcom/android/settings/guide/GuideFragment$WrappedEnabler;
.super Ljava/lang/Object;
.source "GuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/guide/GuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WrappedEnabler"
.end annotation


# instance fields
.field private mBTEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

.field private mWiFiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/guide/GuideFragment$GuideModes;Ljava/lang/Object;)V
    .registers 5
    .parameter "type"
    .parameter "enabler"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 84
    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mWiFiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 86
    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mBTEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 96
    iput-object p1, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 98
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eqz v0, :cond_12

    if-nez p2, :cond_13

    .line 117
    .end local p2
    :cond_12
    :goto_12
    return-void

    .line 102
    .restart local p2
    :cond_13
    sget-object v0, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither BluetoothEnabler or WifiEnabler was passed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_28
    check-cast p2, Lcom/android/settings/bluetooth/BluetoothEnabler;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mBTEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    goto :goto_12

    .line 110
    .restart local p2
    :pswitch_2d
    check-cast p2, Lcom/android/settings/wifi/WifiEnabler;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mWiFiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    goto :goto_12

    .line 102
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method


# virtual methods
.method public isChecked()Z
    .registers 4

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, result:Z
    sget-object v1, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v2}, Lcom/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    .line 161
    :goto_e
    return v0

    .line 152
    :pswitch_f
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mBTEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->isBluetoothChecked()Z

    move-result v0

    .line 153
    goto :goto_e

    .line 157
    :pswitch_16
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mWiFiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiEnabler;->isWiFiChecked()Z

    move-result v0

    goto :goto_e

    .line 149
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V
    .registers 4
    .parameter "guider"

    .prologue
    .line 126
    sget-object v0, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mType:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v1}, Lcom/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 141
    :goto_d
    return-void

    .line 129
    :pswitch_e
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mBTEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V

    goto :goto_d

    .line 134
    :pswitch_14
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->mWiFiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V

    goto :goto_d

    .line 126
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method
