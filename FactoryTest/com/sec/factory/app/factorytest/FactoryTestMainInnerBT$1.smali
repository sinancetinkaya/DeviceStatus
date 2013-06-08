.class Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT$1;
.super Landroid/content/BroadcastReceiver;
.source "FactoryTestMainInnerBT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, action:Ljava/lang/String;
    const-string v1, "FactoryTestMainInnerBT"

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

    .line 145
    const-string v1, "com.sec.factory.intent.ACTION_BT_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 146
    const-string v1, "FactoryTestMainInnerBT"

    const-string v2, "mBroadcastReceiver.onReceive"

    const-string v3, "ACTION_BT_RESPONSE"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;

    const-string v2, "result"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->changeBluetoothState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;Ljava/lang/String;)V

    .line 150
    :cond_3a
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getAllitemPass()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 151
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->access$100(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;)Landroid/widget/ListView;

    move-result-object v1

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 152
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    .line 157
    :goto_4f
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 158
    return-void

    .line 154
    :cond_53
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;->access$100(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerBT;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 155
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    goto :goto_4f
.end method
