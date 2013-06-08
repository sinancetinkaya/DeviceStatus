.class Lcom/sec/factory/app/ui/UITspReferenceMode$1;
.super Landroid/os/Handler;
.source "UITspReferenceMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UITspReferenceMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UITspReferenceMode;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$1;->this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 88
    :goto_5
    return-void

    .line 72
    :pswitch_6
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$1;->this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler()"

    const-string v2, "Display Tsp Info()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$1;->this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;

    #calls: Lcom/sec/factory/app/ui/UITspReferenceMode;->getChipsetName()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->access$000(Lcom/sec/factory/app/ui/UITspReferenceMode;)V

    .line 74
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$1;->this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;

    #calls: Lcom/sec/factory/app/ui/UITspReferenceMode;->getPhoneFirmware()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->access$100(Lcom/sec/factory/app/ui/UITspReferenceMode;)V

    .line 75
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$1;->this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;

    #calls: Lcom/sec/factory/app/ui/UITspReferenceMode;->getPanelFirmware()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->access$200(Lcom/sec/factory/app/ui/UITspReferenceMode;)V

    goto :goto_5

    .line 78
    :pswitch_21
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$1;->this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler()"

    const-string v2, "Display Result Data"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$1;->this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;

    #calls: Lcom/sec/factory/app/ui/UITspReferenceMode;->displayTSPvalue()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->access$300(Lcom/sec/factory/app/ui/UITspReferenceMode;)V

    goto :goto_5

    .line 84
    :pswitch_32
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$1;->this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspReferenceMode;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler()"

    const-string v2, "checkPassResult()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$1;->this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;

    #calls: Lcom/sec/factory/app/ui/UITspReferenceMode;->checkPassResult()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->access$400(Lcom/sec/factory/app/ui/UITspReferenceMode;)V

    goto :goto_5

    .line 70
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_6
        :pswitch_21
        :pswitch_32
    .end packed-switch
.end method
