.class Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;
.super Ljava/lang/Object;
.source "IPCWriterToSecPhoneService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;->this$0:Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter "className"
    .parameter "service"

    .prologue
    .line 112
    const-string v2, "IPCWriterToSecPhoneService"

    const-string v3, "onServiceConnected"

    const-string v4, "connected done"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;->this$0:Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mSecPhoneServiceMessenger:Landroid/os/Messenger;
    invoke-static {v2, v3}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->access$002(Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 114
    iget-object v2, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;->this$0:Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->sendRILBootMsg()Z

    .line 115
    new-instance v0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1$1;-><init>(Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;)V

    .line 121
    .local v0, myTask:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 122
    .local v1, timer:Ljava/util/Timer;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 123
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 126
    const-string v0, "IPCWriterToSecPhoneService"

    const-string v1, "onServiceDisconnected"

    const-string v2, "disconnected done"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;->this$0:Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->mSecPhoneServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->access$002(Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 128
    return-void
.end method
