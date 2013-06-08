.class Lcom/sec/factory/app/ui/UINFC$1;
.super Landroid/os/Handler;
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
    .line 49
    iput-object p1, p0, Lcom/sec/factory/app/ui/UINFC$1;->this$0:Lcom/sec/factory/app/ui/UINFC;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_92

    .line 85
    :goto_5
    return-void

    .line 54
    :pswitch_6
    const-string v0, "UINFC"

    const-string v1, "Read Test Fail because of timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC$1;->this$0:Lcom/sec/factory/app/ui/UINFC;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UINFC;->mIsPassed_reader:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UINFC;->access$002(Lcom/sec/factory/app/ui/UINFC;Z)Z

    .line 56
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC$1;->this$0:Lcom/sec/factory/app/ui/UINFC;

    const v1, 0x7f0900e5

    const-string v2, "FAIL"

    const/high16 v3, -0x1

    #calls: Lcom/sec/factory/app/ui/UINFC;->updateDisplay(ILjava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/factory/app/ui/UINFC;->access$100(Lcom/sec/factory/app/ui/UINFC;ILjava/lang/String;I)V

    goto :goto_5

    .line 59
    :pswitch_20
    const-string v0, "UINFC"

    const-string v1, "send Intent ENABLE_SEC_NFC_DISCOVERY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC$1;->this$0:Lcom/sec/factory/app/ui/UINFC;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.nfctest.NFC_DISCOVERY_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UINFC;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 63
    :pswitch_34
    const-string v0, "UINFC"

    const-string v1, "send Intent DISABLE_SEC_NFC_DISCOVERY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC$1;->this$0:Lcom/sec/factory/app/ui/UINFC;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.nfctest.NFC_DISCOVERY_DISABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UINFC;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 67
    :pswitch_48
    const-string v0, "UINFC"

    const-string v1, "send Intent CHECK_SEC_NFC_SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC$1;->this$0:Lcom/sec/factory/app/ui/UINFC;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.nfctest.NFC_CHECK_SIM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UINFC;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 71
    :pswitch_5c
    const-string v0, "UINFC"

    const-string v1, "MSG_FINISH_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC$1;->this$0:Lcom/sec/factory/app/ui/UINFC;

    #getter for: Lcom/sec/factory/app/ui/UINFC;->mIsPassed_card:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UINFC;->access$200(Lcom/sec/factory/app/ui/UINFC;)Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC$1;->this$0:Lcom/sec/factory/app/ui/UINFC;

    #getter for: Lcom/sec/factory/app/ui/UINFC;->mIsPassed_reader:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UINFC;->access$000(Lcom/sec/factory/app/ui/UINFC;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 73
    const-string v0, "UINFC"

    const-string v1, "SWP & Read Test all pass"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC$1;->this$0:Lcom/sec/factory/app/ui/UINFC;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UINFC;->setTestResult(B)V

    .line 76
    iget-object v0, p0, Lcom/sec/factory/app/ui/UINFC$1;->this$0:Lcom/sec/factory/app/ui/UINFC;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UINFC;->finish()V

    goto/16 :goto_5

    .line 78
    :cond_88
    const-string v0, "UINFC"

    const-string v1, "SWP or Read Test Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 52
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_6
        :pswitch_20
        :pswitch_34
        :pswitch_5c
        :pswitch_48
    .end packed-switch
.end method
