.class Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 211
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 216
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$100(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received ACTION_TAG_DISCOVERED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    const/4 v3, 0x1

    #setter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->NRStatus:Z
    invoke-static {v2, v3}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$802(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;Z)Z

    .line 219
    :try_start_1d
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    iget-object v2, v2, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "mhandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  WCStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->WCStatus:Z
    invoke-static {v5}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$600(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  NRStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->NRStatus:Z
    invoke-static {v5}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$800(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->NRStatus:Z
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$800(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 222
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mNFCResultText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$000(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "PASS"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mNFCResultText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$000(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/widget/TextView;

    move-result-object v2

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    :cond_6e
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->WCStatus:Z
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$600(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->NRStatus:Z
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$800(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 227
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->setTestResult(B)V

    .line 228
    iget-object v2, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$3;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$700(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    const-wide/16 v4, 0x226

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_91} :catch_92

    .line 235
    :cond_91
    :goto_91
    return-void

    .line 231
    :catch_92
    move-exception v1

    .line 232
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_91
.end method
