.class Lcom/android/settings/nearby/NearbySettings$10;
.super Landroid/content/BroadcastReceiver;
.source "NearbySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbySettings;)V
    .registers 2
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 34
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 911
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 912
    .local v3, action:Ljava/lang/String;
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: BroadcastReceiver onReceive(): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v27, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_32

    const-string v27, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17a

    .line 916
    :cond_32
    const-string v27, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 918
    .local v5, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v18

    .line 921
    .local v18, netInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    const-string v28, "wifip2p"

    #calls: Lcom/android/settings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static/range {v27 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1200(Lcom/android/settings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 922
    .local v26, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    const/16 v27, 0xd

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v19

    .line 925
    .local v19, netInfoP2p:Landroid/net/NetworkInfo;
    if-eqz v26, :cond_12e

    if-eqz v18, :cond_12e

    .line 926
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: intent: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " state: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_12f

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_12f

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_12f

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_12f

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_12e

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v28

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v28

    #calls: Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V
    invoke-static/range {v27 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1300(Lcom/android/settings/nearby/NearbySettings;Landroid/preference/Preference;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v27

    if-eqz v27, :cond_12e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v27

    if-eqz v27, :cond_12e

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/ProgressDialog;->cancel()V

    .line 1118
    .end local v3           #action:Ljava/lang/String;
    .end local v5           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v18           #netInfo:Landroid/net/NetworkInfo;
    .end local v19           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v26           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_12e
    :goto_12e
    return-void

    .line 941
    .restart local v3       #action:Ljava/lang/String;
    .restart local v5       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v18       #netInfo:Landroid/net/NetworkInfo;
    .restart local v19       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v26       #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_12f
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: STATE WIFI:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", P2P:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_15d} :catch_15e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15d} :catch_18e

    goto :goto_12e

    .line 1112
    .end local v3           #action:Ljava/lang/String;
    .end local v5           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v18           #netInfo:Landroid/net/NetworkInfo;
    .end local v19           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v26           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :catch_15e
    move-exception v9

    .line 1113
    .local v9, e:Landroid/content/res/Resources$NotFoundException;
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: NotFoundException on broadcast receiver: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12e

    .line 947
    .end local v9           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v3       #action:Ljava/lang/String;
    :cond_17a
    :try_start_17a
    const-string v27, "com.android.settings.allshare.REFRESH"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1aa

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #calls: Lcom/android/settings/nearby/NearbySettings;->refreshPreferenceValues()V
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$200(Lcom/android/settings/nearby/NearbySettings;)V
    :try_end_18d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17a .. :try_end_18d} :catch_15e
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_18d} :catch_18e

    goto :goto_12e

    .line 1114
    .end local v3           #action:Ljava/lang/String;
    :catch_18e
    move-exception v10

    .line 1115
    .local v10, e1:Ljava/lang/Exception;
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: Exception on broadcast receiver: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12e

    .line 949
    .end local v10           #e1:Ljava/lang/Exception;
    .restart local v3       #action:Ljava/lang/String;
    :cond_1aa
    :try_start_1aa
    const-string v27, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1c0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v27

    const-string v28, "android.intent.action.MEDIA_EJECT"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_25b

    .line 951
    :cond_1c0
    const-string v27, "AllshareSetting"

    const-string v28, "AllshareSetting: media mount changed"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1aa .. :try_end_1c7} :catch_15e
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1c7} :catch_18e

    .line 956
    :try_start_1c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v27

    if-nez v27, :cond_23e

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/DownloadListPreference;->getValue()Ljava/lang/String;

    move-result-object v27

    const-string v28, "1"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_20d

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v27

    const-string v28, "0"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/nearby/DownloadListPreference;->setValue(Ljava/lang/String;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v28

    const-string v29, "0"

    invoke-virtual/range {v27 .. v29}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 970
    :cond_20d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_21c} :catch_21e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c7 .. :try_end_21c} :catch_15e

    goto/16 :goto_12e

    .line 986
    :catch_21e
    move-exception v9

    .line 987
    .local v9, e:Ljava/lang/Exception;
    :try_start_21f
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: refreshPreferenceValues() Storages :"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21f .. :try_end_23c} :catch_15e
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_23c} :catch_18e

    goto/16 :goto_12e

    .line 973
    .end local v9           #e:Ljava/lang/Exception;
    :cond_23e
    :try_start_23e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v27

    if-eqz v27, :cond_12e

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_259
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_259} :catch_21e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23e .. :try_end_259} :catch_15e

    goto/16 :goto_12e

    .line 990
    :cond_25b
    :try_start_25b
    const-string v27, "com.android.settings.allshare.UPDATE_LIST"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_30e

    .line 991
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: com.android.settings.allshare.UPDATE_LIST "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "ACCEPTLIST"

    const/16 v30, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v27, "ACCEPTLIST"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 995
    .local v14, isAcceptList:Z
    const-string v27, "INDEX"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v13

    .line 999
    .local v13, index:[I
    if-eqz v14, :cond_2f2

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1600(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v23

    .line 1005
    .local v23, preference:Landroid/preference/MultiSelectListPreference;
    :goto_2af
    invoke-virtual/range {v23 .. v23}, Landroid/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 1006
    .local v11, entry:[Ljava/lang/CharSequence;
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 1007
    .local v20, newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2b9
    array-length v0, v13

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v12, v0, :cond_2fd

    .line 1008
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: Index: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    aget v29, v13, v12

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    aget v29, v13, v12

    aget-object v29, v11, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    aget v27, v13, v12

    aget-object v27, v11, v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1007
    add-int/lit8 v12, v12, 0x1

    goto :goto_2b9

    .line 1002
    .end local v11           #entry:[Ljava/lang/CharSequence;
    .end local v12           #i:I
    .end local v20           #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #preference:Landroid/preference/MultiSelectListPreference;
    :cond_2f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1700(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v23

    .restart local v23       #preference:Landroid/preference/MultiSelectListPreference;
    goto :goto_2af

    .line 1011
    .restart local v11       #entry:[Ljava/lang/CharSequence;
    .restart local v12       #i:I
    .restart local v20       #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_12e

    .line 1012
    .end local v11           #entry:[Ljava/lang/CharSequence;
    .end local v12           #i:I
    .end local v13           #index:[I
    .end local v14           #isAcceptList:Z
    .end local v20           #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #preference:Landroid/preference/MultiSelectListPreference;
    :cond_30e
    const-string v27, "com.android.settings.allshare.SERVER_STATE_CHANGE"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_391

    .line 1013
    const-string v27, "AllshareSetting"

    const-string v28, "AllshareSetting: com.android.settings.allshare.SERVER_STATE_CHANGE"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string v27, "START"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 1017
    .local v15, isServerStarted:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1800(Lcom/android/settings/nearby/NearbySettings;)Z

    move-result v27

    move/from16 v0, v27

    if-ne v0, v15, :cond_34c

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_12e

    .line 1020
    :cond_34c
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: INVALID FUNCTION STATE: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    #setter for: Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z
    invoke-static {v0, v15}, Lcom/android/settings/nearby/NearbySettings;->access$1802(Lcom/android/settings/nearby/NearbySettings;Z)Z

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_12e

    .line 1026
    .end local v15           #isServerStarted:Z
    :cond_391
    const-string v27, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_480

    .line 1027
    const-string v27, "AllshareSetting"

    const-string v28, "AllshareSetting: REFRESH_DEVICE_LIST"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const-string v27, "LIST"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1030
    .local v4, bIsAcceptedList:Z
    if-eqz v4, :cond_419

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1600(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/AcceptListPreference;->updateDialog()Z

    move-result v27

    if-eqz v27, :cond_12e

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1600(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v8

    check-cast v8, Landroid/app/AlertDialog;

    .line 1034
    .local v8, dialog:Landroid/app/AlertDialog;
    if-eqz v8, :cond_12e

    .line 1035
    const/16 v27, -0x1

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v22

    .line 1036
    .local v22, positiveButton:Landroid/widget/Button;
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1038
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v17

    .line 1040
    .local v17, listView:Landroid/widget/ListView;
    if-eqz v17, :cond_12e

    .line 1041
    new-instance v16, Lcom/android/settings/nearby/ListItemListener;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1043
    .local v16, listItemListener:Lcom/android/settings/nearby/ListItemListener;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1045
    new-instance v7, Lcom/android/settings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v7, v0, v8, v1, v2}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1047
    .local v7, deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_12e

    .line 1052
    .end local v7           #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    .end local v8           #dialog:Landroid/app/AlertDialog;
    .end local v16           #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    .end local v17           #listView:Landroid/widget/ListView;
    .end local v22           #positiveButton:Landroid/widget/Button;
    :cond_419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1700(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/RejectListPreference;->updateDialog()Z

    move-result v27

    if-eqz v27, :cond_12e

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1700(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v8

    check-cast v8, Landroid/app/AlertDialog;

    .line 1055
    .restart local v8       #dialog:Landroid/app/AlertDialog;
    if-eqz v8, :cond_12e

    .line 1056
    const/16 v27, -0x1

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v22

    .line 1057
    .restart local v22       #positiveButton:Landroid/widget/Button;
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1059
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v17

    .line 1061
    .restart local v17       #listView:Landroid/widget/ListView;
    if-eqz v17, :cond_12e

    .line 1062
    new-instance v16, Lcom/android/settings/nearby/ListItemListener;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1064
    .restart local v16       #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1066
    new-instance v7, Lcom/android/settings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v7, v0, v8, v1, v2}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1068
    .restart local v7       #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_12e

    .line 1076
    .end local v4           #bIsAcceptedList:Z
    .end local v7           #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    .end local v8           #dialog:Landroid/app/AlertDialog;
    .end local v16           #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    .end local v17           #listView:Landroid/widget/ListView;
    .end local v22           #positiveButton:Landroid/widget/Button;
    :cond_480
    const-string v27, "com.android.settings.allshare.SERVER_DB_UPDATE"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_569

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    #setter for: Lcom/android/settings/nearby/NearbySettings;->bDBUpdated:Z
    invoke-static/range {v27 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1902(Lcom/android/settings/nearby/NearbySettings;Z)Z

    .line 1079
    const-string v27, "AUTO_START"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_12e

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1000(Lcom/android/settings/nearby/NearbySettings;)Z

    move-result v27

    if-eqz v27, :cond_4f8

    .line 1081
    const-string v27, "AllshareSetting"

    const-string v28, "AllshareSetting: Auto start DMS!!"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v27

    const-string v28, "pref_allshare"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 1086
    .local v24, sharedPreference:Landroid/content/SharedPreferences;
    const-string v27, "allshare_welcome_popup"

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 1089
    .local v25, welcomePopup:Z
    if-nez v25, :cond_4f8

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #calls: Lcom/android/settings/nearby/NearbySettings;->requestWelcomePopup()V
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$2000(Lcom/android/settings/nearby/NearbySettings;)V

    .line 1092
    .end local v24           #sharedPreference:Landroid/content/SharedPreferences;
    .end local v25           #welcomePopup:Z
    :cond_4f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    #setter for: Lcom/android/settings/nearby/NearbySettings;->dialogTime:J
    invoke-static/range {v27 .. v29}, Lcom/android/settings/nearby/NearbySettings;->access$2102(Lcom/android/settings/nearby/NearbySettings;J)J

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z
    invoke-static/range {v27 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1002(Lcom/android/settings/nearby/NearbySettings;Z)Z

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "AutoDMS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z
    invoke-static/range {v29 .. v29}, Lcom/android/settings/nearby/NearbySettings;->access$1000(Lcom/android/settings/nearby/NearbySettings;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1097
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->dialogTime:J
    invoke-static/range {v29 .. v29}, Lcom/android/settings/nearby/NearbySettings;->access$2100(Lcom/android/settings/nearby/NearbySettings;)J

    move-result-wide v29

    sub-long v27, v27, v29

    const-wide/16 v29, 0x3e8

    cmp-long v27, v27, v29

    if-gez v27, :cond_558

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$2200(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0xbba

    const-wide/16 v29, 0x3e8

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_12e

    .line 1100
    :cond_558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$2200(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0xbba

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12e

    .line 1104
    :cond_569
    const-string v27, "com.android.settings.allshare.ACTIVITY_START"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12e

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 1106
    .local v6, currentFlag:I
    const-string v27, "FLAG"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 1108
    .local v21, otherFlag:I
    move/from16 v0, v21

    if-eq v6, v0, :cond_12e

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$10;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$2200(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0xbbb

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5a6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25b .. :try_end_5a6} :catch_15e
    .catch Ljava/lang/Exception; {:try_start_25b .. :try_end_5a6} :catch_18e

    goto/16 :goto_12e
.end method
