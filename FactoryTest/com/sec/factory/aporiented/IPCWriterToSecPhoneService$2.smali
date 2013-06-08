.class Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$2;
.super Landroid/os/Handler;
.source "IPCWriterToSecPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$2;->this$0:Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_42

    .line 193
    :goto_5
    return-void

    .line 173
    :sswitch_6
    const-string v0, "IPCWriterToSecPhoneService"

    const-string v1, "handleMessage"

    const-string v2, "DFMS Confirm received"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 176
    :sswitch_10
    const-string v0, "IPCWriterToSecPhoneService"

    const-string v1, "handleMessage"

    const-string v2, "DFMS Event received"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 179
    :sswitch_1a
    const-string v0, "IPCWriterToSecPhoneService"

    const-string v1, "handleMessage"

    const-string v2, "DFT Confirm received"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 182
    :sswitch_24
    const-string v0, "IPCWriterToSecPhoneService"

    const-string v1, "handleMessage"

    const-string v2, "DFT Event received"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 185
    :sswitch_2e
    const-string v0, "IPCWriterToSecPhoneService"

    const-string v1, "handleMessage"

    const-string v2, "CP Sysdump done"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 188
    :sswitch_38
    const-string v0, "IPCWriterToSecPhoneService"

    const-string v1, "handleMessage"

    const-string v2, "Send BOOT COMPLETED done"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 171
    :sswitch_data_42
    .sparse-switch
        0x64 -> :sswitch_6
        0x65 -> :sswitch_10
        0x66 -> :sswitch_1a
        0x67 -> :sswitch_24
        0x68 -> :sswitch_2e
        0x3e8 -> :sswitch_38
    .end sparse-switch
.end method
