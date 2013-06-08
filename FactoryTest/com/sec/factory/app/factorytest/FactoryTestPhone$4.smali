.class Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;
.super Landroid/os/Handler;
.source "FactoryTestPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)V
    .registers 2
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 687
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_18c

    .line 744
    :cond_5
    :goto_5
    return-void

    .line 689
    :pswitch_6
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "response"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    check-cast v1, [B

    #setter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B
    invoke-static {v2, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$902(Lcom/sec/factory/app/factorytest/FactoryTestPhone;[B)[B

    .line 691
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$900(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)[B

    move-result-object v1

    if-eqz v1, :cond_51

    .line 692
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    const-string v3, "Received Test NV Values from RIL"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mResultData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B
    invoke-static {v4}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$900(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 696
    :cond_51
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    const-string v3, "Fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 699
    :pswitch_5f
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    const-string v3, "Received Test NV Value from RIL"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "response"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    check-cast v1, [B

    #setter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B
    invoke-static {v2, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$902(Lcom/sec/factory/app/factorytest/FactoryTestPhone;[B)[B

    goto :goto_5

    .line 703
    :pswitch_7e
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    const-string v3, "Received Test NV Values from RIL"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 706
    :pswitch_8d
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    const-string v3, "Item NV update success"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 709
    :pswitch_9c
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    const-string v3, "Girp request Success"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 712
    :pswitch_ab
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    const-string v3, "Unique Number get success"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "response"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    check-cast v1, [B

    #setter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B
    invoke-static {v2, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$902(Lcom/sec/factory/app/factorytest/FactoryTestPhone;[B)[B

    .line 714
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$900(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    .line 715
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    const-string v3, "Received Unique Number from RIL"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mResultData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B
    invoke-static {v4}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$900(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 721
    :pswitch_104
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    const-string v3, "LTESupportHandler - what : HND_LTE_POWER_CMD"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "response"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    check-cast v1, [B

    #setter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B
    invoke-static {v2, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$902(Lcom/sec/factory/app/factorytest/FactoryTestPhone;[B)[B

    .line 723
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.factory.aporiented.athandler.AtLtepower.SetLTEPower"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$900(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)[B

    move-result-object v1

    if-eqz v1, :cond_14e

    .line 726
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    const-string v3, "pass"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v1, "EXTRA_KEY"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    :goto_145
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    iget-object v1, v1, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 729
    :cond_14e
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    const-string v3, "fail"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v1, "EXTRA_KEY"

    const-string v2, "NG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_145

    .line 735
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_163
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mHandler.handleMessage"

    const-string v3, "Modem dump success"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "response"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    check-cast v1, [B

    #setter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B
    invoke-static {v2, v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$902(Lcom/sec/factory/app/factorytest/FactoryTestPhone;[B)[B

    .line 737
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->mResultData:[B
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$900(Lcom/sec/factory/app/factorytest/FactoryTestPhone;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    goto/16 :goto_5

    .line 687
    nop

    :pswitch_data_18c
    .packed-switch 0xc8
        :pswitch_6
        :pswitch_7e
        :pswitch_8d
        :pswitch_5f
        :pswitch_ab
        :pswitch_9c
        :pswitch_104
        :pswitch_163
    .end packed-switch
.end method
