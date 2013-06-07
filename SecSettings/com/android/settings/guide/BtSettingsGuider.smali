.class Lcom/android/settings/guide/BtSettingsGuider;
.super Lcom/android/settings/guide/GuiderBase;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/android/settings/guide/GuiderLifecyrcleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/BtSettingsGuider$7;,
        Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;,
        Lcom/android/settings/guide/BtSettingsGuider$GuideStates;
    }
.end annotation


# instance fields
.field private mBTEnabled:Z

.field private final mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mInitialBondedCount:I

.field private mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field private mShowedLayout:I

.field private onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1}, Lcom/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 118
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 121
    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 123
    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    iput-boolean v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 126
    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 506
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$6;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/BtSettingsGuider$6;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 137
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/guide/BtSettingsGuider;)Lcom/android/settings/guide/BtSettingsGuider$GuideStates;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/guide/BtSettingsGuider;)Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/guide/BtSettingsGuider;Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/BtSettingsGuider;->onReceive(Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    return-void
.end method

.method private initHelpDialogContent(I)V
    .registers 5
    .parameter "resID"

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, bubbleView:Landroid/view/View;
    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 410
    .local v1, summary:Landroid/widget/TextView;
    if-eqz v1, :cond_18

    .line 411
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 413
    :cond_18
    return-void
.end method

.method private initHelpDialogContent(II)V
    .registers 8
    .parameter "resID"
    .parameter "layout"

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 383
    .local v1, bubbleView:Landroid/view/View;
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 385
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 387
    iget-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 389
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 391
    .local v0, btnClose:Landroid/widget/ImageButton;
    if-eqz v0, :cond_31

    .line 392
    new-instance v3, Lcom/android/settings/guide/BtSettingsGuider$3;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/BtSettingsGuider$3;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    :cond_31
    return-void
.end method

.method private invalidateHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .registers 8
    .parameter "type"

    .prologue
    .line 325
    const/4 v0, -0x1

    .line 326
    .local v0, layout:I
    const/4 v1, -0x1

    .line 328
    .local v1, resID:I
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-nez v2, :cond_7

    .line 378
    :goto_6
    return-void

    .line 332
    :cond_7
    const v0, 0x7f040065

    .line 334
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 336
    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_56

    .line 377
    :cond_18
    :goto_18
    invoke-direct {p0, v1, v0}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_6

    .line 338
    :pswitch_1c
    const v1, 0x7f090d25

    .line 339
    goto :goto_18

    .line 341
    :pswitch_20
    const v1, 0x7f090d23

    .line 342
    goto :goto_18

    .line 344
    :pswitch_24
    const v1, 0x7f090d22

    .line 345
    goto :goto_18

    .line 347
    :pswitch_28
    const v1, 0x7f090d24

    .line 348
    const v0, 0x7f040062

    .line 349
    goto :goto_18

    .line 351
    :pswitch_2f
    const v1, 0x7f090d17

    .line 352
    const v0, 0x7f040061

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    .line 359
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/guide/BtSettingsGuider$2;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/BtSettingsGuider$2;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18

    .line 336
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method

.method private onBluetoothStateChanged(I)V
    .registers 3
    .parameter "bluetoothState"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_30

    .line 569
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 580
    :cond_30
    return-void
.end method

.method private onDeviceBondStateChanged(II)V
    .registers 6
    .parameter "bondState"
    .parameter "prevBondState"

    .prologue
    const/4 v1, 0x0

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    .line 591
    .local v0, bShowDialog:Z
    :goto_12
    packed-switch p1, :pswitch_data_44

    .line 623
    :cond_15
    :goto_15
    :pswitch_15
    return-void

    .end local v0           #bShowDialog:Z
    :cond_16
    move v0, v1

    .line 589
    goto :goto_12

    .line 593
    .restart local v0       #bShowDialog:Z
    :pswitch_18
    if-eqz v0, :cond_1f

    .line 594
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 596
    :cond_1f
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_15

    .line 600
    :pswitch_26
    const/16 v2, 0xa

    if-eq p2, v2, :cond_3a

    .line 602
    iget v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-lez v2, :cond_40

    .line 603
    iget v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 605
    if-nez v0, :cond_3a

    .line 607
    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 614
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_15

    .line 615
    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_15

    .line 610
    :cond_40
    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_3a

    .line 591
    nop

    :pswitch_data_44
    .packed-switch 0xa
        :pswitch_26
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method private onReceive(Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .registers 6
    .parameter "action"
    .parameter "intent"

    .prologue
    const/high16 v2, -0x8000

    .line 526
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$BluetoothBroadcastActions:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 547
    :goto_d
    return-void

    .line 528
    :pswitch_e
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->onBluetoothStateChanged(I)V

    goto :goto_d

    .line 533
    :pswitch_18
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_d

    .line 537
    :pswitch_1d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_d

    .line 541
    :pswitch_22
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->onDeviceBondStateChanged(II)V

    goto :goto_d

    .line 526
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_e
        :pswitch_18
        :pswitch_1d
        :pswitch_22
    .end packed-switch
.end method

.method private onScanningStateChanged(Z)V
    .registers 3
    .parameter "started"

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 559
    :cond_13
    return-void
.end method

.method private setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .registers 7
    .parameter "state"

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 722
    .local v1, activity:Landroid/app/Activity;
    sget-object v3, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_36

    .line 750
    :cond_f
    :goto_f
    :pswitch_f
    return-void

    .line 726
    :pswitch_10
    if-eqz v1, :cond_f

    instance-of v3, v1, Landroid/app/ListActivity;

    if-eqz v3, :cond_f

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/app/ListActivity;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_f

    .line 732
    :pswitch_24
    if-eqz v1, :cond_f

    .line 733
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 735
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_f

    .line 736
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 738
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_f

    .line 739
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_f

    .line 722
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_24
    .end packed-switch
.end method

.method private showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .registers 7
    .parameter "resID"
    .parameter "layout"
    .parameter "type"

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, created:Z
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-nez v1, :cond_2a

    .line 284
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 285
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setTouchTransparencyMode(I)V

    .line 286
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 287
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 288
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 289
    const/4 v0, 0x1

    .line 292
    :cond_2a
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    if-eq v1, p2, :cond_3d

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    .line 298
    :goto_31
    if-eqz v0, :cond_38

    .line 299
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->show()V

    .line 302
    :cond_38
    iput-object p3, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 303
    iput p2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 304
    return-void

    .line 295
    :cond_3d
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(I)V

    goto :goto_31
.end method


# virtual methods
.method protected changeHelpDialogState(Z)V
    .registers 5
    .parameter "isScanning"

    .prologue
    .line 204
    iget-boolean v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    if-nez v1, :cond_a

    .line 205
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 225
    :goto_9
    return-void

    .line 207
    :cond_a
    if-nez p1, :cond_18

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 208
    :cond_18
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_9

    .line 210
    :cond_1e
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_36

    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 211
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_9

    .line 213
    :cond_36
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v0

    .line 217
    .local v0, cachedDevices:I
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-le v0, v1, :cond_4c

    .line 218
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_9

    .line 220
    :cond_4c
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_9
.end method

.method public dismissHelpDialog()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_15

    .line 316
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->dismiss()V

    .line 317
    iput-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 318
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 319
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 320
    iput-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 322
    :cond_15
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 152
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_b

    .line 309
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->invalidateHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 311
    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_10

    .line 145
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 147
    :cond_10
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->finish()V

    .line 194
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v6, 0x6f

    const/16 v5, 0x42

    .line 632
    const/4 v1, 0x0

    .line 633
    .local v1, isHandled:Z
    const/4 v2, 0x1

    .line 637
    .local v2, passToView:Z
    sget-object v3, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    iget-object v4, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_a8

    .line 697
    :cond_13
    :goto_13
    if-nez v1, :cond_2b

    if-eqz v2, :cond_2b

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 700
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_2b

    .line 701
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_a2

    .line 702
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 709
    .end local v0           #focus:Landroid/view/View;
    :cond_2b
    :goto_2b
    return v1

    .line 640
    :pswitch_2c
    if-eq p1, v6, :cond_65

    if-eq p1, v5, :cond_65

    const/16 v3, 0x17

    if-eq p1, v3, :cond_65

    const/16 v3, 0x14

    if-eq p1, v3, :cond_65

    const/16 v3, 0x15

    if-eq p1, v3, :cond_65

    const/16 v3, 0x16

    if-eq p1, v3, :cond_65

    const/16 v3, 0x13

    if-eq p1, v3, :cond_65

    const/16 v3, 0x75

    if-eq p1, v3, :cond_65

    const/16 v3, 0x76

    if-eq p1, v3, :cond_65

    const/16 v3, 0x3d

    if-eq p1, v3, :cond_65

    const/16 v3, 0x5c

    if-eq p1, v3, :cond_65

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_65

    const/4 v3, 0x3

    if-eq p1, v3, :cond_65

    const/16 v3, 0x7b

    if-eq p1, v3, :cond_65

    const/16 v3, 0x7a

    if-eq p1, v3, :cond_65

    .line 655
    const/4 v1, 0x1

    goto :goto_13

    .line 656
    :cond_65
    if-ne p1, v5, :cond_13

    .line 657
    const/4 v2, 0x0

    .line 658
    const/4 v1, 0x1

    .line 660
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto :goto_13

    .line 666
    :pswitch_73
    if-ne p1, v6, :cond_85

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_85

    .line 668
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->showCompleteDialog()V

    .line 670
    const/4 v2, 0x0

    .line 671
    const/4 v1, 0x1

    goto :goto_13

    .line 673
    :cond_85
    if-ne p1, v5, :cond_13

    .line 674
    const/4 v2, 0x0

    .line 675
    const/4 v1, 0x1

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto :goto_13

    .line 684
    :pswitch_93
    if-ne p1, v5, :cond_13

    .line 685
    const/4 v2, 0x0

    .line 686
    const/4 v1, 0x1

    .line 688
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto/16 :goto_13

    .line 704
    .restart local v0       #focus:Landroid/view/View;
    :cond_a2
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_2b

    .line 637
    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_93
        :pswitch_93
        :pswitch_73
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 628
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 183
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_26

    .line 482
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/guide/BtSettingsGuider$5;

    invoke-direct {v1, p0}, Lcom/android/settings/guide/BtSettingsGuider$5;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    :cond_26
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_d

    .line 159
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 162
    :cond_d
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2f

    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 164
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 172
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v1, v2, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 173
    return-void

    .line 166
    :cond_2f
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v1, v2, :cond_24

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v1, v2, :cond_24

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_24
.end method

.method public setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V
    .registers 2
    .parameter "enabler"

    .prologue
    .line 498
    return-void
.end method

.method protected setGuidedActionBarClickable(Z)V
    .registers 6
    .parameter "clickable"

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 424
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 426
    .local v0, ab:Landroid/app/ActionBar;
    :goto_a
    if-eqz v0, :cond_23

    .line 428
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 430
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_23

    .line 431
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_1e

    .line 432
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 433
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 437
    :cond_1e
    if-eqz p1, :cond_23

    .line 438
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 442
    .end local v2           #v:Landroid/view/View;
    :cond_23
    return-void

    .line 424
    .end local v0           #ab:Landroid/app/ActionBar;
    :cond_24
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public showCompleteDialog()V
    .registers 6

    .prologue
    .line 446
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v0, builderstart:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 449
    .local v1, res:Landroid/content/res/Resources;
    :goto_17
    if-eqz v1, :cond_47

    .line 451
    const v2, 0x7f090d1f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090d1e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902c9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/android/settings/guide/BtSettingsGuider$4;

    invoke-direct {v4, p0}, Lcom/android/settings/guide/BtSettingsGuider$4;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 469
    :cond_47
    return-void

    .line 447
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_48
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public showHelpDialog()V
    .registers 1

    .prologue
    .line 503
    return-void
.end method

.method public showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .registers 5
    .parameter "type"

    .prologue
    const v2, 0x7f040065

    .line 228
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_f

    .line 274
    :goto_e
    return-void

    .line 234
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 236
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_76

    .line 273
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_74

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_e

    .line 238
    :pswitch_26
    const v0, 0x7f090d25

    invoke-direct {p0, v0, v2, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1d

    .line 241
    :pswitch_2d
    const v0, 0x7f090d23

    invoke-direct {p0, v0, v2, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1d

    .line 245
    :pswitch_34
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/BtSettingsGuider$1;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 250
    const v0, 0x7f090d22

    invoke-direct {p0, v0, v2, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1d

    .line 253
    :pswitch_42
    const v0, 0x7f090d24

    const v1, 0x7f040062

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1d

    .line 257
    :pswitch_4c
    const v0, 0x7f090d17

    const v1, 0x7f040061

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 263
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)V

    goto :goto_1d

    .line 273
    :cond_74
    const/4 v0, 0x0

    goto :goto_22

    .line 236
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_26
        :pswitch_2d
        :pswitch_34
        :pswitch_42
        :pswitch_4c
    .end packed-switch
.end method
