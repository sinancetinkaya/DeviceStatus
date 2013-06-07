.class public Lcom/android/settings/wfd/WfdHelpActivity;
.super Landroid/app/Activity;
.source "WfdHelpActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mInSettingsMode:Z

.field private mMenuItemLearnNfc:Landroid/view/MenuItem;

.field private mMenuItemStartLink:Landroid/view/MenuItem;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWriteTagMode:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const-string v0, "WfdHelpActivity"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->TAG:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    .line 61
    iput-object v1, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    .line 77
    new-instance v0, Lcom/android/settings/wfd/WfdHelpActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdHelpActivity$1;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static changeNfcEnabled(Landroid/content/Context;Z)Z
    .registers 8
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    .line 213
    move v1, p1

    .line 214
    .local v1, desiredState:Z
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 215
    .local v2, nfcAdapter:Landroid/nfc/NfcAdapter;
    const-string v0, "WfdHelpActivity"

    .line 217
    .local v0, TAG:Ljava/lang/String;
    if-nez v2, :cond_b

    .line 263
    :goto_a
    return v5

    .line 222
    :cond_b
    new-instance v3, Lcom/android/settings/wfd/WfdHelpActivity$4;

    const-string v4, "toggleNFC"

    invoke-direct {v3, v4, v1, v2}, Lcom/android/settings/wfd/WfdHelpActivity$4;-><init>(Ljava/lang/String;ZLandroid/nfc/NfcAdapter;)V

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdHelpActivity$4;->start()V

    goto :goto_a
.end method

