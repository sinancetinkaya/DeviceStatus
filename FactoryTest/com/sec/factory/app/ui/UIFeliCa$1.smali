.class Lcom/sec/factory/app/ui/UIFeliCa$1;
.super Landroid/os/Handler;
.source "UIFeliCa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIFeliCa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIFeliCa;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIFeliCa;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIFeliCa$1;->this$0:Lcom/sec/factory/app/ui/UIFeliCa;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 32
    const-string v0, "UIFeliCa"

    const-string v1, "handleMessage(Message msg)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 42
    :cond_c
    :goto_c
    return-void

    .line 35
    :pswitch_d
    const-string v0, "UIFeliCa"

    const-string v1, "MSG_FINISH_TEST"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFeliCa$1;->this$0:Lcom/sec/factory/app/ui/UIFeliCa;

    #getter for: Lcom/sec/factory/app/ui/UIFeliCa;->mIsPassed_reader:Z
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIFeliCa;->access$000(Lcom/sec/factory/app/ui/UIFeliCa;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 37
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFeliCa$1;->this$0:Lcom/sec/factory/app/ui/UIFeliCa;

    const/16 v1, 0x28

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/ui/UIFeliCa;->setTestResultWithoutNV(BB)V

    .line 38
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIFeliCa$1;->this$0:Lcom/sec/factory/app/ui/UIFeliCa;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIFeliCa;->finish()V

    goto :goto_c

    .line 33
    nop

    :pswitch_data_2c
    .packed-switch 0x4
        :pswitch_d
    .end packed-switch
.end method
