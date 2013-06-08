.class Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone$1;
.super Landroid/content/BroadcastReceiver;
.source "FactoryTestMainInnerEarphone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, action:Ljava/lang/String;
    const-string v4, "FactoryTestMainInnerEarphone"

    const-string v5, "mBroadcastReceiver.onReceive"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 65
    const-string v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_8e

    move v1, v2

    .line 66
    .local v1, isHeadsetPlugged:Z
    :goto_35
    const-string v4, "FactoryTestMainInnerEarphone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_HEADSET_PLUG state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-ne v1, v2, :cond_90

    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->access$000()I

    move-result v4

    if-nez v4, :cond_90

    .line 68
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->access$002(I)I

    .line 77
    :goto_58
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    invoke-virtual {v4, v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->startEarphone(Z)V

    .line 78
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->access$100(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/factory/modules/ModuleAudio;->isDoingLoopback()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 79
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mTestInnerLoopback:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;
    invoke-static {v4}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;)Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerLoopback;->changeLoopbackRoute(Z)V

    .line 83
    .end local v1           #isHeadsetPlugged:Z
    :cond_76
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getAllitemPass()Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 84
    iget-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;)Landroid/widget/ListView;

    move-result-object v3

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 85
    sput-boolean v2, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    .line 90
    :goto_8a
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 91
    :goto_8d
    return-void

    :cond_8e
    move v1, v3

    .line 65
    goto :goto_35

    .line 69
    .restart local v1       #isHeadsetPlugged:Z
    :cond_90
    if-nez v1, :cond_9c

    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->access$000()I

    move-result v4

    if-ne v4, v2, :cond_9c

    .line 70
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->access$002(I)I

    goto :goto_58

    .line 72
    :cond_9c
    const-string v2, "FactoryTestMainInnerEarphone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is duplicated called, ACTION_HEADSET_PLUG state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 87
    .end local v1           #isHeadsetPlugged:Z
    :cond_b5
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestMainInnerEarphone;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 88
    sput-boolean v3, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    goto :goto_8a
.end method
