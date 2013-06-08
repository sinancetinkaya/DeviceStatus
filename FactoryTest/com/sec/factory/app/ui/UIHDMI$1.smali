.class Lcom/sec/factory/app/ui/UIHDMI$1;
.super Landroid/content/BroadcastReceiver;
.source "UIHDMI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIHDMI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIHDMI;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIHDMI;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 31
    monitor-enter p0

    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_ea

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    :try_start_6
    const-string v3, "com.android.samsungtest.HDMITEST_STOP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 34
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIHDMI;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onReceive"

    const-string v5, "com.android.samsungtest.HDMITEST_STOP"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    invoke-virtual {v3}, Lcom/sec/factory/app/ui/UIHDMI;->finish()V
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_ea
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_cb

    .line 89
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    .line 37
    :cond_20
    :try_start_20
    const-string v3, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 38
    const-string v3, "state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 39
    .local v2, state:I
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIHDMI;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "onReceive"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent.ACTION_HDMI_AUDIO_PLUG - state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-ne v2, v7, :cond_f2

    .line 44
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    #getter for: Lcom/sec/factory/app/ui/UIHDMI;->isMSM8960:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIHDMI;->access$000(Lcom/sec/factory/app/ui/UIHDMI;)Z

    move-result v3

    if-nez v3, :cond_75

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    #getter for: Lcom/sec/factory/app/ui/UIHDMI;->isMSM8260A:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIHDMI;->access$100(Lcom/sec/factory/app/ui/UIHDMI;)Z

    move-result v3

    if-nez v3, :cond_75

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    #getter for: Lcom/sec/factory/app/ui/UIHDMI;->isPegasus:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIHDMI;->access$200(Lcom/sec/factory/app/ui/UIHDMI;)Z

    move-result v3

    if-nez v3, :cond_75

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    #getter for: Lcom/sec/factory/app/ui/UIHDMI;->isPegasusPrime:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIHDMI;->access$300(Lcom/sec/factory/app/ui/UIHDMI;)Z

    move-result v3

    if-nez v3, :cond_75

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    #getter for: Lcom/sec/factory/app/ui/UIHDMI;->isPegaPrime:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIHDMI;->access$400(Lcom/sec/factory/app/ui/UIHDMI;)Z
    :try_end_72
    .catchall {:try_start_20 .. :try_end_72} :catchall_ea
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_72} :catch_cb

    move-result v3

    if-eqz v3, :cond_85

    .line 46
    :cond_75
    :try_start_75
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIHDMI;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "delay"

    const-string v5, " : 1000ms"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_ea
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_85} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_85} :catch_cb

    .line 53
    :cond_85
    :goto_85
    :try_start_85
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    invoke-static {v3}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/factory/modules/ModuleAudio;->stopMedia()V

    .line 54
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    invoke-static {v3}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/factory/modules/ModuleAudio;->setAudioPath(I)V

    .line 55
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    invoke-static {v3}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v3

    const v4, 0x7f050002

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V

    .line 58
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    #getter for: Lcom/sec/factory/app/ui/UIHDMI;->FLAG_NV_WRITE:Z
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIHDMI;->access$500(Lcom/sec/factory/app/ui/UIHDMI;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 59
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    invoke-virtual {v3}, Lcom/sec/factory/app/ui/UIHDMI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "Enter15Mode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 60
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Lcom/sec/factory/app/ui/UIHDMI;->setTestResult(B)V

    .line 61
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    const/4 v4, 0x1

    #setter for: Lcom/sec/factory/app/ui/UIHDMI;->FLAG_NV_WRITE:Z
    invoke-static {v3, v4}, Lcom/sec/factory/app/ui/UIHDMI;->access$502(Lcom/sec/factory/app/ui/UIHDMI;Z)Z
    :try_end_c9
    .catchall {:try_start_85 .. :try_end_c9} :catchall_ea
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_c9} :catch_cb

    goto/16 :goto_1e

    .line 85
    .end local v2           #state:I
    :catch_cb
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    :try_start_cc
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIHDMI;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "mBroadcastReceiver.onReceive"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catchall {:try_start_cc .. :try_end_e8} :catchall_ea

    goto/16 :goto_1e

    .line 31
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_ea
    move-exception v3

    monitor-exit p0

    throw v3

    .line 48
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #state:I
    :catch_ed
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_ee
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_85

    .line 65
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_f2
    if-nez v2, :cond_1e

    .line 66
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    invoke-static {v3}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/factory/modules/ModuleAudio;->stopMedia()V

    .line 67
    const-wide/16 v3, 0x12c

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 68
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    const/4 v4, 0x0

    #setter for: Lcom/sec/factory/app/ui/UIHDMI;->mIsTurnOffAudioPath:Z
    invoke-static {v3, v4}, Lcom/sec/factory/app/ui/UIHDMI;->access$602(Lcom/sec/factory/app/ui/UIHDMI;Z)Z

    .line 69
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    #calls: Lcom/sec/factory/app/ui/UIHDMI;->turnOffAudioPath()V
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIHDMI;->access$700(Lcom/sec/factory/app/ui/UIHDMI;)V

    .line 70
    const-wide/16 v3, 0x12c

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 71
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIHDMI$1;->this$0:Lcom/sec/factory/app/ui/UIHDMI;

    invoke-static {v3}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v3

    const v4, 0x7f050002

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sec/factory/modules/ModuleAudio;->playMedia(IZ)V
    :try_end_11f
    .catchall {:try_start_ee .. :try_end_11f} :catchall_ea
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_11f} :catch_cb

    goto/16 :goto_1e
.end method
