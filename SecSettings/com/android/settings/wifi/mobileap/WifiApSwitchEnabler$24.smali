.class Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .registers 2
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 931
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2d

    .line 932
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$900(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$802(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 933
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 936
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->saveIsShowPassword()V

    .line 938
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    .line 944
    :cond_2c
    :goto_2c
    return-void

    .line 939
    :cond_2d
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2c

    .line 941
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 942
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_2c
.end method
