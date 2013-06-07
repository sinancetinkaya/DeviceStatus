.class public Lcom/android/settings/guide/WifiSettingsGuider;
.super Lcom/android/settings/guide/GuiderBase;
.source "WifiSettingsGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/android/settings/guide/GuiderLifecyrcleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/WifiSettingsGuider$7;,
        Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private mConnecting:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mEmptyScanResultAttempts:I

.field private mEnableScanMenuItem:Z

.field private mFirstStart:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mSecurityDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private final mWiFiIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 6
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 73
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 74
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 78
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 79
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 80
    iput v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 82
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 83
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 91
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 96
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 106
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$1;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    .line 115
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 122
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/guide/WifiSettingsGuider;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/guide/WifiSettingsGuider;)Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/guide/WifiSettingsGuider;)Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method private initHelpDialogContent(II)V
    .registers 8
    .parameter "resID"
    .parameter "layout"

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 443
    .local v1, bubbleView:Landroid/view/View;
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 445
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 447
    iget-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 449
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 452
    .local v0, btnClose:Landroid/widget/ImageButton;
    if-eqz v0, :cond_31

    .line 453
    new-instance v3, Lcom/android/settings/guide/WifiSettingsGuider$5;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/WifiSettingsGuider$5;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    :cond_31
    return-void
.end method

