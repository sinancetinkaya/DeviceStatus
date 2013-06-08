.class Lcom/sec/factory/aporiented/DummyFtClient$1;
.super Landroid/os/Handler;
.source "DummyFtClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/aporiented/DummyFtClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/DummyFtClient;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/DummyFtClient;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sec/factory/aporiented/DummyFtClient$1;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_16

    .line 117
    :goto_5
    return-void

    .line 109
    :sswitch_6
    iget-object v0, p0, Lcom/sec/factory/aporiented/DummyFtClient$1;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    #calls: Lcom/sec/factory/aporiented/DummyFtClient;->stopService()V
    invoke-static {v0}, Lcom/sec/factory/aporiented/DummyFtClient;->access$000(Lcom/sec/factory/aporiented/DummyFtClient;)V

    goto :goto_5

    .line 112
    :sswitch_c
    iget-object v0, p0, Lcom/sec/factory/aporiented/DummyFtClient$1;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    iget-object v0, v0, Lcom/sec/factory/aporiented/DummyFtClient;->writer:Lcom/sec/factory/aporiented/ResponseWriter;

    const-string v1, "BOOTING COMPLETED\r\n"

    invoke-virtual {v0, v1}, Lcom/sec/factory/aporiented/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_5

    .line 107
    :sswitch_data_16
    .sparse-switch
        0x66 -> :sswitch_6
        0x3ea -> :sswitch_c
    .end sparse-switch
.end method
