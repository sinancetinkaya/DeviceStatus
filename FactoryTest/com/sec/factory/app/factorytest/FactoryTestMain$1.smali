.class Lcom/sec/factory/app/factorytest/FactoryTestMain$1;
.super Landroid/content/BroadcastReceiver;
.source "FactoryTestMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mBroadcastReceiver.onReceive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "com.sec.samsung.STOP_FACTORY_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 105
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$100(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mBroadcastReceiver.onReceive"

    const-string v3, "STOP 15TEST"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->finish()V

    .line 109
    :cond_3c
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getAllitemPass()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 110
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/widget/ListView;

    move-result-object v1

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 111
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    .line 117
    :goto_51
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 118
    return-void

    .line 113
    :cond_55
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 114
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    goto :goto_51
.end method
