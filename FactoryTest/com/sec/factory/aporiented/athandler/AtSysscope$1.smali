.class Lcom/sec/factory/aporiented/athandler/AtSysscope$1;
.super Landroid/content/BroadcastReceiver;
.source "AtSysscope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/athandler/AtSysscope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtSysscope;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtSysscope;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtSysscope;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    .line 53
    const-string v1, "status"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SysScope scanning finished"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    .line 54
    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtSysscope$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtSysscope;

    #calls: Lcom/sec/factory/aporiented/athandler/AtSysscope;->changeSysScopeStatus()Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/aporiented/athandler/AtSysscope;->access$000(Lcom/sec/factory/aporiented/athandler/AtSysscope;)Ljava/lang/String;

    .line 58
    :cond_1f
    return-void
.end method
