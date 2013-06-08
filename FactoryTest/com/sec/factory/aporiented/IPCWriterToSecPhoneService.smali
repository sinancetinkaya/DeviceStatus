.class public Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;
.super Ljava/lang/Object;
.source "IPCWriterToSecPhoneService.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryTestServiceConnection:Landroid/content/ServiceConnection;

.field private final mHandler:Landroid/os/Handler;

.field public mResoponseMessenger:Landroid/os/Messenger;

.field private mResponse:Landroid/os/Message;

.field private mSecPhoneServiceMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mResoponseMessenger:Landroid/os/Messenger;

    .line 50
    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mResponse:Landroid/os/Message;

    .line 51
    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mContext:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mSecPhoneServiceMessenger:Landroid/os/Messenger;

    .line 110
    new-instance v0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;-><init>(Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mFactoryTestServiceConnection:Landroid/content/ServiceConnection;

    .line 169
    new-instance v0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$2;-><init>(Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mHandler:Landroid/os/Handler;

    .line 67
    const-string v0, "IPCWriterToSecPhoneService"

    const-string v1, "ResponseWriter"

    const-string v2, "Create IPCWriterToSecPhoneService Without Messenger"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mResoponseMessenger:Landroid/os/Messenger;

    .line 50
    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mResponse:Landroid/os/Message;

    .line 51
    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mContext:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mSecPhoneServiceMessenger:Landroid/os/Messenger;

    .line 110
    new-instance v0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;-><init>(Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mFactoryTestServiceConnection:Landroid/content/ServiceConnection;

    .line 169
    new-instance v0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$2;-><init>(Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mHandler:Landroid/os/Handler;

    .line 55
    const-string v0, "IPCWriterToSecPhoneService"

    const-string v1, "ResponseWriter"

    const-string v2, "Create IPCWriterToSecPhoneService"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mResoponseMessenger:Landroid/os/Messenger;

    .line 58
    if-eqz p1, :cond_34

    .line 59
    iput-object p1, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mContext:Landroid/content/Context;

    .line 63
    :goto_30
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->connectToSecPhoneService()V

    .line 64
    return-void

    .line 61
    :cond_34
    const-string v0, "IPCWriterToSecPhoneService"

    const-string v1, "IPCWriterToSecPhoneService"

    const-string v2, "messenger is not available"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method static synthetic access$002(Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mSecPhoneServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method


# virtual methods
.method public connectToSecPhoneService()V
    .registers 5

    .prologue
    .line 94
    const-string v1, "IPCWriterToSecPhoneService"

    const-string v2, "connectToSecPhoneService"

    const-string v3, " "

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mFactoryTestServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 99
    return-void
.end method

.method public disConnectSecPhoneService()V
    .registers 4

    .prologue
    .line 102
    const-string v0, "IPCWriterToSecPhoneService"

    const-string v1, "disConnectSecPhoneService"

    const-string v2, " "

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :try_start_9
    iget-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mFactoryTestServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    .line 108
    :goto_10
    return-void

    .line 105
    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method public sendRILBootMsg()Z
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 132
    const/4 v0, 0x6

    .line 133
    .local v0, OEM_FUNCTION_ID_IMEI:B
    const/4 v1, 0x5

    .line 140
    .local v1, OEM_IMEI_EVENT_START_IMEI:B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 143
    .local v4, dos:Ljava/io/DataOutputStream;
    const/4 v10, 0x2

    new-array v3, v10, [B

    .line 144
    .local v3, command:[B
    const/4 v10, 0x6

    aput-byte v10, v3, v9

    .line 145
    const/4 v10, 0x5

    aput-byte v10, v3, v8

    .line 147
    const/4 v7, 0x2

    .line 148
    .local v7, sizeofShort:S
    array-length v10, v3

    add-int/2addr v10, v7

    int-to-short v6, v10

    .line 151
    .local v6, length:S
    const/4 v10, 0x0

    :try_start_1c
    array-length v11, v3

    invoke-virtual {v4, v3, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 152
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_4e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_40

    .line 157
    :try_start_23
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 158
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_3b

    .line 163
    :goto_29
    iget-object v9, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mResponse:Landroid/os/Message;

    .line 164
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->write([B)V

    .line 166
    :goto_3a
    return v8

    .line 159
    :catch_3b
    move-exception v5

    .line 160
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 153
    .end local v5           #e:Ljava/io/IOException;
    :catch_40
    move-exception v5

    .line 157
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_41
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 158
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_47} :catch_49

    :goto_47
    move v8, v9

    .line 161
    goto :goto_3a

    .line 159
    :catch_49
    move-exception v5

    .line 160
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 156
    .end local v5           #e:Ljava/io/IOException;
    :catchall_4e
    move-exception v8

    .line 157
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 158
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_56

    .line 161
    :goto_55
    throw v8

    .line 159
    :catch_56
    move-exception v5

    .line 160
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55
.end method

.method public write([B)V
    .registers 9
    .parameter "data"

    .prologue
    .line 72
    const-string v3, "IPCWriterToSecPhoneService"

    const-string v4, "write"

    const-string v5, "Send Response Message to SecPhone"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "IPCWriterToSecPhoneService"

    const-string v4, "write"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v1, req:Landroid/os/Bundle;
    const-string v3, "request"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 77
    iget-object v2, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mResponse:Landroid/os/Message;

    .line 78
    .local v2, response:Landroid/os/Message;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mResponse:Landroid/os/Message;

    .line 79
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 80
    iget-object v3, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mResoponseMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 83
    :try_start_3d
    iget-object v3, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mSecPhoneServiceMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_47

    .line 84
    iget-object v3, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mSecPhoneServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 91
    :goto_46
    return-void

    .line 86
    :cond_47
    const-string v3, "IPCWriterToSecPhoneService"

    const-string v4, "write"

    const-string v5, "send failed!!!"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_50} :catch_51

    goto :goto_46

    .line 88
    :catch_51
    move-exception v0

    .line 89
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_46
.end method
