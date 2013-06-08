.class Lcom/sec/factory/app/ui/UIBtlesearch$3;
.super Landroid/content/BroadcastReceiver;
.source "UIBtlesearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIBtlesearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIBtlesearch;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIBtlesearch;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBtlesearch$3;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, action:Ljava/lang/String;
    const-string v1, ""

    .line 199
    .local v1, resData:Ljava/lang/String;
    const-string v2, "result"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIBtlesearch$3;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIBtlesearch;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "mBroadcastReceiver.onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "result= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIBtlesearch$3;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mIsTestDone:Z
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$000(Lcom/sec/factory/app/ui/UIBtlesearch;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "com.sec.factory.intent.ACTION_BT_RESPONSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 204
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIBtlesearch$3;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIBtlesearch;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "mBroadcastReceiver.onReceive"

    const-string v4, "ACTION_BT_RESPONSE"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIBtlesearch$3;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    const-string v2, "FOUND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    const/4 v2, 0x1

    :goto_58
    #setter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mIsTestPassed:Z
    invoke-static {v3, v2}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$902(Lcom/sec/factory/app/ui/UIBtlesearch;Z)Z

    .line 206
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIBtlesearch$3;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIBtlesearch;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "mBroadcastReceiver.onReceive"

    const-string v4, "BT Response Received..Stop Timer"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIBtlesearch$3;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$800(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    :cond_71
    return-void

    .line 205
    :cond_72
    const/4 v2, 0x0

    goto :goto_58
.end method
