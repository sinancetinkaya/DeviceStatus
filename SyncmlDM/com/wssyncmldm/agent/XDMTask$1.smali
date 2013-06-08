.class Lcom/wssyncmldm/agent/XDMTask$1;
.super Landroid/os/Handler;
.source "XDMTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/agent/XDMTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/agent/XDMTask;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/agent/XDMTask;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wssyncmldm/agent/XDMTask$1;->this$0:Lcom/wssyncmldm/agent/XDMTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/wssyncmldm/agent/XDMTask$1;->this$0:Lcom/wssyncmldm/agent/XDMTask;

    invoke-virtual {v1, p1}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentTaskHandler(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 95
    :goto_5
    return-void

    .line 90
    :catch_6
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_5
.end method
