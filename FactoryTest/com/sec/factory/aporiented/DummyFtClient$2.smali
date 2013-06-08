.class Lcom/sec/factory/aporiented/DummyFtClient$2;
.super Ljava/lang/Object;
.source "DummyFtClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/aporiented/DummyFtClient;->sendBootCompletedAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/DummyFtClient;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/DummyFtClient;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/factory/aporiented/DummyFtClient$2;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 128
    const/4 v1, 0x0

    .local v1, retryCount:I
    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_33

    .line 129
    iget-object v2, p0, Lcom/sec/factory/aporiented/DummyFtClient$2;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v2, v2, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/sec/factory/aporiented/DummyFtClient$2;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v2, v2, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/sec/factory/aporiented/DummyFtClient$2;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v2, v2, Lcom/sec/factory/aporiented/DummyFtClient;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    if-eqz v2, :cond_34

    .line 131
    const-string v2, "DummyFtClient"

    const-string v3, "sendBootCompletedAndFinish"

    const-string v4, "BOOTING COMPLETED!!"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/sec/factory/aporiented/DummyFtClient$2;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    #getter for: Lcom/sec/factory/aporiented/DummyFtClient;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/factory/aporiented/DummyFtClient;->access$100(Lcom/sec/factory/aporiented/DummyFtClient;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    :cond_33
    return-void

    .line 136
    :cond_34
    const-string v2, "DummyFtClient"

    const-string v3, "sendBootCompletedAndFinish"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry couter : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-wide/16 v2, 0x3e8

    :try_start_50
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_53} :catch_56

    .line 128
    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :catch_56
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_53
.end method
