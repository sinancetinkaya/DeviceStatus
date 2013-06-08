.class Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG$1;
.super Landroid/content/BroadcastReceiver;
.source "FactoryTestMainInnerOTG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->changeOTGState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.factory.action.ACTION_USB_STORAGE_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 50
    const-string v1, "FactoryTestMainInnerOTG"

    const-string v2, "mOTGReceiver.onReceive"

    const-string v3, "ACTION_USB_STORAGE_MOUNTED"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 54
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerFeedback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerFeedback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "Unmounting"

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 56
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/factory/modules/ModuleDevice;->unmount(I)V

    .line 79
    :cond_3f
    :goto_3f
    return-void

    .line 57
    :cond_40
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 59
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerFeedback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->mHandlerFeedback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "Unmounting"

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/factory/modules/ModuleDevice;->unmount(I)V

    goto :goto_3f

    .line 63
    :cond_67
    const-string v1, "com.sec.factory.action.ACTION_USB_STORAGE_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 64
    const-string v1, "FactoryTestMainInnerOTG"

    const-string v2, "mOTGReceiver.onReceive"

    const-string v3, "ACTION_USB_STORAGE_UNMOUNTED"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v1

    if-nez v1, :cond_91

    .line 70
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

    sget v2, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    const/16 v3, 0x50

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->sendMessageTestResult(IBB)V
    invoke-static {v1, v2, v6, v3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->access$100(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;IBB)V

    .line 77
    :goto_8b
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->changeOTGState()V
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;)V

    goto :goto_3f

    .line 74
    :cond_91
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;

    sget v2, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT_FAIL_CASE:I

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->sendMessageTestResultFailCase(IB)V
    invoke-static {v1, v2, v6}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerOTG;IB)V

    goto :goto_8b
.end method