.method private isWfdConnected()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 435
    const-string v2, "wfd"

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 436
    .local v0, wfdManager:Lcom/samsung/wfd/WfdManager;
    if-eqz v0, :cond_20

    .line 437
    const-string v2, "WfdHelpActivity"

    const-string v3, "AllShare Cast is turned on..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 443
    :goto_15
    if-eqz v0, :cond_1e

    .line 445
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    .line 453
    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1

    .line 440
    :cond_20
    const-string v2, "WfdHelpActivity"

    const-string v3, "mWfdManager is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 449
    :pswitch_28
    const-string v2, "WfdHelpActivity"

    const-string v3, "isWfdConnected >> true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 445
    :pswitch_data_30
    .packed-switch 0x3
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method private makeNdefMessage(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .registers 7
    .parameter "addr"

    .prologue
    .line 371
    const-string v2, "WfdHelpActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make Ndef message - addr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 375
    .local v0, addrBytes:[B
    const-string v2, "com.android.settings.wfd"

    const-string v3, "addr"

    invoke-static {v2, v3, v0}, Landroid/nfc/NdefRecord;->createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 377
    .local v1, addrRecord:Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method private setHelpText()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 199
    const v3, 0x7f0b02d8

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/IndexedTextLayout;

    .line 200
    .local v0, idxTextLayout:Lcom/android/settings/wfd/IndexedTextLayout;
    const v3, 0x7f0903c2

    invoke-virtual {v0, v3}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, result_msg2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(Ljava/lang/String;)V

    .line 205
    const v3, 0x7f0903c4

    invoke-virtual {v0, v3}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, result_msg4:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private setHelpText2()V
    .registers 3

    .prologue
    .line 176
    const v1, 0x7f0b02d8

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/IndexedTextLayout;

    .line 177
    .local v0, idxTextLayout:Lcom/android/settings/wfd/IndexedTextLayout;
    const v1, 0x7f0903bf

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 179
    const v1, 0x7f0903c0

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 181
    const v1, 0x7f0903c1

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 183
    return-void
.end method

.method private setIsSettings()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "called_by_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    .line 173
    :goto_10
    return-void

    .line 172
    :cond_11
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    goto :goto_10
.end method

.method private setWriteText()V
    .registers 7

    .prologue
    const v5, 0x7f0b02d8

    const v4, 0x7f0903c6

    .line 186
    const-string v1, "WfdHelpActivity"

    const-string v2, "setWriteText"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 189
    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/IndexedTextLayout;

    .line 190
    .local v0, idxTextLayout:Lcom/android/settings/wfd/IndexedTextLayout;
    invoke-virtual {v0, v4}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 191
    const v1, 0x7f0903c7

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 196
    :goto_35
    return-void

    .line 193
    .end local v0           #idxTextLayout:Lcom/android/settings/wfd/IndexedTextLayout;
    :cond_36
    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/IndexedTextLayout;

    .line 194
    .restart local v0       #idxTextLayout:Lcom/android/settings/wfd/IndexedTextLayout;
    invoke-virtual {v0, v4}, Lcom/android/settings/wfd/IndexedTextLayout;->setText(I)V

    goto :goto_35
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 492
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "com.samsung.wfd.DP_HELP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 496
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 497
    const v1, 0x7f0400f9

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 498
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setHelpText()V

    .line 509
    :cond_1f
    :goto_1f
    return-void

    .line 500
    :cond_20
    const-string v1, "com.samsung.wfd.WRITE_NFC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 501
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 502
    const v1, 0x7f0400ff

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 503
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setWriteText()V

    goto :goto_1f

    .line 504
    :cond_35
    const-string v1, "com.samsung.wfd.NFC_HELP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 505
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 506
    const v1, 0x7f040100

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 507
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setHelpText2()V

    goto :goto_1f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "icicle"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x16

    .line 94
    const-string v7, "WfdHelpActivity"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v4, intentFilter:Landroid/content/IntentFilter;
    const-string v7, "com.samsung.wfd.ALL_CLEAR"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v7, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v4}, Lcom/android/settings/wfd/WfdHelpActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setIsSettings()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 104
    .local v1, bar:Landroid/app/ActionBar;
    iget-boolean v7, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v7, :cond_2d

    .line 105
    const/high16 v7, 0x7f03

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setIcon(I)V

    .line 108
    :cond_2d
    invoke-virtual {v1, v12}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 109
    const v7, 0x7f09037b

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, intentAction:Ljava/lang/String;
    const-string v7, "WfdHelpActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "received action is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v7, "com.samsung.wfd.DP_HELP"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 115
    iput-boolean v11, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 116
    const v7, 0x7f0400f9

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setHelpText()V

    .line 164
    :cond_69
    :goto_69
    return-void

    .line 119
    :cond_6a
    const-string v7, "com.samsung.wfd.WRITE_NFC"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d3

    .line 120
    iput-boolean v12, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 122
    const v7, 0x7f0400ff

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setWriteText()V

    .line 126
    const-string v7, "nfc"

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/NfcManager;

    .line 127
    .local v5, manager:Landroid/nfc/NfcManager;
    invoke-virtual {v5}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 128
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_69

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_69

    .line 129
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 131
    .local v6, tv:Landroid/widget/TextView;
    const/high16 v7, 0x41a0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 132
    const-string v7, "#ffffff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    const v7, 0x7f0903be

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 134
    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 137
    const v7, 0x7f090646

    new-instance v8, Lcom/android/settings/wfd/WfdHelpActivity$2;

    invoke-direct {v8, p0}, Lcom/android/settings/wfd/WfdHelpActivity$2;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    const v7, 0x7f090647

    new-instance v8, Lcom/android/settings/wfd/WfdHelpActivity$3;

    invoke-direct {v8, p0}, Lcom/android/settings/wfd/WfdHelpActivity$3;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_69

    .line 158
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #manager:Landroid/nfc/NfcManager;
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_d3
    const-string v7, "com.samsung.wfd.NFC_HELP"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 159
    iput-boolean v11, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 160
    const v7, 0x7f040100

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setHelpText2()V

    goto :goto_69
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "called_by_nfc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "called_by_nfc"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 460
    const v2, 0x7f0903ba

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    .line 466
    :goto_28
    const/4 v2, 0x2

    const v3, 0x7f0903b9

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    .line 469
    const-string v2, "nfc"

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcManager;

    .line 470
    .local v1, manager:Landroid/nfc/NfcManager;
    invoke-virtual {v1}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 471
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_75

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    if-nez v2, :cond_75

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.wfd.NFC_HELP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 478
    iget-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 480
    iget-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 487
    :goto_62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 463
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    .end local v1           #manager:Landroid/nfc/NfcManager;
    :cond_67
    const v2, 0x7f0903b8

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    goto :goto_28

    .line 472
    .restart local v0       #adapter:Landroid/nfc/NfcAdapter;
    .restart local v1       #manager:Landroid/nfc/NfcManager;
    :cond_75
    iget-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 473
    iget-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_62

    .line 482
    :cond_80
    iget-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 484
    iget-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_62
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 291
    const-string v4, "WfdHelpActivity"

    const-string v5, "onNewIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v4, "WfdHelpActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWriteTagMode ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-boolean v4, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    if-eqz v4, :cond_62

    .line 295
    const-string v4, "WfdPickerActivity"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/wfd/WfdHelpActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 297
    .local v3, pref_r:Landroid/content/SharedPreferences;
    const-string v4, "wlan.wfd.lastdeviceaddr"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, mLastDeviceAddr:Ljava/lang/String;
    const-string v4, "WfdHelpActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdHelpActivity;->makeNdefMessage(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 302
    .local v2, message:Landroid/nfc/NdefMessage;
    const-string v4, "android.nfc.extra.TAG"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 304
    .local v0, detectedTag:Landroid/nfc/Tag;
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    .line 306
    iget-object v4, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 311
    .end local v0           #detectedTag:Landroid/nfc/Tag;
    .end local v1           #mLastDeviceAddr:Ljava/lang/String;
    .end local v2           #message:Landroid/nfc/NdefMessage;
    .end local v3           #pref_r:Landroid/content/SharedPreferences;
    :goto_61
    return-void

    .line 309
    :cond_62
    const-string v4, "WfdHelpActivity"

    const-string v5, "Activity received other intent from NDEF_DISCOVER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/high16 v6, 0x1080

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 385
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_ac

    .line 431
    :goto_b
    return v2

    .line 387
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "called_by_nfc"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "called_by_nfc"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 388
    const-string v2, "wfd"

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    .line 389
    .local v1, wfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "show_dialog_once"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    const-string v2, "called_by_nfc"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 394
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_4c

    .line 395
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    :cond_4c
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #wfdManager:Lcom/samsung/wfd/WfdManager;
    :goto_4f
    move v2, v3

    .line 431
    goto :goto_b

    .line 399
    :cond_51
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.NFC_HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .restart local v0       #intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_61

    .line 401
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    :cond_61
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4f

    .line 407
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_65
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->isWfdConnected()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .restart local v0       #intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_7b

    .line 410
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 412
    :cond_7b
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4f

    .line 414
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7f
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "show_dialog_once"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    const-string v2, "tag_write_if_success"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_9c

    .line 419
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 421
    :cond_9c
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4f

    .line 425
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_a0
    const-string v2, "WfdHelpActivity"

    const-string v4, "back button tapped"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->finish()V

    goto :goto_4f

    .line 385
    nop

    :sswitch_data_ac
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_65
        0x102002c -> :sswitch_a0
    .end sparse-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 282
    const-string v1, "WfdHelpActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 285
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_13

    .line 286
    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 287
    :cond_13
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 269
    const-string v2, "WfdHelpActivity"

    const-string v4, "onResume"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 272
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 274
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    if-eqz v0, :cond_2b

    move-object v2, v3

    .line 275
    check-cast v2, [[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 277
    :cond_2b
    return-void
.end method

.method writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .registers 13
    .parameter "message"
    .parameter "tag"

    .prologue
    const v9, 0x7f0903bd

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 314
    const-string v7, "WfdHelpActivity"

    const-string v8, "writeTag"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v7

    array-length v4, v7

    .line 318
    .local v4, size:I
    :try_start_11
    invoke-static {p2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v3

    .line 319
    .local v3, ndef:Landroid/nfc/tech/Ndef;
    if-eqz v3, :cond_a8

    .line 320
    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->connect()V

    .line 322
    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v7

    if-nez v7, :cond_32

    .line 323
    const-string v6, "WfdHelpActivity"

    const-string v7, "Tag is read-only."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v6, "Tag is read-only"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 367
    .end local v3           #ndef:Landroid/nfc/tech/Ndef;
    :goto_31
    return v5

    .line 328
    .restart local v3       #ndef:Landroid/nfc/tech/Ndef;
    :cond_32
    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v7

    if-ge v7, v4, :cond_75

    .line 329
    const-string v6, "WfdHelpActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tag capacity is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes, message is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_64} :catch_65

    goto :goto_31

    .line 362
    .end local v3           #ndef:Landroid/nfc/tech/Ndef;
    :catch_65
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "WfdHelpActivity"

    const-string v7, "Failed to write tag"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {p0, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_31

    .line 334
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #ndef:Landroid/nfc/tech/Ndef;
    :cond_75
    :try_start_75
    invoke-virtual {v3, p1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 335
    const v7, 0x7f0b02ed

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 336
    .local v2, isReadOnly:Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 337
    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->makeReadOnly()Z

    .line 340
    :cond_8a
    const-string v7, "WfdHelpActivity"

    const-string v8, "Wrote message to pre-formatted tag."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const v7, 0x7f0903bc

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 342
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.wfd.ALL_CLEAR"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 343
    goto :goto_31

    .line 345
    .end local v2           #isReadOnly:Landroid/widget/CheckBox;
    :cond_a8
    invoke-static {p2}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_ab} :catch_65

    move-result-object v1

    .line 346
    .local v1, format:Landroid/nfc/tech/NdefFormatable;
    if-eqz v1, :cond_d3

    .line 348
    :try_start_ae
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 349
    invoke-virtual {v1, p1}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    .line 350
    const-string v7, "WfdHelpActivity"

    const-string v8, "Formatted tag and wrote message"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_bb} :catch_be
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_bb} :catch_65

    move v5, v6

    .line 351
    goto/16 :goto_31

    .line 352
    :catch_be
    move-exception v0

    .line 353
    .local v0, e:Ljava/io/IOException;
    :try_start_bf
    const-string v6, "WfdHelpActivity"

    const-string v7, "Failed to format tag."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const v6, 0x7f0903bd

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_31

    .line 358
    .end local v0           #e:Ljava/io/IOException;
    :cond_d3
    const-string v6, "WfdHelpActivity"

    const-string v7, "Tag doesn\'t support NDEF."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_da} :catch_65

    goto/16 :goto_31
.end method
