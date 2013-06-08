.class public Lcom/wssyncmldm/tp/XTPNetRecvTimer$XTPHttpRecvTimerTask;
.super Ljava/util/TimerTask;
.source "XTPNetRecvTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/tp/XTPNetRecvTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XTPHttpRecvTimerTask"
.end annotation


# instance fields
.field private isCloseTimer:Z

.field final synthetic this$0:Lcom/wssyncmldm/tp/XTPNetRecvTimer;


# direct methods
.method public constructor <init>(Lcom/wssyncmldm/tp/XTPNetRecvTimer;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/wssyncmldm/tp/XTPNetRecvTimer$XTPHttpRecvTimerTask;->this$0:Lcom/wssyncmldm/tp/XTPNetRecvTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wssyncmldm/tp/XTPNetRecvTimer$XTPHttpRecvTimerTask;->isCloseTimer:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 68
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->access$000()I

    move-result v0

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_26

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->access$002(I)I

    .line 71
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 72
    const-string v0, "===Receive Fail==="

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->access$100()I

    move-result v0

    if-nez v0, :cond_20

    .line 74
    sget-object v0, Lcom/wssyncmldm/XDMService;->g_Task:Lcom/wssyncmldm/agent/XDMTask;

    invoke-virtual {v0}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentDmXXXFail()V

    .line 85
    :goto_1f
    return-void

    .line 76
    :cond_20
    sget-object v0, Lcom/wssyncmldm/XDMService;->g_Task:Lcom/wssyncmldm/agent/XDMTask;

    invoke-virtual {v0}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentDlXXXFail()V

    goto :goto_1f

    .line 80
    :cond_26
    const-string v0, "============================="

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "== recv Timer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 82
    const-string v0, "============================="

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->access$008()I

    goto :goto_1f
.end method

.method public xtpHttpRecvGetCloseTimer()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/wssyncmldm/tp/XTPNetRecvTimer$XTPHttpRecvTimerTask;->isCloseTimer:Z

    return v0
.end method

.method public xtpHttpRecvSetCloseTimer(Z)V
    .registers 2
    .parameter "isclose"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/wssyncmldm/tp/XTPNetRecvTimer$XTPHttpRecvTimerTask;->isCloseTimer:Z

    .line 95
    return-void
.end method
