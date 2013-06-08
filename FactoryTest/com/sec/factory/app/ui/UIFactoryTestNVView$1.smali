.class Lcom/sec/factory/app/ui/UIFactoryTestNVView$1;
.super Landroid/content/BroadcastReceiver;
.source "UIFactoryTestNVView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIFactoryTestNVView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIFactoryTestNVView;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIFactoryTestNVView;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView$1;->this$0:Lcom/sec/factory/app/ui/UIFactoryTestNVView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, action:Ljava/lang/String;
    const-string v1, "FactoryTestNVView"

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

    .line 40
    const-string v1, "com.android.samsungtest.RilOmissionCommand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 41
    const-string v1, "FactoryTestNVView"

    const-string v2, "mBroadcastReceiver.onReceive"

    const-string v3, "ACTION_RECEIVE_TESTNV"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView$1;->this$0:Lcom/sec/factory/app/ui/UIFactoryTestNVView;

    #calls: Lcom/sec/factory/app/ui/UIFactoryTestNVView;->getFactoryTestNVValueCPO(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->access$000(Lcom/sec/factory/app/ui/UIFactoryTestNVView;Landroid/content/Intent;)V

    .line 43
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIFactoryTestNVView$1;->this$0:Lcom/sec/factory/app/ui/UIFactoryTestNVView;

    #calls: Lcom/sec/factory/app/ui/UIFactoryTestNVView;->getFactoryTestNVValueCPO()V
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIFactoryTestNVView;->access$100(Lcom/sec/factory/app/ui/UIFactoryTestNVView;)V

    .line 45
    :cond_39
    return-void
.end method
