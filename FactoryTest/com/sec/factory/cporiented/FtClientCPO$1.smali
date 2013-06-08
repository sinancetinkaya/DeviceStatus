.class Lcom/sec/factory/cporiented/FtClientCPO$1;
.super Ljava/lang/Object;
.source "FtClientCPO.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/cporiented/FtClientCPO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/cporiented/FtClientCPO;


# direct methods
.method constructor <init>(Lcom/sec/factory/cporiented/FtClientCPO;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/factory/cporiented/FtClientCPO$1;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$1;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v0, v0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onServiceConnected"

    const-string v2, "connected done"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$1;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/sec/factory/cporiented/FtClientCPO;->mSecPhoneServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/sec/factory/cporiented/FtClientCPO;->access$002(Lcom/sec/factory/cporiented/FtClientCPO;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 140
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$1;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    invoke-virtual {v0}, Lcom/sec/factory/cporiented/FtClientCPO;->createResponseWriter()V

    .line 141
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$1;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    iget-object v0, v0, Lcom/sec/factory/cporiented/FtClientCPO;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onServiceDisconnected"

    const-string v2, "disconnected done"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$1;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/cporiented/FtClientCPO;->mSecPhoneServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/sec/factory/cporiented/FtClientCPO;->access$002(Lcom/sec/factory/cporiented/FtClientCPO;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 146
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$1;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    invoke-virtual {v0}, Lcom/sec/factory/cporiented/FtClientCPO;->removeResponseWriter()V

    .line 147
    iget-object v0, p0, Lcom/sec/factory/cporiented/FtClientCPO$1;->this$0:Lcom/sec/factory/cporiented/FtClientCPO;

    #calls: Lcom/sec/factory/cporiented/FtClientCPO;->rebindToSecPhoneService()V
    invoke-static {v0}, Lcom/sec/factory/cporiented/FtClientCPO;->access$100(Lcom/sec/factory/cporiented/FtClientCPO;)V

    .line 148
    return-void
.end method
