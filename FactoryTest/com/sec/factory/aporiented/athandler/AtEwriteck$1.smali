.class Lcom/sec/factory/aporiented/athandler/AtEwriteck$1;
.super Landroid/content/BroadcastReceiver;
.source "AtEwriteck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/aporiented/athandler/AtEwriteck;->handleCommand([Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtEwriteck;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtEwriteck;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtEwriteck;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtEwriteck;

    const-string v1, "penInsert"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->spenInserted:Z

    .line 44
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtEwriteck;

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onReceive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spenInserted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/aporiented/athandler/AtEwriteck$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtEwriteck;

    iget-boolean v3, v3, Lcom/sec/factory/aporiented/athandler/AtEwriteck;->spenInserted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