.method private invalidateHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .registers 8
    .parameter "type"

    .prologue
    .line 370
    const/4 v0, -0x1

    .line 371
    .local v0, layout:I
    const/4 v1, -0x1

    .line 373
    .local v1, resID:I
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-nez v2, :cond_7

    .line 432
    :goto_6
    return-void

    .line 377
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 379
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_6a

    .line 431
    :cond_15
    :goto_15
    invoke-direct {p0, v1, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_6

    .line 381
    :pswitch_19
    const v1, 0x7f090d18

    .line 382
    const v0, 0x7f040068

    .line 383
    goto :goto_15

    .line 385
    :pswitch_20
    const v1, 0x7f090d1b

    .line 386
    const v0, 0x7f04006c

    .line 387
    goto :goto_15

    .line 389
    :pswitch_27
    const v1, 0x7f090d1a

    .line 390
    const v0, 0x7f04006c

    .line 391
    goto :goto_15

    .line 393
    :pswitch_2e
    const v1, 0x7f090d19

    .line 394
    const v0, 0x7f04006c

    .line 395
    goto :goto_15

    .line 397
    :pswitch_35
    const v1, 0x7f090d1d

    .line 398
    const v0, 0x7f040069

    .line 399
    goto :goto_15

    .line 401
    :pswitch_3c
    const v1, 0x7f090d1c

    .line 402
    const v0, 0x7f04006c

    .line 403
    goto :goto_15

    .line 405
    :pswitch_43
    const v1, 0x7f090d17

    .line 406
    const v0, 0x7f040067

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    .line 413
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/guide/WifiSettingsGuider$4;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/WifiSettingsGuider$4;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15

    .line 379
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_19
        :pswitch_20
        :pswitch_27
        :pswitch_3c
        :pswitch_2e
        :pswitch_35
        :pswitch_43
    .end packed-switch
.end method

.method private restoreSecurityDialogFocus()V
    .registers 12

    .prologue
    const/4 v9, 0x0

    .line 731
    iget-object v8, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_76

    iget-object v8, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlertDialog;

    move-object v6, v8

    .line 733
    .local v6, securityDialog:Landroid/app/AlertDialog;
    :goto_e
    if-eqz v6, :cond_73

    .line 734
    const v8, 0x7f0b033c

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 735
    .local v0, identity:Landroid/view/View;
    const v8, 0x7f0b0356

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 736
    .local v1, identityContainer:Landroid/view/View;
    move-object v7, v0

    .line 737
    .local v7, viewToFocus:Landroid/view/View;
    const/4 v4, 0x0

    .line 739
    .local v4, isSingleEdit:Z
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_30

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_38

    .line 742
    :cond_30
    const v8, 0x7f0b02ca

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 743
    const/4 v4, 0x1

    .line 746
    :cond_38
    if-eqz v7, :cond_68

    .line 748
    if-eqz v4, :cond_4f

    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_4f

    move-object v8, v7

    .line 749
    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getImeOptions()I

    move-result v2

    .local v2, imeOptions:I
    move-object v8, v7

    .line 751
    check-cast v8, Landroid/widget/EditText;

    or-int/lit8 v10, v2, 0x6

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 754
    .end local v2           #imeOptions:I
    :cond_4f
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 756
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_68

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v10, "input_method"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 759
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 764
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_68
    const/4 v8, -0x2

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 766
    .local v5, negativeButton:Landroid/widget/Button;
    if-eqz v5, :cond_73

    .line 767
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 771
    .end local v0           #identity:Landroid/view/View;
    .end local v1           #identityContainer:Landroid/view/View;
    .end local v4           #isSingleEdit:Z
    .end local v5           #negativeButton:Landroid/widget/Button;
    .end local v7           #viewToFocus:Landroid/view/View;
    :cond_73
    iput-object v9, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 772
    return-void

    .end local v6           #securityDialog:Landroid/app/AlertDialog;
    :cond_76
    move-object v6, v9

    .line 731
    goto :goto_e
.end method

.method private setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .registers 7
    .parameter "state"

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 894
    .local v1, activity:Landroid/app/Activity;
    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_22

    .line 918
    :cond_f
    :goto_f
    return-void

    .line 896
    :pswitch_10
    if-eqz v1, :cond_f

    .line 897
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 899
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_f

    .line 900
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 902
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_f

    .line 903
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_f

    .line 894
    :pswitch_data_22
    .packed-switch 0x7
        :pswitch_10
    .end packed-switch
.end method

.method private setGuidedActionBarClickable(Z)V
    .registers 6
    .parameter "clickable"

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 590
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 592
    .local v0, ab:Landroid/app/ActionBar;
    :goto_a
    if-eqz v0, :cond_23

    .line 593
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 595
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_23

    .line 596
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_1e

    .line 597
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 598
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 601
    :cond_1e
    if-eqz p1, :cond_23

    .line 602
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 606
    .end local v2           #v:Landroid/view/View;
    :cond_23
    return-void

    .line 590
    .end local v0           #ab:Landroid/app/ActionBar;
    :cond_24
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private setScanOptionEnable(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 616
    iput-boolean p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 620
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_b

    .line 621
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 623
    :cond_b
    return-void
.end method

.method private showHelpDialog(IIILcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V
    .registers 8
    .parameter "resID"
    .parameter "layout"
    .parameter "touchtransparency"
    .parameter "type"
    .parameter "needShowWrongToast"

    .prologue
    .line 358
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 359
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0, p3}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setTouchTransparencyMode(I)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0, p5}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->show()V

    .line 366
    iput-object p4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 367
    return-void
.end method


# virtual methods
.method protected dismissAndRestorePreviousHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, p1, :cond_a

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_2e

    .line 342
    :cond_a
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_13

    .line 343
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 346
    :cond_13
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 348
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 351
    :cond_2e
    return-void
.end method

.method public dismissHelpDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_20

    .line 281
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->dismiss()V

    .line 282
    iput-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 284
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_30

    .line 300
    :goto_1a
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 301
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 303
    :cond_20
    return-void

    .line 286
    :sswitch_21
    invoke-direct {p0, v3}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_1a

    .line 289
    :sswitch_25
    invoke-direct {p0, v3}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_1a

    .line 292
    :sswitch_29
    invoke-direct {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->restoreSecurityDialogFocus()V

    .line 293
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    goto :goto_1a

    .line 284
    nop

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_29
        0x6 -> :sswitch_25
        0x7 -> :sswitch_21
    .end sparse-switch
.end method

.method public dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .registers 5
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_17

    .line 312
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 328
    :goto_10
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 331
    :cond_17
    return-void

    .line 314
    :pswitch_18
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_10

    .line 317
    :pswitch_1c
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_10

    .line 312
    :pswitch_data_20
    .packed-switch 0x6
        :pswitch_1c
        :pswitch_18
    .end packed-switch
.end method

.method protected handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 467
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 473
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 476
    .local v2, network:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_49

    :cond_33
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_49

    .line 480
    iget v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    if-lt v4, v7, :cond_43

    .line 481
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 546
    .end local v2           #network:Landroid/net/NetworkInfo;
    :cond_42
    :goto_42
    return-void

    .line 483
    .restart local v2       #network:Landroid/net/NetworkInfo;
    :cond_43
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_42

    .line 486
    :cond_49
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_5b

    .line 487
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 488
    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v4, :cond_42

    .line 489
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_42

    .line 492
    :cond_5b
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_6f

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_6f

    .line 493
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 494
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 495
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_42

    .line 497
    :cond_6f
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_42

    .line 498
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    goto :goto_42

    .line 502
    .end local v2           #network:Landroid/net/NetworkInfo;
    :cond_7e
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 503
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 506
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_a4

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_a4

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    if-eqz v4, :cond_a4

    .line 507
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 508
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_42

    .line 509
    :cond_a4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_b4

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    if-nez v4, :cond_b4

    .line 510
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_42

    .line 511
    :cond_b4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_42

    .line 512
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 513
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 516
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_42

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v4, v5, :cond_d2

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v4, v5, :cond_42

    .line 520
    :cond_d2
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_ed

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ed

    .line 522
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_42

    .line 524
    :cond_ed
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_42

    .line 529
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_f4
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 533
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 538
    .local v3, state:I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_11b

    if-eq v3, v7, :cond_11b

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_11b

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_11b

    .line 541
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_42

    .line 543
    :cond_11b
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_42
.end method

.method public isWifiDialogSecured(Landroid/app/AlertDialog;)Z
    .registers 5
    .parameter "dialog"

    .prologue
    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, result:Z
    const v2, 0x7f0b0332

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 635
    .local v1, view:Landroid/view/ViewGroup;
    if-eqz v1, :cond_13

    .line 636
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_14

    const/4 v0, 0x1

    .line 639
    :cond_13
    :goto_13
    return v0

    .line 636
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 157
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 698
    const/4 v0, -0x2

    if-ne p2, v0, :cond_6

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 702
    :cond_6
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_b

    .line 176
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 178
    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 128
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 129
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 131
    iput v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 132
    iput-boolean v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 133
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->finish()V

    .line 139
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 690
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiDialogSecured(Landroid/app/AlertDialog;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 691
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissAndRestorePreviousHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 694
    :cond_11
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x6f

    const/16 v5, 0x42

    .line 786
    const/4 v1, 0x0

    .line 787
    .local v1, isHandled:Z
    const/4 v2, 0x1

    .line 791
    .local v2, passToView:Z
    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_be

    .line 869
    :cond_14
    :goto_14
    if-nez v1, :cond_2c

    if-eqz v2, :cond_2c

    .line 870
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 872
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_2c

    .line 873
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_b8

    .line 874
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 881
    .end local v0           #focus:Landroid/view/View;
    :cond_2c
    :goto_2c
    return v1

    .line 794
    :pswitch_2d
    if-eq p1, v6, :cond_66

    if-eq p1, v5, :cond_66

    const/16 v3, 0x17

    if-eq p1, v3, :cond_66

    const/16 v3, 0x14

    if-eq p1, v3, :cond_66

    const/16 v3, 0x15

    if-eq p1, v3, :cond_66

    const/16 v3, 0x16

    if-eq p1, v3, :cond_66

    const/16 v3, 0x13

    if-eq p1, v3, :cond_66

    const/16 v3, 0x75

    if-eq p1, v3, :cond_66

    const/16 v3, 0x76

    if-eq p1, v3, :cond_66

    const/16 v3, 0x3d

    if-eq p1, v3, :cond_66

    const/16 v3, 0x5c

    if-eq p1, v3, :cond_66

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_66

    const/4 v3, 0x3

    if-eq p1, v3, :cond_66

    const/16 v3, 0x7b

    if-eq p1, v3, :cond_66

    const/16 v3, 0x7a

    if-eq p1, v3, :cond_66

    .line 809
    const/4 v1, 0x1

    goto :goto_14

    .line 810
    :cond_66
    if-ne p1, v5, :cond_14

    .line 811
    const/4 v2, 0x0

    .line 812
    const/4 v1, 0x1

    .line 814
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto :goto_14

    .line 820
    :pswitch_74
    if-ne p1, v6, :cond_82

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_82

    .line 822
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 823
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 825
    :cond_82
    const/4 v2, 0x0

    .line 826
    const/4 v1, 0x1

    .line 827
    goto :goto_14

    .line 830
    :pswitch_85
    const/4 v2, 0x0

    .line 831
    const/4 v1, 0x1

    .line 832
    goto :goto_14

    .line 838
    :pswitch_88
    if-ne p1, v6, :cond_9a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_9a

    .line 840
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 841
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 842
    const/4 v2, 0x0

    .line 843
    const/4 v1, 0x1

    goto/16 :goto_14

    .line 845
    :cond_9a
    if-ne p1, v5, :cond_14

    .line 846
    const/4 v2, 0x0

    .line 847
    const/4 v1, 0x1

    .line 849
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto/16 :goto_14

    .line 856
    :pswitch_a9
    if-ne p1, v5, :cond_14

    .line 857
    const/4 v2, 0x0

    .line 858
    const/4 v1, 0x1

    .line 860
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/sec/android/touchwiz/widget/TwHelpDialog;)V

    goto/16 :goto_14

    .line 876
    .restart local v0       #focus:Landroid/view/View;
    :cond_b8
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_2c

    .line 791
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_85
        :pswitch_88
        :pswitch_74
        :pswitch_88
        :pswitch_a9
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialogInterface"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 710
    const/4 v0, 0x0

    .line 712
    .local v0, retval:Z
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v1, v2, :cond_19

    .line 714
    const/16 v1, 0x6f

    if-eq p2, v1, :cond_e

    const/4 v1, 0x4

    if-ne p2, v1, :cond_18

    :cond_e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 717
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 720
    :cond_18
    const/4 v0, 0x1

    .line 723
    :cond_19
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 777
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_17

    .line 779
    iget v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 782
    :cond_17
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 161
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 163
    .local v0, scan:Landroid/view/MenuItem;
    if-eqz v0, :cond_c

    .line 164
    iget-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 166
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_32

    move v0, v1

    :goto_9
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_34

    :goto_12
    invoke-direct {p0, v1}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_31

    .line 150
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 152
    :cond_31
    return-void

    :cond_32
    move v0, v2

    .line 144
    goto :goto_9

    :cond_34
    move v1, v2

    .line 145
    goto :goto_12
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "dialog"

    .prologue
    const/4 v4, 0x1

    .line 663
    instance-of v2, p1, Landroid/app/AlertDialog;

    if-eqz v2, :cond_40

    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiDialogSecured(Landroid/app/AlertDialog;)Z

    move-result v2

    if-ne v2, v4, :cond_40

    .line 665
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 667
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 671
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 673
    .local v1, negativeButton:Landroid/widget/Button;
    if-eqz v1, :cond_40

    .line 674
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 675
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 678
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 679
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 682
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #negativeButton:Landroid/widget/Button;
    :cond_40
    return-void
.end method

.method public setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V
    .registers 3
    .parameter "enabler"

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    .line 646
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_1b

    .line 647
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V

    .line 649
    :cond_1b
    return-void
.end method

.method public showCompleteDialog()V
    .registers 5

    .prologue
    .line 550
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 553
    .local v0, builderstart:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090d1f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090d1e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/settings/guide/WifiSettingsGuider$6;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/WifiSettingsGuider$6;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 571
    return-void
.end method

.method public showHelpDialog()V
    .registers 1

    .prologue
    .line 654
    return-void
.end method

.method public showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .registers 10
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    const v2, 0x7f04006c

    const/16 v3, 0x65

    const/4 v7, 0x1

    .line 187
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_18

    move v0, v7

    :goto_c
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_1a

    .line 276
    :cond_17
    :goto_17
    return-void

    :cond_18
    move v0, v5

    .line 187
    goto :goto_c

    .line 193
    :cond_1a
    iget-object v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 195
    .local v6, showedtype:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 196
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 198
    invoke-direct {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 200
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ca

    .line 233
    :goto_33
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_66

    move v0, v7

    :goto_38
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 235
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_d8

    goto :goto_17

    .line 237
    :pswitch_47
    const v1, 0x7f090d18

    const v2, 0x7f040068

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_17

    .line 202
    :pswitch_53
    iput-object v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    goto :goto_33

    .line 208
    :pswitch_56
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$2;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$2;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_33

    .line 218
    :pswitch_5e
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$3;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$3;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_33

    :cond_66
    move v0, v5

    .line 233
    goto :goto_38

    .line 242
    :pswitch_68
    const v1, 0x7f090d1b

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_17

    .line 246
    :pswitch_72
    const v1, 0x7f090d1a

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_17

    .line 250
    :pswitch_7c
    const v1, 0x7f090d19

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_17

    .line 254
    :pswitch_86
    const v1, 0x7f090d1d

    const v2, 0x7f040069

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_17

    .line 258
    :pswitch_93
    const v1, 0x7f090d1c

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_17

    .line 262
    :pswitch_9e
    const v1, 0x7f090d17

    const v2, 0x7f040067

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IIILcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 269
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)V

    goto/16 :goto_17

    .line 200
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_53
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_5e
    .end packed-switch

    .line 235
    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_47
        :pswitch_68
        :pswitch_72
        :pswitch_93
        :pswitch_7c
        :pswitch_86
        :pswitch_9e
    .end packed-switch
.end method
