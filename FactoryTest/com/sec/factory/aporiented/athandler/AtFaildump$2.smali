.class Lcom/sec/factory/aporiented/athandler/AtFaildump$2;
.super Landroid/content/BroadcastReceiver;
.source "AtFaildump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtFaildump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtFaildump;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtFaildump;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump$2;->this$0:Lcom/sec/factory/aporiented/athandler/AtFaildump;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, mAction:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump$2;->this$0:Lcom/sec/factory/aporiented/athandler/AtFaildump;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtFaildump;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "com.android.sec.FAILDUMP.DONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 244
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump$2;->this$0:Lcom/sec/factory/aporiented/athandler/AtFaildump;

    invoke-virtual {v1}, Lcom/sec/factory/aporiented/athandler/AtFaildump;->getCmdType()I

    move-result v1

    if-nez v1, :cond_36

    .line 245
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump$2;->this$0:Lcom/sec/factory/aporiented/athandler/AtFaildump;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtFaildump;->writerCpo:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/16 v2, 0xb

    const-string v3, " "

    const-string v4, " "

    const-string v5, " "

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump$2;->this$0:Lcom/sec/factory/aporiented/athandler/AtFaildump;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump$2;->this$0:Lcom/sec/factory/aporiented/athandler/AtFaildump;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFaildump;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/athandler/AtFaildump;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    return-void

    .line 247
    :cond_36
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump$2;->this$0:Lcom/sec/factory/aporiented/athandler/AtFaildump;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtFaildump;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFaildump$2;->this$0:Lcom/sec/factory/aporiented/athandler/AtFaildump;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/sec/factory/aporiented/athandler/AtFaildump;->responseOK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_2c
.end method
