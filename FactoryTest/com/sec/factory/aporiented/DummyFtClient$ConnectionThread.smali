.class Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;
.super Ljava/lang/Thread;
.source "DummyFtClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/DummyFtClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private active:Z

.field private final context:Landroid/content/Context;

.field private in:Ljava/io/BufferedReader;

.field final synthetic this$0:Lcom/sec/factory/aporiented/DummyFtClient;


# direct methods
.method public constructor <init>(Lcom/sec/factory/aporiented/DummyFtClient;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->context:Landroid/content/Context;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->active:Z

    .line 196
    return-void
.end method


# virtual methods
.method public kill()V
    .registers 4

    .prologue
    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->active:Z

    .line 280
    const-string v0, "DummyFtClient"

    const-string v1, "run"

    const-string v2, "Kill ConnectionThread"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 200
    const-string v6, "DummyFtClient"

    const-string v7, "run"

    const-string v8, "ConnectionThread start"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, connected:Z
    const/4 v2, 0x0

    .line 205
    .local v2, garbage_count:I
    new-instance v4, Landroid/net/LocalSocketAddress;

    const-string v6, "FactoryClientRecv"

    invoke-direct {v4, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 206
    .local v4, lsa_recv:Landroid/net/LocalSocketAddress;
    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string v6, "FactoryClientSend"

    invoke-direct {v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 208
    .local v5, lsa_send:Landroid/net/LocalSocketAddress;
    :cond_1a
    if-nez v0, :cond_109

    .line 210
    :try_start_1c
    iget-object v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v6, v6, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v6

    if-nez v6, :cond_36

    .line 211
    iget-object v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v6, v6, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v6, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 212
    const-string v6, "DummyFtClient"

    const-string v7, "run"

    const-string v8, "Connect client socket(receiver)"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_36
    iget-object v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v6, v6, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v6

    if-nez v6, :cond_50

    .line 216
    iget-object v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v6, v6, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-virtual {v6, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 217
    const-string v6, "DummyFtClient"

    const-string v7, "run"

    const-string v8, "Connect client socket(sender)"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_50} :catch_bd

    .line 224
    :cond_50
    :goto_50
    iget-object v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v6, v6, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_c2

    iget-object v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v6, v6, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 225
    const/4 v0, 0x1

    .line 226
    const-string v6, "DummyFtClient"

    const-string v7, "run"

    const-string v8, "Client socket connect success"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_6e
    if-eqz v0, :cond_1a

    .line 237
    const-string v6, "DummyFtClient"

    const-string v7, "run"

    const-string v8, "Connected to AT Core"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->active:Z

    .line 240
    iget-object v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    new-instance v7, Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v8, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v8, v8, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-direct {v7, v8}, Lcom/sec/factory/aporiented/ResponseWriter;-><init>(Landroid/net/LocalSocket;)V

    iput-object v7, v6, Lcom/sec/factory/aporiented/DummyFtClient;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    .line 243
    :try_start_89
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v8, v8, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->in:Ljava/io/BufferedReader;
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_9d} :catch_ce

    .line 252
    :cond_9d
    :goto_9d
    iget-boolean v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->active:Z

    if-eqz v6, :cond_1a

    .line 254
    :try_start_a1
    iget-object v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->in:Ljava/io/BufferedReader;

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, incoming:Ljava/lang/String;
    if-eqz v3, :cond_d6

    .line 256
    iget-object v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v6, v6, Lcom/sec/factory/aporiented/DummyFtClient;->parser:Lcom/sec/factory/aporiented/AtParser;

    iget-object v7, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v7, v7, Lcom/sec/factory/aporiented/DummyFtClient;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    invoke-virtual {v6, v3, v7}, Lcom/sec/factory/aporiented/AtParser;->process(Ljava/lang/String;Lcom/sec/factory/aporiented/ResponseWriter;)Z
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_b4} :catch_b5

    goto :goto_9d

    .line 268
    .end local v3           #incoming:Ljava/lang/String;
    :catch_b5
    move-exception v1

    .line 269
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    .line 270
    iput-boolean v10, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->active:Z

    .line 271
    const/4 v0, 0x0

    .line 272
    goto :goto_9d

    .line 220
    .end local v1           #e:Ljava/io/IOException;
    :catch_bd
    move-exception v1

    .line 221
    .restart local v1       #e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_50

    .line 228
    .end local v1           #e:Ljava/io/IOException;
    :cond_c2
    const/4 v0, 0x0

    .line 230
    const-wide/16 v6, 0xbb8

    :try_start_c5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c8
    .catch Ljava/lang/InterruptedException; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_6e

    .line 231
    :catch_c9
    move-exception v1

    .line 232
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {v1}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_6e

    .line 245
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_ce
    move-exception v1

    .line 246
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    .line 247
    iput-boolean v10, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->active:Z

    .line 248
    const/4 v0, 0x0

    goto :goto_9d

    .line 258
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #incoming:Ljava/lang/String;
    :cond_d6
    add-int/lit8 v2, v2, 0x1

    .line 259
    :try_start_d8
    const-string v6, "DummyFtClient"

    const-string v7, "run"

    const-string v8, "Garbage data incoming..."

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/16 v6, 0xa

    if-le v2, v6, :cond_9d

    .line 262
    const-string v6, "DummyFtClient"

    const-string v7, "run"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Stop DummyFtClient(Garbage data count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->active:Z
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_108} :catch_b5

    goto :goto_9d

    .line 276
    .end local v3           #incoming:Ljava/lang/String;
    :cond_109
    return-void
.end method
