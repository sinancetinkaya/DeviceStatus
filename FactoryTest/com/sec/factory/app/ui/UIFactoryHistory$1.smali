.class Lcom/sec/factory/app/ui/UIFactoryHistory$1;
.super Landroid/content/BroadcastReceiver;
.source "UIFactoryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIFactoryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIFactoryHistory;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIFactoryHistory;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$1;->this$0:Lcom/sec/factory/app/ui/UIFactoryHistory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$1;->this$0:Lcom/sec/factory/app/ui/UIFactoryHistory;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "Action: "

    invoke-static {v2, v3, v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "com.android.samsungtest.RilOmissionCommand"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 106
    const-string v2, "COMMAND"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, valuesString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$1;->this$0:Lcom/sec/factory/app/ui/UIFactoryHistory;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIFactoryHistory;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "valueString: "

    invoke-static {v2, v3, v1}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$1;->this$0:Lcom/sec/factory/app/ui/UIFactoryHistory;

    #calls: Lcom/sec/factory/app/ui/UIFactoryHistory;->parseNVHistoryCPO(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/factory/app/ui/UIFactoryHistory;->access$100(Lcom/sec/factory/app/ui/UIFactoryHistory;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIFactoryHistory$1;->this$0:Lcom/sec/factory/app/ui/UIFactoryHistory;

    #calls: Lcom/sec/factory/app/ui/UIFactoryHistory;->stopReceiver()V
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIFactoryHistory;->access$200(Lcom/sec/factory/app/ui/UIFactoryHistory;)V

    .line 111
    .end local v1           #valuesString:Ljava/lang/String;
    :cond_33
    return-void
.end method
