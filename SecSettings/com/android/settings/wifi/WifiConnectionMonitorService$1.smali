.class Lcom/android/settings/wifi/WifiConnectionMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConnectionMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_24

    const-string v15, "WifiConnectionMonitorService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onReceive, Action : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_24
    const-string v15, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6f

    .line 65
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6e

    .line 66
    const-string v15, "wifi_state"

    const/16 v16, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 67
    .local v14, state:I
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_64

    const-string v15, "WifiConnectionMonitorService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onReceive WifiState = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_64
    const/4 v15, 0x3

    if-ne v14, v15, :cond_6e

    .line 69
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->startSearch()V

    .line 161
    .end local v14           #state:I
    :cond_6e
    :goto_6e
    return-void

    .line 72
    :cond_6f
    const-string v15, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_97

    .line 73
    const-string v15, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 74
    .local v8, info:Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    if-eqz v15, :cond_8f

    .line 75
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->startMonitor()V

    goto :goto_6e

    .line 77
    :cond_8f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->stopMonitor()V

    goto :goto_6e

    .line 79
    .end local v8           #info:Landroid/net/NetworkInfo;
    :cond_97
    const-string v15, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1ad

    .line 81
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 82
    :try_start_a8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_b9

    .line 83
    monitor-exit v16

    goto :goto_6e

    .line 111
    :catchall_b6
    move-exception v15

    monitor-exit v16
    :try_end_b8
    .catchall {:try_start_a8 .. :try_end_b8} :catchall_b6

    throw v15

    .line 86
    :cond_b9
    :try_start_b9
    const-string v15, "wifiConfiguration"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 87
    .local v10, network:Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_159

    .line 88
    const-string v15, "changeReason"

    const/16 v17, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 89
    .local v11, reason:I
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_10f

    const-string v15, "WifiConnectionMonitorService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive, SSID:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", status:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",  reason:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catchall {:try_start_b9 .. :try_end_10f} :catchall_b6

    .line 91
    :cond_10f
    const/4 v15, 0x1

    if-ne v11, v15, :cond_126

    .line 92
    :try_start_112
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->removeBlackList(Ljava/lang/String;)V
    :try_end_123
    .catchall {:try_start_112 .. :try_end_123} :catchall_b6
    .catch Ljava/lang/NullPointerException; {:try_start_112 .. :try_end_123} :catch_14e

    .line 111
    .end local v11           #reason:I
    :cond_123
    :goto_123
    :try_start_123
    monitor-exit v16
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_b6

    goto/16 :goto_6e

    .line 93
    .restart local v11       #reason:I
    :cond_126
    :try_start_126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_123

    .line 94
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z
    :try_end_14d
    .catchall {:try_start_126 .. :try_end_14d} :catchall_b6
    .catch Ljava/lang/NullPointerException; {:try_start_126 .. :try_end_14d} :catch_14e

    goto :goto_123

    .line 96
    :catch_14e
    move-exception v5

    .line 97
    .local v5, e:Ljava/lang/NullPointerException;
    :try_start_14f
    const-string v15, "WifiConnectionMonitorService"

    const-string v17, "removeDoubleQuotes - NullPointerException"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_123

    .line 100
    .end local v5           #e:Ljava/lang/NullPointerException;
    .end local v11           #reason:I
    :cond_159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 101
    .local v4, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v4, :cond_171

    .line 102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_123

    .line 104
    :cond_171
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_175
    :goto_175
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_123

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 105
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v15, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v15, :cond_175

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_175

    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    iget v0, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z
    :try_end_1ac
    .catchall {:try_start_14f .. :try_end_1ac} :catchall_b6

    goto :goto_175

    .line 112
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #network:Landroid/net/wifi/WifiConfiguration;
    :cond_1ad
    const-string v15, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2c2

    .line 114
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 115
    :try_start_1be
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1d0

    .line 116
    monitor-exit v16

    goto/16 :goto_6e

    .line 138
    :catchall_1cd
    move-exception v15

    monitor-exit v16
    :try_end_1cf
    .catchall {:try_start_1be .. :try_end_1cf} :catchall_1cd

    throw v15

    .line 119
    :cond_1d0
    :try_start_1d0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v13

    .line 120
    .local v13, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 121
    .restart local v4       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v13, :cond_1ec

    if-nez v4, :cond_1ef

    .line 122
    :cond_1ec
    monitor-exit v16

    goto/16 :goto_6e

    .line 125
    :cond_1ef
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f3
    :goto_1f3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2bf

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 126
    .local v12, result:Landroid/net/wifi/ScanResult;
    iget-object v15, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v15, :cond_1f3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1f3

    iget v15, v12, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$200(Lcom/android/settings/wifi/WifiConnectionMonitorService;)I

    move-result v17

    add-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    if-lt v15, v0, :cond_1f3

    .line 127
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_26d

    const-string v15, "WifiConnectionMonitorService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive, SSID:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", RSSI:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", threashold:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I
    invoke-static/range {v18 .. v18}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$200(Lcom/android/settings/wifi/WifiConnectionMonitorService;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_26d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->removeBlackList(Ljava/lang/String;)V

    .line 130
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_27e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1f3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 131
    .restart local v3       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v15, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v15, :cond_27e

    iget v15, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_27e

    iget-object v15, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_27e

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    iget v0, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto/16 :goto_1f3

    .line 138
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v12           #result:Landroid/net/wifi/ScanResult;
    :cond_2bf
    monitor-exit v16
    :try_end_2c0
    .catchall {:try_start_1d0 .. :try_end_2c0} :catchall_1cd

    goto/16 :goto_6e

    .line 139
    .end local v4           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v13           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2c2
    const-string v15, "android.net.wifi.REMOVE_BLACKLIST"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6e

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 141
    :try_start_2d3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2e5

    .line 142
    monitor-exit v16

    goto/16 :goto_6e

    .line 159
    :catchall_2e2
    move-exception v15

    monitor-exit v16
    :try_end_2e4
    .catchall {:try_start_2d3 .. :try_end_2e4} :catchall_2e2

    throw v15

    .line 144
    :cond_2e5
    :try_start_2e5
    const-string v15, "netId"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 145
    .local v9, netId:I
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v15

    if-eqz v15, :cond_313

    const-string v15, "WifiConnectionMonitorService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onReceive, REMOVE_BLACKLIST netid : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_313
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 148
    .restart local v4       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v4, :cond_32d

    .line 149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v15, v15, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 150
    monitor-exit v16

    goto/16 :goto_6e

    .line 153
    :cond_32d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_331
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_355

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 154
    .restart local v3       #config:Landroid/net/wifi/WifiConfiguration;
    iget v15, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v15, v9, :cond_331

    .line 155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitorService;

    iget-object v0, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->removeBlackList(Ljava/lang/String;)V

    .line 156
    monitor-exit v16

    goto/16 :goto_6e

    .line 159
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_355
    monitor-exit v16
    :try_end_356
    .catchall {:try_start_2e5 .. :try_end_356} :catchall_2e2

    goto/16 :goto_6e
.end method
