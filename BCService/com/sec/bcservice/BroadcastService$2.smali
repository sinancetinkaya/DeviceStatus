.class Lcom/sec/bcservice/BroadcastService$2;
.super Ljava/lang/Object;
.source "BroadcastService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/bcservice/BroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/bcservice/BroadcastService;


# direct methods
.method constructor <init>(Lcom/sec/bcservice/BroadcastService;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 167
    const-string v18, ""

    .line 168
    .local v18, receiveDrCmd:Ljava/lang/String;
    const-string v20, ""

    .line 169
    .local v20, responseStr:Ljava/lang/String;
    const-string v16, ""

    .line 170
    .local v16, param:Ljava/lang/String;
    const-string v4, ""

    .line 171
    .local v4, DrParam:Ljava/lang/String;
    const-string v8, "N/A"

    .line 172
    .local v8, StrDefault:Ljava/lang/String;
    const/4 v10, 0x0

    .line 173
    .local v10, arg:[Ljava/lang/String;
    const/16 v26, 0x6

    move/from16 v0, v26

    new-array v14, v0, [Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "rmnet0"

    aput-object v27, v14, v26

    const/16 v26, 0x1

    const-string v27, "rmnet1"

    aput-object v27, v14, v26

    const/16 v26, 0x2

    const-string v27, "rmnet_usb0"

    aput-object v27, v14, v26

    const/16 v26, 0x3

    const-string v27, "wlan0"

    aput-object v27, v14, v26

    const/16 v26, 0x4

    const-string v27, "rndis0"

    aput-object v27, v14, v26

    const/16 v26, 0x5

    const-string v27, "p2p0"

    aput-object v27, v14, v26

    .line 175
    .local v14, iface:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/bcservice/BroadcastService;->getApplicationContext()Landroid/content/Context;

    const-string v27, "phone"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/bcservice/BroadcastService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 176
    .local v9, TelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, MSISDN:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, IMSI:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, IMEI:Ljava/lang/String;
    const/16 v17, 0x0

    .line 183
    .local v17, readSize:I
    const/4 v13, 0x0

    .line 184
    .local v13, i:I
    const-wide/16 v24, 0x0

    .line 187
    .local v24, totalstats:J
    :try_start_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    new-instance v27, Landroid/net/LocalSocket;

    invoke-direct/range {v27 .. v27}, Landroid/net/LocalSocket;-><init>()V

    #setter for: Lcom/sec/bcservice/BroadcastService;->socket:Landroid/net/LocalSocket;
    invoke-static/range {v26 .. v27}, Lcom/sec/bcservice/BroadcastService;->access$102(Lcom/sec/bcservice/BroadcastService;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->socket:Landroid/net/LocalSocket;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$100(Lcom/sec/bcservice/BroadcastService;)Landroid/net/LocalSocket;

    move-result-object v26

    new-instance v27, Landroid/net/LocalSocketAddress;

    const-string v28, "/sdcard/.consocket_stream"

    sget-object v29, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct/range {v27 .. v29}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual/range {v26 .. v27}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 189
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Socket connected as "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v28, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->socket:Landroid/net/LocalSocket;
    invoke-static/range {v28 .. v28}, Lcom/sec/bcservice/BroadcastService;->access$100(Lcom/sec/bcservice/BroadcastService;)Landroid/net/LocalSocket;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->socket:Landroid/net/LocalSocket;
    invoke-static/range {v27 .. v27}, Lcom/sec/bcservice/BroadcastService;->access$100(Lcom/sec/bcservice/BroadcastService;)Landroid/net/LocalSocket;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    #setter for: Lcom/sec/bcservice/BroadcastService;->in:Ljava/io/InputStream;
    invoke-static/range {v26 .. v27}, Lcom/sec/bcservice/BroadcastService;->access$202(Lcom/sec/bcservice/BroadcastService;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    new-instance v27, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v28, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->in:Ljava/io/InputStream;
    invoke-static/range {v28 .. v28}, Lcom/sec/bcservice/BroadcastService;->access$200(Lcom/sec/bcservice/BroadcastService;)Ljava/io/InputStream;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #setter for: Lcom/sec/bcservice/BroadcastService;->dis:Ljava/io/DataInputStream;
    invoke-static/range {v26 .. v27}, Lcom/sec/bcservice/BroadcastService;->access$302(Lcom/sec/bcservice/BroadcastService;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v27, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->socket:Landroid/net/LocalSocket;
    invoke-static/range {v27 .. v27}, Lcom/sec/bcservice/BroadcastService;->access$100(Lcom/sec/bcservice/BroadcastService;)Landroid/net/LocalSocket;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v27

    #setter for: Lcom/sec/bcservice/BroadcastService;->out:Ljava/io/OutputStream;
    invoke-static/range {v26 .. v27}, Lcom/sec/bcservice/BroadcastService;->access$402(Lcom/sec/bcservice/BroadcastService;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    new-instance v27, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v28, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->out:Ljava/io/OutputStream;
    invoke-static/range {v28 .. v28}, Lcom/sec/bcservice/BroadcastService;->access$400(Lcom/sec/bcservice/BroadcastService;)Ljava/io/OutputStream;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #setter for: Lcom/sec/bcservice/BroadcastService;->dos:Ljava/io/DataOutputStream;
    invoke-static/range {v26 .. v27}, Lcom/sec/bcservice/BroadcastService;->access$502(Lcom/sec/bcservice/BroadcastService;Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_101} :catch_3b4

    move-object/from16 v19, v18

    .line 199
    .end local v18           #receiveDrCmd:Ljava/lang/String;
    .local v19, receiveDrCmd:Ljava/lang/String;
    :cond_103
    :goto_103
    const/16 v26, 0x1000

    :try_start_105
    move/from16 v0, v26

    new-array v11, v0, [B

    .line 201
    .local v11, byteMsg:[B
    const-string v26, "BCService"

    const-string v27, "before din.read()"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->dis:Ljava/io/DataInputStream;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$300(Lcom/sec/bcservice/BroadcastService;)Ljava/io/DataInputStream;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->read([B)I

    move-result v17

    .line 203
    const-string v26, "BCService"

    const-string v27, "after din.read()"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/16 v26, -0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_14a

    .line 207
    const-string v26, "BCService"

    const-string v27, "din.read() error"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->stopSelf()V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Lcom/sec/bcservice/BroadcastService;->threadStatus:Z
    invoke-static/range {v26 .. v27}, Lcom/sec/bcservice/BroadcastService;->access$602(Lcom/sec/bcservice/BroadcastService;Z)Z

    .line 212
    :cond_14a
    if-eqz v17, :cond_103

    .line 216
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_153} :catch_7aa

    .line 218
    .end local v19           #receiveDrCmd:Ljava/lang/String;
    .restart local v18       #receiveDrCmd:Ljava/lang/String;
    :try_start_153
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "receive DR cmd: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "<END>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    #setter for: Lcom/sec/bcservice/BroadcastService;->index:I
    invoke-static/range {v26 .. v27}, Lcom/sec/bcservice/BroadcastService;->access$702(Lcom/sec/bcservice/BroadcastService;I)I

    .line 221
    const-string v26, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    const-string v27, "\r"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 222
    .local v21, splitCmd:Ljava/lang/String;
    const-string v26, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    const-string v27, "\r"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, DrAtCmd:Ljava/lang/String;
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "splitCmd = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "<END>"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v26, "="

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_284

    .line 227
    const-string v26, "="

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    const-string v27, "\r"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 228
    const-string v26, "="

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    const-string v27, "\r"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    const-string v27, "="

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v28

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    #calls: Lcom/sec/bcservice/BroadcastService;->getArgument(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/sec/bcservice/BroadcastService;->access$800(Lcom/sec/bcservice/BroadcastService;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 230
    const/16 v26, 0x0

    const-string v27, "="

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 232
    :cond_284
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SplitCmd is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$900(Lcom/sec/bcservice/BroadcastService;)Ljava/util/HashMap;

    move-result-object v26

    const-string v27, "SYSSCOPE"

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_340

    .line 237
    const/16 v26, 0x2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 238
    const/16 v26, 0x0

    aget-object v26, v10, v26

    if-eqz v26, :cond_2f7

    .line 240
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v27, v10, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 242
    :cond_2f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$1000(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 243
    const-string v26, "\r\nOK\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 246
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "result to send = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/bcservice/BroadcastService;->WriteToDR(Ljava/lang/String;)V

    :cond_33c
    :goto_33c
    move-object/from16 v19, v18

    .line 433
    .end local v18           #receiveDrCmd:Ljava/lang/String;
    .restart local v19       #receiveDrCmd:Ljava/lang/String;
    goto/16 :goto_103

    .line 249
    .end local v19           #receiveDrCmd:Ljava/lang/String;
    .restart local v18       #receiveDrCmd:Ljava/lang/String;
    :cond_340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$900(Lcom/sec/bcservice/BroadcastService;)Ljava/util/HashMap;

    move-result-object v26

    const-string v27, "DRSDISCONNECT"

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3d2

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->stopSelf()V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/sec/bcservice/BroadcastService;->threadStatus:Z
    invoke-static/range {v26 .. v27}, Lcom/sec/bcservice/BroadcastService;->access$602(Lcom/sec/bcservice/BroadcastService;Z)Z

    .line 253
    const/16 v26, 0x2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 254
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "result to send = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v26, "\r\nOK\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/bcservice/BroadcastService;->WriteToDR(Ljava/lang/String;)V
    :try_end_3b3
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_3b3} :catch_3b4

    goto :goto_33c

    .line 434
    .end local v3           #DrAtCmd:Ljava/lang/String;
    .end local v11           #byteMsg:[B
    .end local v21           #splitCmd:Ljava/lang/String;
    :catch_3b4
    move-exception v12

    .line 435
    .local v12, e:Ljava/lang/Exception;
    :goto_3b5
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception occured: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void

    .line 258
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v3       #DrAtCmd:Ljava/lang/String;
    .restart local v11       #byteMsg:[B
    .restart local v21       #splitCmd:Ljava/lang/String;
    :cond_3d2
    :try_start_3d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$900(Lcom/sec/bcservice/BroadcastService;)Ljava/util/HashMap;

    move-result-object v26

    const-string v27, "CDCONT"

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_514

    .line 260
    const-string v26, "BCService"

    const-string v27, ">> CDCONT= "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->PARAM_CDCONT_GANR:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$1100(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_446

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #calls: Lcom/sec/bcservice/BroadcastService;->getNumApks()Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$1200(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;

    move-result-object v20

    .line 265
    const-string v26, "\r\nOK\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/bcservice/BroadcastService;->WriteToDR(Ljava/lang/String;)V

    .line 267
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ">> result to send = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33c

    .line 270
    :cond_446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->PARAM_CDCONT_GASZ:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$1300(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4b3

    .line 272
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "getSizeApks: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #calls: Lcom/sec/bcservice/BroadcastService;->getSizeApks()Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$1400(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;

    move-result-object v20

    .line 274
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ">> getSizeApks: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v26, "\r\nOK\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/bcservice/BroadcastService;->WriteToDR(Ljava/lang/String;)V

    goto/16 :goto_33c

    .line 280
    :cond_4b3
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->USBATCOMMAND_REQUEST:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$1500(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v15, intent:Landroid/content/Intent;
    const-string v26, "command"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "command:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/sec/bcservice/BroadcastService;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "sendBroadcast intent "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v28, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->USBATCOMMAND_REQUEST:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/sec/bcservice/BroadcastService;->access$1500(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33c

    .line 287
    .end local v15           #intent:Landroid/content/Intent;
    :cond_514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$900(Lcom/sec/bcservice/BroadcastService;)Ljava/util/HashMap;

    move-result-object v26

    const-string v27, "CDVOL"

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6ed

    .line 289
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ">>CDVOL "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-eqz v4, :cond_33c

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->PARAM_CDVOL_TX:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$1600(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_601

    .line 295
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ">>TotalTxBytes :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v13, 0x0

    :goto_579
    const/16 v26, 0x6

    move/from16 v0, v26

    if-ge v13, v0, :cond_5c6

    .line 298
    aget-object v26, v14, v13

    invoke-static/range {v26 .. v26}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v22

    .line 299
    .local v22, stats:J
    const-wide/16 v26, 0x0

    cmp-long v26, v22, v26

    if-ltz v26, :cond_58d

    .line 301
    add-long v24, v24, v22

    .line 303
    :cond_58d
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "TrafficStats.getTxPackets: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v14, v13

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Txstats is : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    add-int/lit8 v13, v13, 0x1

    goto :goto_579

    .line 306
    .end local v22           #stats:J
    :cond_5c6
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ">>TotalTxBytes :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    .line 308
    const-string v26, "\r\nOK\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/bcservice/BroadcastService;->WriteToDR(Ljava/lang/String;)V

    .line 310
    const-wide/16 v24, 0x0

    goto/16 :goto_33c

    .line 312
    :cond_601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->PARAM_CDVOL_RX:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$1700(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6b6

    .line 314
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ">>TotalRxBytes :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v13, 0x0

    :goto_62e
    const/16 v26, 0x6

    move/from16 v0, v26

    if-ge v13, v0, :cond_67b

    .line 317
    aget-object v26, v14, v13

    invoke-static/range {v26 .. v26}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v22

    .line 318
    .restart local v22       #stats:J
    const-wide/16 v26, 0x0

    cmp-long v26, v22, v26

    if-ltz v26, :cond_642

    .line 320
    add-long v24, v24, v22

    .line 322
    :cond_642
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "TrafficStats.getRxPackets: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v14, v13

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Rxstats is : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    add-int/lit8 v13, v13, 0x1

    goto :goto_62e

    .line 325
    .end local v22           #stats:J
    :cond_67b
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ">>TotalRxBytes :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    .line 327
    const-string v26, "\r\nOK\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/bcservice/BroadcastService;->WriteToDR(Ljava/lang/String;)V

    .line 329
    const-wide/16 v24, 0x0

    goto/16 :goto_33c

    .line 333
    :cond_6b6
    move-object/from16 v20, v8

    .line 334
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "CDVOL response:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v26, "\r\nOK\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/bcservice/BroadcastService;->WriteToDR(Ljava/lang/String;)V

    goto/16 :goto_33c

    .line 406
    :cond_6ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$900(Lcom/sec/bcservice/BroadcastService;)Ljava/util/HashMap;

    move-result-object v26

    const-string v27, "ATI"

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_749

    .line 408
    const-string v26, "BCService"

    const-string v27, ">>ATI :"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {}, Lcom/sec/bcservice/BroadcastService;->access$1800()Ljava/lang/String;

    move-result-object v20

    .line 411
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "ATI response:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v26, "\r\nOK\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/bcservice/BroadcastService;->WriteToDR(Ljava/lang/String;)V

    goto/16 :goto_33c

    .line 418
    :cond_749
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->USBATCOMMAND_REQUEST:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/sec/bcservice/BroadcastService;->access$1500(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .restart local v15       #intent:Landroid/content/Intent;
    const-string v26, "command"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "command:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/sec/bcservice/BroadcastService;->sendBroadcast(Landroid/content/Intent;)V

    .line 429
    const-string v26, "BCService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "sendBroadcast intent "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/bcservice/BroadcastService$2;->this$0:Lcom/sec/bcservice/BroadcastService;

    move-object/from16 v28, v0

    #getter for: Lcom/sec/bcservice/BroadcastService;->USBATCOMMAND_REQUEST:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/sec/bcservice/BroadcastService;->access$1500(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a8
    .catch Ljava/lang/Exception; {:try_start_3d2 .. :try_end_7a8} :catch_3b4

    goto/16 :goto_33c

    .line 434
    .end local v3           #DrAtCmd:Ljava/lang/String;
    .end local v11           #byteMsg:[B
    .end local v15           #intent:Landroid/content/Intent;
    .end local v18           #receiveDrCmd:Ljava/lang/String;
    .end local v21           #splitCmd:Ljava/lang/String;
    .restart local v19       #receiveDrCmd:Ljava/lang/String;
    :catch_7aa
    move-exception v12

    move-object/from16 v18, v19

    .end local v19           #receiveDrCmd:Ljava/lang/String;
    .restart local v18       #receiveDrCmd:Ljava/lang/String;
    goto/16 :goto_3b5
.end method
