.class Lcom/sec/factory/cporiented/ResponseWriterCPO$1;
.super Landroid/os/Handler;
.source "ResponseWriterCPO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/cporiented/ResponseWriterCPO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/cporiented/ResponseWriterCPO;


# direct methods
.method constructor <init>(Lcom/sec/factory/cporiented/ResponseWriterCPO;)V
    .registers 2
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO$1;->this$0:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 397
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_58

    .line 423
    :goto_5
    return-void

    .line 399
    :sswitch_6
    const-string v0, "ResponseWriterCPO"

    const-string v1, "handleMessage"

    const-string v2, "DFMS Confirm received"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 402
    :sswitch_10
    const-string v0, "ResponseWriterCPO"

    const-string v1, "handleMessage"

    const-string v2, "DFMS Event received"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 405
    :sswitch_1a
    const-string v0, "ResponseWriterCPO"

    const-string v1, "handleMessage"

    const-string v2, "DFT Confirm received"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 408
    :sswitch_24
    const-string v0, "ResponseWriterCPO"

    const-string v1, "handleMessage"

    const-string v2, "DFT Event received"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 411
    :sswitch_2e
    const-string v0, "ResponseWriterCPO"

    const-string v1, "handleMessage"

    const-string v2, "CP Sysdump done"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/sec/factory/cporiented/ResponseWriterCPO$1;->this$0:Lcom/sec/factory/cporiented/ResponseWriterCPO;

    const/4 v1, 0x2

    const-string v2, "5A"

    const-string v3, "00"

    const-string v4, "OK"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/factory/cporiented/ResponseWriterCPO;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 415
    :sswitch_44
    const-string v0, "ResponseWriterCPO"

    const-string v1, "handleMessage"

    const-string v2, "Send BOOT COMPLETED done"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 418
    :sswitch_4e
    const-string v0, "ResponseWriterCPO"

    const-string v1, "handleMessage"

    const-string v2, "Send POWER CMD done"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 397
    :sswitch_data_58
    .sparse-switch
        0x64 -> :sswitch_6
        0x65 -> :sswitch_10
        0x66 -> :sswitch_1a
        0x67 -> :sswitch_24
        0x68 -> :sswitch_2e
        0xc8 -> :sswitch_4e
        0x3e8 -> :sswitch_44
    .end sparse-switch
.end method
