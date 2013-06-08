.class public Lcom/sec/factory/aporiented/ResponseWriter;
.super Ljava/lang/Object;
.source "ResponseWriter.java"


# instance fields
.field private out:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;)V
    .registers 7
    .parameter "clientSocketSend"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v1, "ResponseWriter"

    const-string v2, "ResponseWriter"

    const-string v3, "Create ResponseWriter"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 19
    :try_start_12
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/sec/factory/aporiented/ResponseWriter;->out:Ljava/io/DataOutputStream;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_24} :catch_25

    .line 27
    :goto_24
    return-void

    .line 21
    :catch_25
    move-exception v0

    .line 22
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_24

    .line 25
    .end local v0           #e:Ljava/io/IOException;
    :cond_2a
    const-string v1, "ResponseWriter"

    const-string v2, "ResponseWriter"

    const-string v3, "Socket is closed"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method


# virtual methods
.method public write(Ljava/lang/String;)Z
    .registers 7
    .parameter "msg"

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, result:Z
    iget-object v2, p0, Lcom/sec/factory/aporiented/ResponseWriter;->out:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_16

    .line 36
    :try_start_5
    iget-object v2, p0, Lcom/sec/factory/aporiented/ResponseWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/sec/factory/aporiented/ResponseWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_11

    .line 41
    :goto_f
    const/4 v1, 0x1

    .line 45
    :goto_10
    return v1

    .line 38
    :catch_11
    move-exception v0

    .line 39
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_f

    .line 43
    .end local v0           #e:Ljava/io/IOException;
    :cond_16
    const-string v2, "ResponseWriter"

    const-string v3, "write"

    const-string v4, "out is null"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method
