.class Lcom/sec/factory/app/factorytest/FactoryTestMain$2;
.super Landroid/os/Handler;
.source "FactoryTestMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFeedback.handleMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_168

    .line 182
    :cond_27
    :goto_27
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getAllitemPass()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 183
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/widget/ListView;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 184
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    .line 189
    :goto_3c
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->notifyDataSetChanged()V

    .line 190
    return-void

    .line 126
    :pswitch_40
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$400(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFeedback.handleMessage"

    const-string v2, "MSG_START_EAR_KEY_FEED_BACK"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->isPlayingSound()Z

    move-result v0

    if-nez v0, :cond_27

    .line 129
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMin()V

    .line 130
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    const v1, 0x7f050002

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMain;->playSound(IZ)V
    invoke-static {v0, v1, v4}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$500(Lcom/sec/factory/app/factorytest/FactoryTestMain;IZ)V

    .line 131
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->startVibrate()V

    goto :goto_27

    .line 135
    :pswitch_74
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$600(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFeedback.handleMessage"

    const-string v2, "MSG_STOP_EAR_KEY_FEED_BACK"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMain;->stopSound()V
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$700(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V

    .line 138
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudio;->setStreamMusicVolumeMax()V

    .line 139
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-static {v0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    goto :goto_27

    .line 142
    :pswitch_99
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$800(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFeedback.handleMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_SHOW_TOAST_FEED_BACK, msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_27

    .line 148
    :pswitch_ce
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$900(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFeedback.handleMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_START_PROGRESS_FEED_BACK, msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1000(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedbackText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1100(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedbackText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1100(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_27

    .line 155
    :pswitch_115
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1200(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFeedback.handleMessage"

    const-string v2, "MSG_STOP_PROGRESS_FEDD_BACK"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1000(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->mFeedbackText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1100(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_27

    .line 161
    :pswitch_136
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->CLASS_NAME:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1300(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mFeedback.handleMessage"

    const-string v2, "MSG_COMPLETE_FIRST_NV_UPDATE_FEED_BACK"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-nez v0, :cond_27

    .line 168
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    iget-object v0, v0, Lcom/sec/factory/app/factorytest/FactoryTestMain;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/factory/app/factorytest/FactoryTestMain$2$1;

    invoke-direct {v1, p0}, Lcom/sec/factory/app/factorytest/FactoryTestMain$2$1;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestMain$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_27

    .line 186
    :cond_159
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 187
    sput-boolean v4, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    goto/16 :goto_3c

    .line 124
    nop

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_40
        :pswitch_74
        :pswitch_99
        :pswitch_ce
        :pswitch_115
        :pswitch_136
    .end packed-switch
.end method
