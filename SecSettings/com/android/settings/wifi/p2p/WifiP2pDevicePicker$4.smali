.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;
.super Landroid/os/CountDownTimer;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 390
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 391
    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_52

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_52

    .line 395
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoFileShareDevice:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDeviceIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    :cond_52
    return-void
.end method

.method public onTick(J)V
    .registers 3
    .parameter "millisUntilFinished"

    .prologue
    .line 387
    return-void
.end method
