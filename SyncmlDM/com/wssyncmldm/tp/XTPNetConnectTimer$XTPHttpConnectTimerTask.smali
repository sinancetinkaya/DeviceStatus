.class public Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;
.super Ljava/util/TimerTask;
.source "XTPNetConnectTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/tp/XTPNetConnectTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XTPHttpConnectTimerTask"
.end annotation


# instance fields
.field private isCloseTimer:Z

.field final synthetic this$0:Lcom/wssyncmldm/tp/XTPNetConnectTimer;


# direct methods
.method public constructor <init>(Lcom/wssyncmldm/tp/XTPNetConnectTimer;)V
    .registers 3
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;->this$0:Lcom/wssyncmldm/tp/XTPNetConnectTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;->isCloseTimer:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->access$000()I

    move-result v0

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_26

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->access$002(I)I

    .line 72
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 73
    const-string v0, "===Connect Fail==="

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->access$100()I

    move-result v0

    if-nez v0, :cond_20

    .line 75
    sget-object v0, Lcom/wssyncmldm/XDMService;->g_Task:Lcom/wssyncmldm/agent/XDMTask;

    invoke-virtual {v0}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentDmXXXFail()V

    .line 86
    :goto_1f
    return-void

    .line 77
    :cond_20
    sget-object v0, Lcom/wssyncmldm/XDMService;->g_Task:Lcom/wssyncmldm/agent/XDMTask;

    invoke-virtual {v0}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentDlXXXFail()V

    goto :goto_1f

    .line 81
    :cond_26
    const-string v0, "=============handshake============="

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "== Connect Timer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 83
    const-string v0, "==================================="

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->access$008()I

    goto :goto_1f
.end method

.method public xtpHttpConnGetCloseTimer()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;->isCloseTimer:Z

    return v0
.end method

.method public xtpHttpConnSetCloseTimer(Z)V
    .registers 2
    .parameter "isclose"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;->isCloseTimer:Z

    .line 96
    return-void
.end method
