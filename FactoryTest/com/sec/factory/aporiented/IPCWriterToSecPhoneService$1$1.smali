.class Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1$1;
.super Ljava/util/TimerTask;
.source "IPCWriterToSecPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1$1;->this$1:Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1$1;->this$1:Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;

    iget-object v0, v0, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService$1;->this$0:Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;

    invoke-virtual {v0}, Lcom/sec/factory/aporiented/IPCWriterToSecPhoneService;->disConnectSecPhoneService()V

    .line 118
    return-void
.end method
