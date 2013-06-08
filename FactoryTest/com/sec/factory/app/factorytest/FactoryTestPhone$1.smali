.class Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;
.super Ljava/lang/Object;
.source "FactoryTestPhone.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)V
    .registers 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "className"
    .parameter "service"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mSecPhoneServiceConnection.onServiceConnected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$102(Lcom/sec/factory/app/factorytest/FactoryTestPhone;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 252
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    const/4 v1, 0x1

    #setter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->isConnected:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$202(Lcom/sec/factory/app/factorytest/FactoryTestPhone;Z)Z

    .line 253
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mSecPhoneServiceConnection.onServiceConnected"

    const-string v2, "isConnected == true"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_29
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$300()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 256
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mSecPhoneServiceConnection.onServiceConnected"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$400(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mResponse"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$500(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mData:[B
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$400(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResponse:Landroid/os/Message;
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$500(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Landroid/os/Message;

    move-result-object v2

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->sendMessageToRil([BLandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$600(Lcom/sec/factory/app/factorytest/FactoryTestPhone;[BLandroid/os/Message;)V

    goto :goto_29

    .line 260
    :cond_79
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "className"

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mSecPhoneServiceConnection.onServiceDisconnected"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->isConnected:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$202(Lcom/sec/factory/app/factorytest/FactoryTestPhone;Z)Z

    .line 265
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #setter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$102(Lcom/sec/factory/app/factorytest/FactoryTestPhone;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 266
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->rebindToSecPhoneService()V
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$700(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)V

    .line 267
    return-void
.end method
