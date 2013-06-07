.class public Lcom/android/settings/bluetooth/BluetoothScanDialog;
.super Landroid/app/Activity;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static mBtScanDialog:Z


# instance fields
.field mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_16

    .line 57
    const-string v0, "BluetoothScanDialog"

    const-string v1, "onClick :: startScanning()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 62
    :goto_15
    return-void

    .line 60
    :cond_16
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_15
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f040019

    :try_start_6
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->setContentView(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_1b

    .line 36
    :goto_9
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 37
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_3c

    .line 38
    const-string v1, "BluetoothScanDialog"

    const-string v2, "Bluetooth is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_1a
    return-void

    .line 32
    :catch_1b
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothScanDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured from bluetooth_scan_dialog.xml, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    goto :goto_9

    .line 41
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3c
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 46
    const v1, 0x7f0901ae

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->setTitle(I)V

    goto :goto_1a
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 66
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 67
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_14

    .line 68
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    .line 71
    :cond_14
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 72
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 81
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_10

    .line 82
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 83
    :cond_10
    return-void
.end method
