.class Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;
.super Landroid/os/Handler;
.source "UIWirelessChargeNFCRead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6a

    .line 68
    :goto_5
    return-void

    .line 49
    :pswitch_6
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage(msg)"

    const-string v2, "msg : MSG_READ_STATUS_TIMEOUT"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mNFCResultText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$000(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mNFCResultText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$000(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 55
    :pswitch_28
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage(msg)"

    const-string v2, "msg : MSG_FINISH_TEST"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->finishNFCRead()V

    goto :goto_5

    .line 60
    :pswitch_39
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$100(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "send Intent ENABLE_SEC_NFC_DISCOVERY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.nfctest.NFC_DISCOVERY_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 64
    :pswitch_51
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$100(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "send Intent DISABLE_SEC_NFC_DISCOVERY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.nfctest.NFC_DISCOVERY_DISABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 47
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_39
        :pswitch_51
        :pswitch_28
    .end packed-switch
.end method
