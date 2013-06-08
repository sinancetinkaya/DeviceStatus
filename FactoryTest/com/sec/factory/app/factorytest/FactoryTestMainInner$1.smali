.class Lcom/sec/factory/app/factorytest/FactoryTestMainInner$1;
.super Landroid/content/BroadcastReceiver;
.source "FactoryTestMainInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMainInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMainInner;)V
    .registers 2
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x50

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, action:Ljava/lang/String;
    const-string v6, "FactoryTestMainInner"

    const-string v7, "mBroadcastReceiver.onReceive"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v6, "com.sec.factory.app.factorytest.CALL_CONNECTION_DETECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 267
    const-string v6, "FactoryTestMainInner"

    const-string v7, "mBroadcastReceiver.onReceive"

    const-string v8, "INTENT_CALL"

    invoke-static {v6, v7, v8}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v6, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    sget v7, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT_WITHOUT_NV:I

    const/16 v8, 0x10

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->sendMessageTestResult(IBB)V
    invoke-static {v6, v7, v8, v10}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestMainInner;IBB)V

    .line 302
    :cond_3c
    :goto_3c
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getAllitemPass()Z

    move-result v6

    if-eqz v6, :cond_111

    .line 303
    iget-object v5, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestMainInner;)Landroid/widget/ListView;

    move-result-object v5

    const v6, -0xffff01

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 304
    sput-boolean v4, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    .line 309
    :goto_50
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 310
    :cond_53
    return-void

    .line 270
    :cond_54
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 271
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 273
    .local v3, plugged:I
    const-string v6, "FactoryTestMainInner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Battery State : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v2, ""

    .line 275
    .local v2, online:Ljava/lang/String;
    const/4 v1, 0x0

    .line 277
    .local v1, iswirelesscharge:Z
    const-string v6, "WIRELESS_CHARGE_ONLINE"

    invoke-static {v6}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/factory/support/Support$Kernel;->isExistFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 278
    const-string v6, "FactoryTestMainInner"

    const-string v7, "Check wireless online value"

    invoke-static {v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v6, "WIRELESS_CHARGE_ONLINE"

    invoke-static {v6}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    const-string v6, "FactoryTestMainInner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "online: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v6, "10"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f9

    move v1, v4

    .line 286
    :goto_bb
    const-string v6, "FactoryTestMainInner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wireless Charge: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    if-nez v1, :cond_53

    .line 290
    if-eqz v3, :cond_103

    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->access$100()Z

    move-result v6

    if-nez v6, :cond_103

    .line 291
    invoke-static {v4}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->access$102(Z)Z

    .line 292
    iget-object v6, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    sget v7, Lcom/sec/factory/app/factorytest/FactoryTestMain;->WHAT_RESULT:I

    const/16 v8, 0x12

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->sendMessageTestResult(IBB)V
    invoke-static {v6, v7, v8, v10}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestMainInner;IBB)V

    .line 294
    const-string v6, "FactoryTestMainInner"

    const-string v7, "ACTION_BATTERY_CHANGED : Plugged"

    invoke-static {v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v6, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    const/16 v7, 0x3e8

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->startTimerForRestFlag(I)V
    invoke-static {v6, v7}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestMainInner;I)V

    goto/16 :goto_3c

    :cond_f9
    move v1, v5

    .line 281
    goto :goto_bb

    .line 283
    :cond_fb
    const-string v6, "FactoryTestMainInner"

    const-string v7, "File does not exist"

    invoke-static {v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bb

    .line 296
    :cond_103
    if-nez v3, :cond_3c

    .line 297
    invoke-static {v5}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->access$102(Z)Z

    .line 298
    const-string v6, "FactoryTestMainInner"

    const-string v7, "ACTION_BATTERY_CHANGED : Unplugged"

    invoke-static {v6, v7}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 306
    .end local v1           #iswirelesscharge:Z
    .end local v2           #online:Ljava/lang/String;
    .end local v3           #plugged:I
    :cond_111
    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner$1;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestMainInner;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 307
    sput-boolean v5, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    goto/16 :goto_50
.end method
