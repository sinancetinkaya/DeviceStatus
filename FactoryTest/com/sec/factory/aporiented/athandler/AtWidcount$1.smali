.class Lcom/sec/factory/aporiented/athandler/AtWidcount$1;
.super Landroid/content/BroadcastReceiver;
.source "AtWidcount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtWidcount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtWidcount;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/16 v4, -0x63

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.RESPONSE_HOME_COUNT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 64
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    #setter for: Lcom/sec/factory/aporiented/athandler/AtWidcount;->mIsReceived_HOME_COUNT:Z
    invoke-static {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->access$002(Lcom/sec/factory/aporiented/athandler/AtWidcount;Z)Z

    .line 65
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    const-string v3, "HOME_ALL_COUNT"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/sec/factory/aporiented/athandler/AtWidcount;->homeWidgetCount:I
    invoke-static {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->access$102(Lcom/sec/factory/aporiented/athandler/AtWidcount;I)I

    .line 66
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtWidcount;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "homeWidgetCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtWidcount;->homeWidgetCount:I
    invoke-static {v5}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->access$100(Lcom/sec/factory/aporiented/athandler/AtWidcount;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_41
    :goto_41
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtWidcount;->mIsReceived_WID_COUNT:Z
    invoke-static {v2}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->access$200(Lcom/sec/factory/aporiented/athandler/AtWidcount;)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtWidcount;->mIsReceived_HOME_COUNT:Z
    invoke-static {v2}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->access$000(Lcom/sec/factory/aporiented/athandler/AtWidcount;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtWidcount;->menuWidgetCount:I
    invoke-static {v3}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->access$300(Lcom/sec/factory/aporiented/athandler/AtWidcount;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtWidcount;->homeWidgetCount:I
    invoke-static {v3}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->access$100(Lcom/sec/factory/aporiented/athandler/AtWidcount;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtWidcount;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    invoke-virtual {v2}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->getCmdType()I

    move-result v2

    if-nez v2, :cond_ea

    .line 76
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtWidcount;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v3, 0x2

    const-string v4, "81"

    const-string v5, "01"

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_a4
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    iget-object v3, v3, Lcom/sec/factory/aporiented/athandler/AtWidcount;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    .end local v1           #result:Ljava/lang/String;
    :cond_ad
    return-void

    .line 67
    :cond_ae
    const-string v2, "android.intent.action.RESPONSE_WIDGET_COUNT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 68
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    #setter for: Lcom/sec/factory/aporiented/athandler/AtWidcount;->mIsReceived_WID_COUNT:Z
    invoke-static {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->access$202(Lcom/sec/factory/aporiented/athandler/AtWidcount;Z)Z

    .line 69
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    const-string v3, "WIDGET_ALL_COUNT"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/sec/factory/aporiented/athandler/AtWidcount;->menuWidgetCount:I
    invoke-static {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->access$302(Lcom/sec/factory/aporiented/athandler/AtWidcount;I)I

    .line 70
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtWidcount;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "menuWidgetCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtWidcount;->menuWidgetCount:I
    invoke-static {v5}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->access$300(Lcom/sec/factory/aporiented/athandler/AtWidcount;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_41

    .line 78
    .restart local v1       #result:Ljava/lang/String;
    :cond_ea
    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtWidcount;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtWidcount$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtWidcount;

    const-string v4, "1"

    invoke-virtual {v3, v4, v1}, Lcom/sec/factory/aporiented/athandler/AtWidcount;->responseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_a4
.end method
