.class Lcom/android/settings/wfd/WfdPickerActivity$10;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3000(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_67

    .line 1566
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1567
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    const v1, 0x7f090368

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 1568
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1569
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1570
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/ProgressCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1572
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1574
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 1575
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1576
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$10;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->cancelConnect()V

    .line 1578
    :cond_67
    return-void
.end method
