.class Lcom/sec/factory/modules/ModuleCommunicationService$2;
.super Landroid/os/Handler;
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
    .line 100
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0x3e8

    const/16 v11, 0xc

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_226

    .line 180
    :cond_9
    :goto_9
    return-void

    .line 104
    :sswitch_a
    const-string v0, "ModuleCommunicationService"

    const-string v1, "mHandler.handleMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTimeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mTimeout:I
    invoke-static {v3}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$400(Lcom/sec/factory/modules/ModuleCommunicationService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "ModuleCommunicationService"

    const-string v1, "mHandler.handleMessage"

    const-string v2, "MSG_BT_DISCOVERY_CANCEL_TIMEOUT"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    .line 108
    .local v10, mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 109
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothDiscoveryStop()V
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$100(Lcom/sec/factory/modules/ModuleCommunicationService;)V

    .line 111
    :cond_42
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    const-string v1, "NOT FOUND"

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->bluetoothResponse(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$000(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)V

    goto :goto_9

    .line 116
    .end local v10           #mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    :sswitch_4a
    const-string v0, "ModuleCommunicationService"

    const-string v1, "mHandler.handleMessage"

    const-string v4, "MSG_GPS_START"

    invoke-static {v0, v1, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$600(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$500(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 119
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    .line 123
    :sswitch_82
    const-string v0, "ModuleCommunicationService"

    const-string v1, "mHandler.handleMessage"

    const-string v2, "MSG_GPS_START_DELAY"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_9

    .line 128
    :sswitch_af
    const-string v0, "ModuleCommunicationService"

    const-string v1, "mHandler.handleMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler : MESSAGE_GPS_READ mGpsRetryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mGpsRetryCount:I
    invoke-static {v3}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$800(Lcom/sec/factory/modules/ModuleCommunicationService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v6, 0x0

    .line 132
    .local v6, buf:Ljava/io/BufferedReader;
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mGpsRetryCount:I
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$800(Lcom/sec/factory/modules/ModuleCommunicationService;)I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_10d

    .line 133
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    const-string v1, "NG"

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->gpsResponse(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$900(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)V

    .line 134
    const-string v0, "ModuleCommunicationService"

    const-string v1, "mHandler.handleMessage"

    const-string v2, "mHandler : we can not get C/No!!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mGpsRetryCount:I
    invoke-static {v0, v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$802(Lcom/sec/factory/modules/ModuleCommunicationService;I)I

    .line 137
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$600(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$500(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 139
    invoke-static {}, Lcom/sec/factory/modules/ModuleCommunication;->deleteGpsFiles()V

    goto/16 :goto_9

    .line 143
    :cond_10d
    :try_start_10d
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/data/sv_cno.info"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1fa0

    invoke-direct {v7, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_11b
    .catchall {:try_start_10d .. :try_end_11b} :catchall_1fd
    .catch Ljava/io/FileNotFoundException; {:try_start_10d .. :try_end_11b} :catch_21f
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_11b} :catch_1c8

    .line 145
    .end local v6           #buf:Ljava/io/BufferedReader;
    .local v7, buf:Ljava/io/BufferedReader;
    :try_start_11b
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mData:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$1002(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mData:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$1000(Lcom/sec/factory/modules/ModuleCommunicationService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_156

    .line 147
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_14e
    .catchall {:try_start_11b .. :try_end_14e} :catchall_219
    .catch Ljava/io/FileNotFoundException; {:try_start_11b .. :try_end_14e} :catch_182
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_14e} :catch_21c

    .line 165
    :goto_14e
    if-eqz v7, :cond_222

    .line 167
    :try_start_150
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_1c1

    move-object v6, v7

    .line 170
    .end local v7           #buf:Ljava/io/BufferedReader;
    .restart local v6       #buf:Ljava/io/BufferedReader;
    goto/16 :goto_9

    .line 150
    .end local v6           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    :cond_156
    :try_start_156
    const-string v0, "ModuleCommunicationService"

    const-string v1, "mHandler.handleMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS START CONFIRM with C/No = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mData:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$1000(Lcom/sec/factory/modules/ModuleCommunicationService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mData:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$1000(Lcom/sec/factory/modules/ModuleCommunicationService;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->gpsResponse(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$900(Lcom/sec/factory/modules/ModuleCommunicationService;Ljava/lang/String;)V
    :try_end_181
    .catchall {:try_start_156 .. :try_end_181} :catchall_219
    .catch Ljava/io/FileNotFoundException; {:try_start_156 .. :try_end_181} :catch_182
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_181} :catch_21c

    goto :goto_14e

    .line 154
    :catch_182
    move-exception v9

    move-object v6, v7

    .line 155
    .end local v7           #buf:Ljava/io/BufferedReader;
    .restart local v6       #buf:Ljava/io/BufferedReader;
    .local v9, ex:Ljava/io/FileNotFoundException;
    :goto_184
    :try_start_184
    const-string v0, "ModuleCommunicationService"

    const-string v1, "mHandler.handleMessage"

    const-string v2, "C/No is not detection yet, try again after 500ms"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$808(Lcom/sec/factory/modules/ModuleCommunicationService;)I

    .line 158
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1b4
    .catchall {:try_start_184 .. :try_end_1b4} :catchall_1fd

    .line 165
    if-eqz v6, :cond_9

    .line 167
    :try_start_1b6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1b9
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1b9} :catch_1bb

    goto/16 :goto_9

    .line 168
    :catch_1bb
    move-exception v8

    .line 169
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 168
    .end local v6           #buf:Ljava/io/BufferedReader;
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #ex:Ljava/io/FileNotFoundException;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    :catch_1c1
    move-exception v8

    .line 169
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 170
    .end local v7           #buf:Ljava/io/BufferedReader;
    .restart local v6       #buf:Ljava/io/BufferedReader;
    goto/16 :goto_9

    .line 160
    .end local v8           #e:Ljava/io/IOException;
    :catch_1c8
    move-exception v8

    .line 161
    .restart local v8       #e:Ljava/io/IOException;
    :goto_1c9
    :try_start_1c9
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$808(Lcom/sec/factory/modules/ModuleCommunicationService;)I

    .line 162
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #getter for: Lcom/sec/factory/modules/ModuleCommunicationService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$700(Lcom/sec/factory/modules/ModuleCommunicationService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1f0
    .catchall {:try_start_1c9 .. :try_end_1f0} :catchall_1fd

    .line 165
    if-eqz v6, :cond_9

    .line 167
    :try_start_1f2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1f5
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_1f5} :catch_1f7

    goto/16 :goto_9

    .line 168
    :catch_1f7
    move-exception v8

    .line 169
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 165
    .end local v8           #e:Ljava/io/IOException;
    :catchall_1fd
    move-exception v0

    :goto_1fe
    if-eqz v6, :cond_203

    .line 167
    :try_start_200
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_203
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_203} :catch_204

    .line 170
    :cond_203
    :goto_203
    throw v0

    .line 168
    :catch_204
    move-exception v8

    .line 169
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_203

    .line 175
    .end local v6           #buf:Ljava/io/BufferedReader;
    .end local v8           #e:Ljava/io/IOException;
    :sswitch_209
    const-string v0, "ModuleCommunicationService"

    const-string v1, "mHandler.handleMessage"

    const-string v2, "NFC_ENABLE_DELAY"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommunicationService$2;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    #calls: Lcom/sec/factory/modules/ModuleCommunicationService;->nfcEnable()V
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunicationService;->access$1100(Lcom/sec/factory/modules/ModuleCommunicationService;)V

    goto/16 :goto_9

    .line 165
    .restart local v7       #buf:Ljava/io/BufferedReader;
    :catchall_219
    move-exception v0

    move-object v6, v7

    .end local v7           #buf:Ljava/io/BufferedReader;
    .restart local v6       #buf:Ljava/io/BufferedReader;
    goto :goto_1fe

    .line 160
    .end local v6           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    :catch_21c
    move-exception v8

    move-object v6, v7

    .end local v7           #buf:Ljava/io/BufferedReader;
    .restart local v6       #buf:Ljava/io/BufferedReader;
    goto :goto_1c9

    .line 154
    :catch_21f
    move-exception v9

    goto/16 :goto_184

    .end local v6           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    :cond_222
    move-object v6, v7

    .end local v7           #buf:Ljava/io/BufferedReader;
    .restart local v6       #buf:Ljava/io/BufferedReader;
    goto/16 :goto_9

    .line 102
    nop

    :sswitch_data_226
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_4a
        0xc -> :sswitch_af
        0xd -> :sswitch_82
        0xe -> :sswitch_209
    .end sparse-switch
.end method
