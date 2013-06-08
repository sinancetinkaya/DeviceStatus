.class public Lcom/sec/factory/aporiented/DummyFtClient;
.super Landroid/app/Service;
.source "DummyFtClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;
    }
.end annotation


# instance fields
.field clientSocket_recv:Landroid/net/LocalSocket;

.field clientSocket_send:Landroid/net/LocalSocket;

.field private connectionThread:Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;

.field public mCounter:I

.field private mHandler:Landroid/os/Handler;

.field public parser:Lcom/sec/factory/aporiented/AtParser;

.field public writer:Lcom/sec/factory/aporiented/ResponseWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    .line 38
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_send:Landroid/net/LocalSocket;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/aporiented/DummyFtClient;->mCounter:I

    .line 105
    new-instance v0, Lcom/sec/factory/aporiented/DummyFtClient$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/DummyFtClient$1;-><init>(Lcom/sec/factory/aporiented/DummyFtClient;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/DummyFtClient;->mHandler:Landroid/os/Handler;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/aporiented/DummyFtClient;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/factory/aporiented/DummyFtClient;->stopService()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/factory/aporiented/DummyFtClient;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/factory/aporiented/DummyFtClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private sendBootCompletedAndFinish()V
    .registers 4

    .prologue
    .line 121
    const-string v0, "DummyFtClient"

    const-string v1, "sendBootCompletedAndFinish"

    const-string v2, "..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isConnectionModeNone()Z

    move-result v0

    if-nez v0, :cond_23

    .line 124
    new-instance v0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;-><init>(Landroid/content/Context;)V

    .line 149
    :goto_18
    iget-object v0, p0, Lcom/sec/factory/aporiented/DummyFtClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/factory/aporiented/DummyFtClient$3;

    invoke-direct {v1, p0}, Lcom/sec/factory/aporiented/DummyFtClient$3;-><init>(Lcom/sec/factory/aporiented/DummyFtClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void

    .line 126
    :cond_23
    iget-object v0, p0, Lcom/sec/factory/aporiented/DummyFtClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/factory/aporiented/DummyFtClient$2;

    invoke-direct {v1, p0}, Lcom/sec/factory/aporiented/DummyFtClient$2;-><init>(Lcom/sec/factory/aporiented/DummyFtClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_18
.end method

.method private stopService()V
    .registers 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sec/factory/aporiented/DummyFtClient;->stopSelf()V

    .line 158
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 52
    const-string v0, "DummyFtClient"

    const-string v1, "onCreate"

    const-string v2, "Create DummyFtClient service"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/factory/support/XMLDataStorage;->parseXML(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 54
    const-string v0, "DummyFtClient"

    const-string v1, "onReceive"

    const-string v2, "ACTION_SIM_STATE_CHANGED => XML data parsing was failed."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1c
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommon;->isConnectionModeNone()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 58
    new-instance v0, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;

    invoke-direct {v0, p0, p0}, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;-><init>(Lcom/sec/factory/aporiented/DummyFtClient;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/aporiented/DummyFtClient;->connectionThread:Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;

    .line 59
    iget-object v0, p0, Lcom/sec/factory/aporiented/DummyFtClient;->connectionThread:Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;

    invoke-virtual {v0}, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->start()V

    .line 67
    :cond_32
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 79
    const-string v1, "DummyFtClient"

    const-string v2, "onDestroy"

    const-string v3, "Destroy DummyFtClient service"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleCommon;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleCommon;->isConnectionModeNone()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 83
    iget-object v1, p0, Lcom/sec/factory/aporiented/DummyFtClient;->connectionThread:Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;

    invoke-virtual {v1}, Lcom/sec/factory/aporiented/DummyFtClient$ConnectionThread;->kill()V

    .line 85
    iget-object v1, p0, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    if-eqz v1, :cond_2d

    .line 87
    :try_start_1f
    iget-object v1, p0, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_recv:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 88
    const-string v1, "DummyFtClient"

    const-string v2, "onDestroy"

    const-string v3, "Close client socket(receiver)"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2d} :catch_40

    .line 94
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_send:Landroid/net/LocalSocket;

    if-eqz v1, :cond_3f

    .line 96
    :try_start_31
    iget-object v1, p0, Lcom/sec/factory/aporiented/DummyFtClient;->clientSocket_send:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 97
    const-string v1, "DummyFtClient"

    const-string v2, "onDestroy"

    const-string v3, "Close client socket(sender)"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3f} :catch_45

    .line 103
    :cond_3f
    :goto_3f
    return-void

    .line 89
    :catch_40
    move-exception v0

    .line 90
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_2d

    .line 98
    .end local v0           #e:Ljava/io/IOException;
    :catch_45
    move-exception v0

    .line 99
    .restart local v0       #e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_3f
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 71
    const-string v0, "DummyFtClient"

    const-string v1, "onStartCommand"

    const-string v2, "..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/sec/factory/aporiented/DummyFtClient;->sendBootCompletedAndFinish()V

    .line 73
    const/4 v0, 0x2

    return v0
.end method
