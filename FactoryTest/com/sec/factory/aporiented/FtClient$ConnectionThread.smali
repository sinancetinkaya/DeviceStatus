.class Lcom/sec/factory/aporiented/FtClient$ConnectionThread;
.super Ljava/lang/Thread;
.source "FtClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/FtClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private active:Z

.field private final context:Landroid/content/Context;

.field private in:Ljava/io/BufferedReader;

.field final synthetic this$0:Lcom/sec/factory/aporiented/FtClient;


# direct methods
.method public constructor <init>(Lcom/sec/factory/aporiented/FtClient;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->context:Landroid/content/Context;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->active:Z

    .line 191
    return-void
.end method


# virtual methods
.method public kill()V
    .registers 4

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->active:Z

    .line 299
    iget-object v0, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    #getter for: Lcom/sec/factory/aporiented/FtClient;->connectionThread:Lcom/sec/factory/aporiented/FtClient$ConnectionThread;
    invoke-static {v0}, Lcom/sec/factory/aporiented/FtClient;->access$400(Lcom/sec/factory/aporiented/FtClient;)Lcom/sec/factory/aporiented/FtClient$ConnectionThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->interrupt()V

    .line 300
    const-string v0, "FtClient"

    const-string v1, "run"

    const-string v2, "Kill ConnectionThread"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 195
    const-string v7, "FtClient"

    const-string v8, "run"

    const-string v9, "ConnectionThread start"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, connected:Z
    const/4 v2, 0x0

    .line 200
    .local v2, garbage_count:I
    new-instance v4, Landroid/net/LocalSocketAddress;

    const-string v7, "FactoryClientRecv"

    invoke-direct {v4, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 201
    .local v4, lsa_recv:Landroid/net/LocalSocketAddress;
    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string v7, "FactoryClientSend"

    invoke-direct {v5, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 203
    .local v5, lsa_send:Landroid/net/LocalSocketAddress;
    :cond_1b
    if-nez v0, :cond_175

    .line 205
    :try_start_1d
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v7, v7, Lcom/sec/factory/aporiented/FtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v7

    if-nez v7, :cond_37

    .line 206
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v7, v7, Lcom/sec/factory/aporiented/FtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v7, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 207
    const-string v7, "FtClient"

    const-string v8, "run"

    const-string v9, "Connect client socket(receiver)"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_37
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v7, v7, Lcom/sec/factory/aporiented/FtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v7

    if-nez v7, :cond_51

    .line 211
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v7, v7, Lcom/sec/factory/aporiented/FtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-virtual {v7, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 212
    const-string v7, "FtClient"

    const-string v8, "run"

    const-string v9, "Connect client socket(sender)"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_51} :catch_10b

    .line 219
    :cond_51
    :goto_51
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v7, v7, Lcom/sec/factory/aporiented/FtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_111

    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v7, v7, Lcom/sec/factory/aporiented/FtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_111

    .line 220
    const/4 v0, 0x1

    .line 221
    const-string v7, "FtClient"

    const-string v8, "run"

    const-string v9, "Client socket connect success"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_6f
    if-eqz v0, :cond_1b

    .line 232
    const-string v7, "FtClient"

    const-string v8, "run"

    const-string v9, "Connected to AT Core"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput-boolean v12, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->active:Z

    .line 235
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v7, v7, Lcom/sec/factory/aporiented/FtClient;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    if-nez v7, :cond_8f

    .line 236
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    new-instance v8, Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v9, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v9, v9, Lcom/sec/factory/aporiented/FtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-direct {v8, v9}, Lcom/sec/factory/aporiented/ResponseWriter;-><init>(Landroid/net/LocalSocket;)V

    iput-object v8, v7, Lcom/sec/factory/aporiented/FtClient;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 238
    :cond_8f
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v7, v7, Lcom/sec/factory/aporiented/FtClient;->parser:Lcom/sec/factory/aporiented/AtParser;

    if-nez v7, :cond_ab

    .line 239
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    new-instance v8, Lcom/sec/factory/aporiented/AtParser;

    invoke-direct {v8}, Lcom/sec/factory/aporiented/AtParser;-><init>()V

    iput-object v8, v7, Lcom/sec/factory/aporiented/FtClient;->parser:Lcom/sec/factory/aporiented/AtParser;

    .line 240
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v7, v7, Lcom/sec/factory/aporiented/FtClient;->parser:Lcom/sec/factory/aporiented/AtParser;

    iget-object v8, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v9, v9, Lcom/sec/factory/aporiented/FtClient;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    invoke-virtual {v7, v8, v9}, Lcom/sec/factory/aporiented/AtParser;->registerAllHandler(Landroid/content/Context;Lcom/sec/factory/aporiented/ResponseWriter;)V

    .line 251
    :cond_ab
    :try_start_ab
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v9, v9, Lcom/sec/factory/aporiented/FtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->in:Ljava/io/BufferedReader;
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_bf} :catch_11f

    .line 260
    :cond_bf
    :goto_bf
    iget-boolean v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->active:Z

    if-eqz v7, :cond_15b

    .line 262
    :try_start_c3
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->in:Ljava/io/BufferedReader;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, incoming:Ljava/lang/String;
    if-eqz v3, :cond_127

    .line 264
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v7, v7, Lcom/sec/factory/aporiented/FtClient;->parser:Lcom/sec/factory/aporiented/AtParser;

    iget-object v8, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    iget-object v8, v8, Lcom/sec/factory/aporiented/FtClient;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    invoke-virtual {v7, v3, v8}, Lcom/sec/factory/aporiented/AtParser;->process(Ljava/lang/String;Lcom/sec/factory/aporiented/ResponseWriter;)Z

    move-result v6

    .line 265
    .local v6, result:Z
    if-ne v6, v12, :cond_bf

    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    #getter for: Lcom/sec/factory/aporiented/FtClient;->mIsFirstCmd:Z
    invoke-static {v7}, Lcom/sec/factory/aporiented/FtClient;->access$100(Lcom/sec/factory/aporiented/FtClient;)Z

    move-result v7

    if-nez v7, :cond_bf

    .line 268
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    #calls: Lcom/sec/factory/aporiented/FtClient;->setPendingIntent()V
    invoke-static {v7}, Lcom/sec/factory/aporiented/FtClient;->access$200(Lcom/sec/factory/aporiented/FtClient;)V

    .line 269
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    #getter for: Lcom/sec/factory/aporiented/FtClient;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/factory/aporiented/FtClient;->access$300(Lcom/sec/factory/aporiented/FtClient;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/factory/modules/ModuleCommon;->enableFtClient()Z

    .line 270
    iget-object v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/FtClient;

    const/4 v8, 0x1

    #setter for: Lcom/sec/factory/aporiented/FtClient;->mIsFirstCmd:Z
    invoke-static {v7, v8}, Lcom/sec/factory/aporiented/FtClient;->access$102(Lcom/sec/factory/aporiented/FtClient;Z)Z

    .line 271
    const-string v7, "FtClient"

    const-string v8, "handleMessage"

    const-string v9, "FirstCMDReceived: Noti ON"

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_102} :catch_103

    goto :goto_bf

    .line 285
    .end local v3           #incoming:Ljava/lang/String;
    .end local v6           #result:Z
    :catch_103
    move-exception v1

    .line 286
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    .line 287
    iput-boolean v11, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->active:Z

    .line 288
    const/4 v0, 0x0

    .line 289
    goto :goto_bf

    .line 215
    .end local v1           #e:Ljava/io/IOException;
    :catch_10b
    move-exception v1

    .line 216
    .restart local v1       #e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto/16 :goto_51

    .line 223
    .end local v1           #e:Ljava/io/IOException;
    :cond_111
    const/4 v0, 0x0

    .line 225
    const-wide/16 v7, 0xbb8

    :try_start_114
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_117
    .catch Ljava/lang/InterruptedException; {:try_start_114 .. :try_end_117} :catch_119

    goto/16 :goto_6f

    .line 226
    :catch_119
    move-exception v1

    .line 227
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {v1}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto/16 :goto_6f

    .line 253
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_11f
    move-exception v1

    .line 254
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    .line 255
    iput-boolean v11, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->active:Z

    .line 256
    const/4 v0, 0x0

    goto :goto_bf

    .line 275
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #incoming:Ljava/lang/String;
    :cond_127
    add-int/lit8 v2, v2, 0x1

    .line 276
    :try_start_129
    const-string v7, "FtClient"

    const-string v8, "run"

    const-string v9, "Garbage data incoming..."

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/16 v7, 0xa

    if-le v2, v7, :cond_bf

    .line 279
    const-string v7, "FtClient"

    const-string v8, "run"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stop FtClient(Garbage data count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/factory/aporiented/FtClient$ConnectionThread;->active:Z
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_159} :catch_103

    goto/16 :goto_bf

    .line 291
    .end local v3           #incoming:Ljava/lang/String;
    :cond_15b
    const-string v7, "FtClient"

    const-string v8, "killed thread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connected value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_175
    return-void
.end method
