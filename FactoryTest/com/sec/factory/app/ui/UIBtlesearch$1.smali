.class Lcom/sec/factory/app/ui/UIBtlesearch$1;
.super Landroid/os/Handler;
.source "UIBtlesearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIBtlesearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIBtlesearch;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIBtlesearch;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_154

    .line 127
    :goto_7
    return-void

    .line 80
    :pswitch_8
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #setter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mIsTestDone:Z
    invoke-static {v0, v3}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$002(Lcom/sec/factory/app/ui/UIBtlesearch;Z)Z

    .line 81
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleTimeCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$200(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mCount:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$100(Lcom/sec/factory/app/ui/UIBtlesearch;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleRetryButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$300(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 83
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #calls: Lcom/sec/factory/app/ui/UIBtlesearch;->startBtSearch()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$400(Lcom/sec/factory/app/ui/UIBtlesearch;)V

    .line 84
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$500(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "SEARCHING.."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$500(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    :try_start_57
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$600(Lcom/sec/factory/app/ui/UIBtlesearch;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 88
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$600(Lcom/sec/factory/app/ui/UIBtlesearch;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtLeSearchtask:Ljava/util/TimerTask;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$700(Lcom/sec/factory/app/ui/UIBtlesearch;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_72
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_72} :catch_73

    goto :goto_7

    .line 93
    :catch_73
    move-exception v6

    .line 94
    .local v6, e:Ljava/lang/IllegalStateException;
    invoke-static {v6}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_7

    .line 90
    .end local v6           #e:Ljava/lang/IllegalStateException;
    :cond_78
    :try_start_78
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    #setter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$602(Lcom/sec/factory/app/ui/UIBtlesearch;Ljava/util/Timer;)Ljava/util/Timer;

    .line 91
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$600(Lcom/sec/factory/app/ui/UIBtlesearch;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtLeSearchtask:Ljava/util/TimerTask;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$700(Lcom/sec/factory/app/ui/UIBtlesearch;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_95
    .catch Ljava/lang/IllegalStateException; {:try_start_78 .. :try_end_95} :catch_73

    goto/16 :goto_7

    .line 98
    :pswitch_97
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleTimeCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$200(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mCount:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$100(Lcom/sec/factory/app/ui/UIBtlesearch;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 101
    :pswitch_bf
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtLeSearchtask:Ljava/util/TimerTask;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$700(Lcom/sec/factory/app/ui/UIBtlesearch;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 102
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$800(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleCommunication;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommunication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleCommunication;->btSearchStop()V

    goto/16 :goto_7

    .line 106
    :pswitch_de
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mIsTestPassed:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$900(Lcom/sec/factory/app/ui/UIBtlesearch;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 107
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIBtlesearch;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessge"

    const-string v2, "BT LE SEARCH PASS"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$500(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "PASS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$500(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #setter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mIsTestPassed:Z
    invoke-static {v0, v3}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$902(Lcom/sec/factory/app/ui/UIBtlesearch;Z)Z

    .line 111
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    const/16 v1, 0x26

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/ui/UIBtlesearch;->setTestResult(BB)V

    .line 114
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->finishOnPassWithTimer()V

    .line 120
    :goto_11b
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    const/16 v1, 0x5a

    #setter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mCount:I
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$102(Lcom/sec/factory/app/ui/UIBtlesearch;I)I

    .line 121
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #setter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mIsTestDone:Z
    invoke-static {v0, v4}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$002(Lcom/sec/factory/app/ui/UIBtlesearch;Z)Z

    .line 122
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleRetryButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$300(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_7

    .line 116
    :cond_132
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIBtlesearch;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessge"

    const-string v2, "BT LE SEARCH FAIL"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$500(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBtlesearch$1;->this$0:Lcom/sec/factory/app/ui/UIBtlesearch;

    #getter for: Lcom/sec/factory/app/ui/UIBtlesearch;->mBtleResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBtlesearch;->access$500(Lcom/sec/factory/app/ui/UIBtlesearch;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_11b

    .line 78
    :pswitch_data_154
    .packed-switch 0x64
        :pswitch_8
        :pswitch_97
        :pswitch_bf
        :pswitch_de
    .end packed-switch
.end method
