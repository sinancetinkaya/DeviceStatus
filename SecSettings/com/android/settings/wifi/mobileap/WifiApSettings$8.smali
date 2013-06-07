.class Lcom/android/settings/wifi/mobileap/WifiApSettings$8;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0xd

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 647
    const/4 v1, -0x1

    if-ne p2, v1, :cond_cf

    .line 648
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1202(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 649
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 651
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->saveIsShowPassword()V

    .line 653
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 654
    const-string v1, "DCM"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 656
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v3, :cond_8c

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    #calls: Lcom/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 657
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v7, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 659
    const-wide/16 v1, 0x1f4

    :try_start_74
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_74 .. :try_end_77} :catch_87

    .line 663
    :goto_77
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 683
    :cond_86
    :goto_86
    return-void

    .line 660
    :catch_87
    move-exception v0

    .line 661
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_77

    .line 665
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_8c
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V

    goto :goto_86

    .line 668
    :cond_96
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v3, :cond_c5

    .line 669
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v7, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 671
    const-wide/16 v1, 0x1f4

    :try_start_ad
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_ad .. :try_end_b0} :catch_c0

    .line 675
    :goto_b0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_86

    .line 672
    :catch_c0
    move-exception v0

    .line 673
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b0

    .line 677
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_c5
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V

    goto :goto_86

    .line 680
    :cond_cf
    const/4 v1, -0x2

    if-ne p2, v1, :cond_86

    goto :goto_86
.end method
