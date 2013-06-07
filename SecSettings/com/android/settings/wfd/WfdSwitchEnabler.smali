.class public Lcom/android/settings/wfd/WfdSwitchEnabler;
.super Ljava/lang/Object;
.source "WfdSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mControlByWfdService:I

.field private mEnableControlByWfdService:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

.field private mWfdSwitchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 7
    .parameter "context"
    .parameter "switch_"
    .parameter "fragment"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 49
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 51
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 53
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 54
    iput v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 55
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 56
    iput v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 57
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    .line 59
    new-instance v0, Lcom/android/settings/wfd/WfdSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler$1;-><init>(Lcom/android/settings/wfd/WfdSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "WfdSwitchEnabler << tablet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 84
    iput v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 86
    iput-object p1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 88
    iput-object p3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-nez v0, :cond_41

    .line 93
    const-string v0, "wfd"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 96
    :cond_41
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_5a

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 98
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    :cond_5a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 7
    .parameter "context"
    .parameter "switch_"
    .parameter "fragment"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 49
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 51
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 53
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 54
    iput v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 55
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 56
    iput v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 57
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    .line 59
    new-instance v0, Lcom/android/settings/wfd/WfdSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler$1;-><init>(Lcom/android/settings/wfd/WfdSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "WfdSwitchEnabler << phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 107
    iput v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 109
    iput-object p1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 111
    iput-object p3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    .line 113
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-nez v0, :cond_41

    .line 116
    const-string v0, "wfd"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 119
    :cond_41
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_5a

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 121
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    :cond_5a
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WfdSwitchEnabler;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V

    return-void
.end method

.method private handleP2pStateChanged(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 346
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleP2pStateChanged with state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    packed-switch p1, :pswitch_data_28

    .line 362
    :goto_1b
    iput p1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 363
    return-void

    .line 351
    :pswitch_1e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->turnOnSwitch(Z)V

    goto :goto_1b

    .line 357
    :pswitch_23
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->turnOnSwitch(Z)V

    goto :goto_1b

    .line 348
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private turnOnSwitch(Z)V
    .registers 7
    .parameter "flag"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 320
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnSwitch with flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-eqz p1, :cond_39

    .line 323
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2a

    .line 324
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 327
    :cond_2a
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_38

    .line 328
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 343
    :cond_38
    :goto_38
    return-void

    .line 334
    :cond_39
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_47

    .line 335
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 338
    :cond_47
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_38

    .line 339
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_38
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    .line 192
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged << isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz p2, :cond_60

    .line 195
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_57

    .line 196
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "onCheckedChanged will setWfdEnabledDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_58

    .line 199
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 200
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v3}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 246
    :cond_57
    :goto_57
    return-void

    .line 205
    :cond_58
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "onCheckedChanged ignore wfd manager is null setWfdEnabledDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 213
    :cond_60
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_99

    .line 214
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    .line 232
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v0, :cond_99

    .line 234
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    .line 242
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_57

    .line 219
    :pswitch_9f
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "onCheckedChanged will setWfdTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    goto :goto_99

    .line 225
    :pswitch_ac
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 226
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v0, :cond_99

    .line 228
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    goto :goto_99

    .line 215
    nop

    :pswitch_data_bc
    .packed-switch 0x2
        :pswitch_ac
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 250
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 251
    .local v0, enable:Z
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange2 << value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_41

    .line 254
    const-string v2, "WfdSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_40
    return v1

    .line 258
    :cond_41
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 259
    if-eqz v0, :cond_8d

    .line 260
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v3

    if-nez v3, :cond_83

    .line 261
    const-string v3, "WfdSwitchEnabler"

    const-string v4, "onPreferenceChange will setWfdEnabledDialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v3, :cond_85

    .line 263
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 264
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v5}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3, v1}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    :cond_83
    :goto_83
    move v1, v2

    .line 303
    goto :goto_40

    .line 268
    :cond_85
    const-string v1, "WfdSwitchEnabler"

    const-string v3, "onPreferenceChange ignore wfd manager is null setWfdEnabledDialog"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 272
    :cond_8d
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v3, :cond_c6

    .line 273
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v5}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v3

    packed-switch v3, :pswitch_data_e8

    .line 290
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v3, :cond_c6

    .line 292
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    .line 293
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    .line 299
    :cond_c6
    :goto_c6
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_83

    .line 278
    :pswitch_cc
    const-string v3, "WfdSwitchEnabler"

    const-string v4, "onPreferenceChange will setWfdTerminate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    goto :goto_c6

    .line 283
    :pswitch_d9
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 284
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v3, :cond_c6

    .line 286
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    goto :goto_c6

    .line 274
    :pswitch_data_e8
    .packed-switch 0x2
        :pswitch_d9
        :pswitch_cc
        :pswitch_cc
        :pswitch_cc
    .end packed-switch
.end method

.method public pause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 177
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 181
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1b

    .line 183
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_24

    .line 187
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    :cond_24
    return-void
.end method

.method public resume()V
    .registers 4

    .prologue
    .line 139
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 143
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1c

    .line 146
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_25

    .line 150
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    :cond_25
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_32

    .line 154
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V

    .line 156
    :cond_32
    return-void
.end method
