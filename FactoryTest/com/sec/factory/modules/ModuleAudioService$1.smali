.class Lcom/sec/factory/modules/ModuleAudioService$1;
.super Landroid/os/Handler;
.source "ModuleAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/ModuleAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleAudioService;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/ModuleAudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleAudioService$1;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_68

    .line 84
    :cond_7
    :goto_7
    return-void

    .line 66
    :pswitch_8
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService$1;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    #getter for: Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudioService;->access$000(Lcom/sec/factory/modules/ModuleAudioService;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 67
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService$1;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    #getter for: Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudioService;->access$000(Lcom/sec/factory/modules/ModuleAudioService;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_2e

    .line 68
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService$1;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    #getter for: Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudioService;->access$000(Lcom/sec/factory/modules/ModuleAudioService;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 69
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService$1;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    #getter for: Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudioService;->access$000(Lcom/sec/factory/modules/ModuleAudioService;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 71
    :cond_2e
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService$1;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    #getter for: Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudioService;->access$000(Lcom/sec/factory/modules/ModuleAudioService;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 72
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService$1;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    #setter for: Lcom/sec/factory/modules/ModuleAudioService;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v0, v2}, Lcom/sec/factory/modules/ModuleAudioService;->access$002(Lcom/sec/factory/modules/ModuleAudioService;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    .line 75
    :cond_3c
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService$1;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    #getter for: Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudioService;->access$100(Lcom/sec/factory/modules/ModuleAudioService;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 76
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService$1;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    #getter for: Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudioService;->access$100(Lcom/sec/factory/modules/ModuleAudioService;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v1, :cond_59

    .line 77
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService$1;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    #getter for: Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudioService;->access$100(Lcom/sec/factory/modules/ModuleAudioService;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 79
    :cond_59
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService$1;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    #getter for: Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleAudioService;->access$100(Lcom/sec/factory/modules/ModuleAudioService;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 80
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService$1;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    #setter for: Lcom/sec/factory/modules/ModuleAudioService;->mRecorder:Landroid/media/AudioRecord;
    invoke-static {v0, v2}, Lcom/sec/factory/modules/ModuleAudioService;->access$102(Lcom/sec/factory/modules/ModuleAudioService;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    goto :goto_7

    .line 64
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
