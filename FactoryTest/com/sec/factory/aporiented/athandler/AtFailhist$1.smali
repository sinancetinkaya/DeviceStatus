.class Lcom/sec/factory/aporiented/athandler/AtFailhist$1;
.super Landroid/content/BroadcastReceiver;
.source "AtFailhist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtFailhist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtFailhist;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtFailhist;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFailhist;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, mAction:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFailhist;

    iget-object v1, v1, Lcom/sec/factory/aporiented/athandler/AtFailhist;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    invoke-static {v1, v2, v0}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "com.android.sec.FAILHIST.DONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 120
    :cond_15
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFailhist;

    iget-object v2, p0, Lcom/sec/factory/aporiented/athandler/AtFailhist$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtFailhist;

    iget-object v2, v2, Lcom/sec/factory/aporiented/athandler/AtFailhist;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/factory/aporiented/athandler/AtFailhist;->stopReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    return-void
.end method
