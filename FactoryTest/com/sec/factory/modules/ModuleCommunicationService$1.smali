.class Lcom/sec/factory/modules/ModuleCommunicationService$1;
.super Landroid/content/BroadcastReceiver;
.source "ModuleCommunicationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/ModuleCommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleCommunicationService;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/ModuleCommunicationService;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v9, -0x8000

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 44
    const-string v5, "ModuleCommunicationService"

    const-string v6, "mReceiver.onReceive"

    const-string v7, "BluetoothDevice.ACTION_FOUND"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    const-string v6, "FOUND"

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothResponse(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$000(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)V

    .line 46
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothDiscoveryStop()V
    invoke-static {v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$100(Lcom/sec/factory/modules/ModuleCommunicationService;)V

    .line 97
    :cond_23
    :goto_23
    return-void

    .line 47
    :cond_24
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 48
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 50
    .local v4, state:I
    const-string v5, "ModuleCommunicationService"

    const-string v6, "mReceiver.onReceive"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BluetoothDevice.ACTTION_STATE_CHANGED, state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/16 v5, 0xc

    if-ne v4, v5, :cond_a7

    .line 53
    const-string v5, "ModuleCommunicationService"

    const-string v6, "mReceiver.onReceive"

    const-string v7, "BT STATE = ON"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v5, "ModuleCommunicationService"

    const-string v6, "mReceiver.onReceive"

    const-string v7, "Give Delay before setting discoverable"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-wide/16 v5, 0x1f4

    :try_start_64
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_67} :catch_a2

    .line 63
    :goto_67
    const-string v5, "ModuleCommunicationService"

    const-string v6, "mReceiver.onReceive"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting device to discoverable mode: timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mDiscoverableTime:I
    invoke-static {v8}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$200(Lcom/sec/factory/modules/ModuleCommunicationService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 66
    .local v2, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mDiscoverableTime:I
    invoke-static {v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$200(Lcom/sec/factory/modules/ModuleCommunicationService;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 67
    const/16 v5, 0x17

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    .line 68
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    const-string v6, "ON"

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothResponse(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$000(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)V

    goto :goto_23

    .line 58
    .end local v2           #mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    :catch_a2
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_67

    .line 69
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_a7
    const/16 v5, 0xa

    if-ne v4, v5, :cond_bd

    .line 70
    const-string v5, "ModuleCommunicationService"

    const-string v6, "mReceiver.onReceive"

    const-string v7, "BT STATE = OFF"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    const-string v6, "OFF"

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothResponse(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$000(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 72
    :cond_bd
    if-ne v4, v9, :cond_23

    .line 73
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    const-string v6, "NG"

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothResponse(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$000(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 75
    .end local v4           #state:I
    :cond_c8
    const-string v5, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_120

    .line 76
    const-string v5, "ModuleCommunicationService"

    const-string v6, "mReceiver.onReceive"

    const-string v7, "ACTION_DISCOVERY_FINISHED"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBleSearchCount:I
    invoke-static {v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$300(Lcom/sec/factory/modules/ModuleCommunicationService;)I

    move-result v5

    if-lez v5, :cond_109

    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mIsBleSearchCount:I
    invoke-static {v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$300(Lcom/sec/factory/modules/ModuleCommunicationService;)I

    move-result v5

    const/16 v6, 0x9

    if-gt v5, v6, :cond_109

    .line 78
    const-string v5, "ModuleCommunicationService"

    const-string v6, "mReceiver.onReceive"

    const-string v7, "IS BT LE SEARCH"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-static {v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$308(Lcom/sec/factory/modules/ModuleCommunicationService;)I

    .line 81
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    const/16 v6, 0x2710

    #setter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mTimeout:I
    invoke-static {v5, v6}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$402(Lcom/sec/factory/modules/ModuleCommunicationService;I)I

    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 84
    .restart local v2       #mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startLeDiscovery()Z

    goto/16 :goto_23

    .line 87
    .end local v2           #mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_109
    const-string v5, "ModuleCommunicationService"

    const-string v6, "mReceiver.onReceive"

    const-string v7, "IS NOT BT LE SEARCH"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothDiscoveryStop()V
    invoke-static {v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$100(Lcom/sec/factory/modules/ModuleCommunicationService;)V

    .line 89
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    const-string v6, "NOT FOUND"

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothResponse(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$000(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 91
    :cond_120
    const-string v5, "android.bluetooth.adapter.action.LE_TESE_END_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 92
    const-string v5, "android.bluetooth.adapter.extra.LE_PACKET_COUNTS"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 94
    .local v3, pktCnts:I
    const-string v5, "ModuleCommunicationService"

    const-string v6, "mReceiver.onReceive"

    const-string v7, "LE Packet Counts"

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$1;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothResponse(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$000(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)V

    goto/16 :goto_23
.end method
