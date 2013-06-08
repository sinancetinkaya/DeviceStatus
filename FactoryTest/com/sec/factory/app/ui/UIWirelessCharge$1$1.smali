.class Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;
.super Ljava/lang/Object;
.source "UIWirelessCharge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIWirelessCharge$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIWirelessCharge$1;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 49
    :try_start_1
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    const-string v2, "WIRELESS_BATTERY"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/factory/app/ui/UIWirelessCharge;->mstatus:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIWirelessCharge;->access$102(Lcom/sec/factory/app/ui/UIWirelessCharge;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessCharge;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mHandler"

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

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    iget-object v4, v4, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessCharge;->mstatus:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIWirelessCharge;->access$100(Lcom/sec/factory/app/ui/UIWirelessCharge;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessCharge;->mstatus:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIWirelessCharge;->access$100(Lcom/sec/factory/app/ui/UIWirelessCharge;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 54
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessCharge;->mSpeakResultText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIWirelessCharge;->access$200(Lcom/sec/factory/app/ui/UIWirelessCharge;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessCharge;->mSpeakResultText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIWirelessCharge;->access$200(Lcom/sec/factory/app/ui/UIWirelessCharge;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessCharge;->prev_nvupdate:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIWirelessCharge;->access$300(Lcom/sec/factory/app/ui/UIWirelessCharge;)I

    move-result v1

    if-eq v1, v5, :cond_8c

    .line 57
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/sec/factory/app/ui/UIWirelessCharge;->setTestResult(B)V

    .line 58
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    const/4 v2, 0x1

    #setter for: Lcom/sec/factory/app/ui/UIWirelessCharge;->prev_nvupdate:I
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIWirelessCharge;->access$302(Lcom/sec/factory/app/ui/UIWirelessCharge;I)I

    .line 60
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    invoke-virtual {v1}, Lcom/sec/factory/app/ui/UIWirelessCharge;->finishOnPassWithTimer()V

    .line 69
    :cond_8c
    :goto_8c
    return-void

    .line 63
    :cond_8d
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessCharge;->mSpeakResultText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIWirelessCharge;->access$200(Lcom/sec/factory/app/ui/UIWirelessCharge;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0700cf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIWirelessCharge$1$1;->this$1:Lcom/sec/factory/app/ui/UIWirelessCharge$1;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIWirelessCharge$1;->this$0:Lcom/sec/factory/app/ui/UIWirelessCharge;

    #getter for: Lcom/sec/factory/app/ui/UIWirelessCharge;->mSpeakResultText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIWirelessCharge;->access$200(Lcom/sec/factory/app/ui/UIWirelessCharge;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a8} :catch_a9

    goto :goto_8c

    .line 66
    :catch_a9
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8c
.end method
