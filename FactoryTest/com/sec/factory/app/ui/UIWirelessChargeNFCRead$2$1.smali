.class Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;
.super Ljava/lang/Object;
.source "UIWirelessChargeNFCRead.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 103
    :try_start_1
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    const-string v2, "WIRELESS_BATTERY"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mstatus:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$302(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mhandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIRELESS_BATTERY"

    invoke-static {v4}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    iget-object v4, v4, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mstatus:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$300(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mstatus:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$300(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 108
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mSpeakResultText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$400(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mSpeakResultText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$400(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->prev_nvupdate:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$500(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)I

    move-result v1

    if-eq v1, v5, :cond_8b

    .line 111
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    const/4 v2, 0x1

    #setter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->WCStatus:Z
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$602(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;Z)Z

    .line 112
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    const/4 v2, 0x1

    #setter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->prev_nvupdate:I
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$502(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;I)I

    .line 113
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    invoke-virtual {v1}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->finishWirelessCharge()V

    .line 123
    :cond_8b
    :goto_8b
    return-void

    .line 116
    :cond_8c
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mSpeakResultText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$400(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700cf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead$2;->this$0:Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->mSpeakResultText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;->access$400(Lcom/sec/factory/app/ui/UIWirelessChargeNFCRead;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a7} :catch_a8

    goto :goto_8b

    .line 120
    :catch_a8
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8b
.end method
