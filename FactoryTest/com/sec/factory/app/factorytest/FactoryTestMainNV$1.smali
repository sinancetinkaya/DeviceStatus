.class Lcom/sec/factory/app/factorytest/FactoryTestMainNV$1;
.super Landroid/content/BroadcastReceiver;
.source "FactoryTestMainNV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMainNV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMainNV;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, action:Ljava/lang/String;
    const-string v1, "FactoryTestMainNV"

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

    .line 87
    const-string v1, "com.android.samsungtest.RilOmissionCommand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 88
    const-string v1, "FactoryTestMainNV"

    const-string v2, "mBroadcastReceiver.onReceive"

    const-string v3, "ACTION_RECEIVE_TESTNV"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

    const-string v2, "COMMAND"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->getFactoryTestHistoryValue(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestMainNV;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mTestResultText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestMainNV;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->formatTestResultCPO()Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->access$100(Lcom/sec/factory/app/factorytest/FactoryTestMainNV;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->FONT_SIZE:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5b

    .line 93
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mTestResultText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestMainNV;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->FONT_SIZE:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 97
    :cond_5b
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getAllitemPass()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 98
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestMainNV;)Landroid/widget/ListView;

    move-result-object v1

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 99
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    .line 104
    :goto_70
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 105
    return-void

    .line 101
    :cond_74
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainNV$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainNV;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestMainNV;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestMainNV;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 102
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    goto :goto_70
.end method
