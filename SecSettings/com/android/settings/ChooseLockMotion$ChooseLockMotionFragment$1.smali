.class Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment$1;
.super Landroid/os/Handler;
.source "ChooseLockMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment$1;->this$0:Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 83
    :goto_5
    return-void

    .line 80
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment$1;->this$0:Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;

    #calls: Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->access$000(Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;)V

    goto :goto_5

    .line 78
    :pswitch_data_c
    .packed-switch 0x66
        :pswitch_6
    .end packed-switch
.end method
