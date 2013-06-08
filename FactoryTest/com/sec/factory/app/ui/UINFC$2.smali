.class Lcom/sec/factory/app/ui/UINFC$2;
.super Landroid/content/BroadcastReceiver;
.source "UINFC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UINFC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UINFC;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UINFC;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/factory/app/ui/UINFC$2;->this$0:Lcom/sec/factory/app/ui/UINFC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v6, 0x7f0900e4

    const v5, -0xffff01

    const/4 v4, 0x1

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 93
    const-string v2, "UINFC"

    const-string v3, "Received ACTION_TAG_DISCOVERED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/sec/factory/app/ui/UINFC$2;->this$0:Lcom/sec/factory/app/ui/UINFC;

    #setter for: Lcom/sec/factory/app/ui/UINFC;->mIsPassed_reader:Z
    invoke-static {v2, v4}, Lcom/sec/factory/app/ui/UINFC;->access$002(Lcom/sec/factory/app/ui/UINFC;Z)Z

    .line 95
    iget-object v2, p0, Lcom/sec/factory/app/ui/UINFC$2;->this$0:Lcom/sec/factory/app/ui/UINFC;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UINFC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iget-object v2, p0, Lcom/sec/factory/app/ui/UINFC$2;->this$0:Lcom/sec/factory/app/ui/UINFC;

    const v3, 0x7f0900e5

    const-string v4, "PASS"

    #calls: Lcom/sec/factory/app/ui/UINFC;->updateDisplay(ILjava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/sec/factory/app/ui/UINFC;->access$100(Lcom/sec/factory/app/ui/UINFC;ILjava/lang/String;I)V

    .line 97
    iget-object v2, p0, Lcom/sec/factory/app/ui/UINFC$2;->this$0:Lcom/sec/factory/app/ui/UINFC;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UINFC;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 111
    :cond_3a
    :goto_3a
    return-void

    .line 98
    :cond_3b
    const-string v2, "com.sec.android.app.nfctest.NFC_CHECK_SIM_RESPONSE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 99
    const-string v2, "UINFC"

    const-string v3, "Received CHECK_SEC_NFC_SIM_RESP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v2, "SIM_DATA"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, simTestResponse:I
    if-ne v1, v4, :cond_67

    .line 102
    const-string v2, "UINFC"

    const-string v3, "SWP Test Pass"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, p0, Lcom/sec/factory/app/ui/UINFC$2;->this$0:Lcom/sec/factory/app/ui/UINFC;

    #setter for: Lcom/sec/factory/app/ui/UINFC;->mIsPassed_card:Z
    invoke-static {v2, v4}, Lcom/sec/factory/app/ui/UINFC;->access$202(Lcom/sec/factory/app/ui/UINFC;Z)Z

    .line 104
    iget-object v2, p0, Lcom/sec/factory/app/ui/UINFC$2;->this$0:Lcom/sec/factory/app/ui/UINFC;

    const-string v3, "PASS"

    #calls: Lcom/sec/factory/app/ui/UINFC;->updateDisplay(ILjava/lang/String;I)V
    invoke-static {v2, v6, v3, v5}, Lcom/sec/factory/app/ui/UINFC;->access$100(Lcom/sec/factory/app/ui/UINFC;ILjava/lang/String;I)V

    goto :goto_3a

    .line 106
    :cond_67
    const-string v2, "UINFC"

    const-string v3, "SWP Test Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/sec/factory/app/ui/UINFC$2;->this$0:Lcom/sec/factory/app/ui/UINFC;

    const/4 v3, 0x0

    #setter for: Lcom/sec/factory/app/ui/UINFC;->mIsPassed_card:Z
    invoke-static {v2, v3}, Lcom/sec/factory/app/ui/UINFC;->access$202(Lcom/sec/factory/app/ui/UINFC;Z)Z

    .line 108
    iget-object v2, p0, Lcom/sec/factory/app/ui/UINFC$2;->this$0:Lcom/sec/factory/app/ui/UINFC;

    const-string v3, "FAIL"

    const/high16 v4, -0x1

    #calls: Lcom/sec/factory/app/ui/UINFC;->updateDisplay(ILjava/lang/String;I)V
    invoke-static {v2, v6, v3, v4}, Lcom/sec/factory/app/ui/UINFC;->access$100(Lcom/sec/factory/app/ui/UINFC;ILjava/lang/String;I)V

    goto :goto_3a
.end method
