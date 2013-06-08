.class Lcom/wssyncmldm/agent/XDMUITask$1;
.super Landroid/os/Handler;
.source "XDMUITask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/agent/XDMUITask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/agent/XDMUITask;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/agent/XDMUITask;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/wssyncmldm/agent/XDMUITask$1;->this$0:Lcom/wssyncmldm/agent/XDMUITask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wssyncmldm/agent/XDMUITask$1;->this$0:Lcom/wssyncmldm/agent/XDMUITask;

    invoke-virtual {v0, p1}, Lcom/wssyncmldm/agent/XDMUITask;->xdmUIEvent(Landroid/os/Message;)Z

    .line 58
    return-void
.end method
