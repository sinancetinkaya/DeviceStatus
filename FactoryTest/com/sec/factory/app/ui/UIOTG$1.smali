.class Lcom/sec/factory/app/ui/UIOTG$1;
.super Landroid/os/Handler;
.source "UIOTG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIOTG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIOTG;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIOTG;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIOTG$1;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5c

    .line 81
    :goto_5
    :pswitch_5
    return-void

    .line 62
    :pswitch_6
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG$1;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIOTG;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler-handleMessage"

    const-string v2, "msg.what-MSG_OTG_CHECK_TEST_START"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG$1;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    #getter for: Lcom/sec/factory/app/ui/UIOTG;->mDescriptionText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIOTG;->access$000(Lcom/sec/factory/app/ui/UIOTG;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Please Insert USB Memory"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 68
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG$1;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIOTG;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler-handleMessage"

    const-string v2, "msg.what-MSG_MEDIA_MOUNTED"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG$1;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    #getter for: Lcom/sec/factory/app/ui/UIOTG;->mDescriptionText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIOTG;->access$000(Lcom/sec/factory/app/ui/UIOTG;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "USB Memory Inserted"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG$1;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    const/4 v1, 0x1

    #setter for: Lcom/sec/factory/app/ui/UIOTG;->mIsTestPass:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UIOTG;->access$102(Lcom/sec/factory/app/ui/UIOTG;Z)Z

    .line 71
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG$1;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    #calls: Lcom/sec/factory/app/ui/UIOTG;->setTestResult()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIOTG;->access$200(Lcom/sec/factory/app/ui/UIOTG;)V

    goto :goto_5

    .line 75
    :pswitch_3f
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG$1;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIOTG;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler-handleMessage"

    const-string v2, "msg.what-MSG_MEDIA_UNMOUNTED"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG$1;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    #getter for: Lcom/sec/factory/app/ui/UIOTG;->mDescriptionText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIOTG;->access$000(Lcom/sec/factory/app/ui/UIOTG;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Please Insert USB Memory"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIOTG$1;->this$0:Lcom/sec/factory/app/ui/UIOTG;

    #calls: Lcom/sec/factory/app/ui/UIOTG;->setTestResult()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIOTG;->access$200(Lcom/sec/factory/app/ui/UIOTG;)V

    goto :goto_5

    .line 59
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_1d
        :pswitch_3f
    .end packed-switch
.end method
