.class public Lcom/wssyncmldm/tp/XTPNetSendTimer$XTPHttpSendTimerTask;
.super Ljava/util/TimerTask;
.source "XTPNetSendTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/tp/XTPNetSendTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XTPHttpSendTimerTask"
.end annotation


# instance fields
.field private isCloseTimer:Z

.field final synthetic this$0:Lcom/wssyncmldm/tp/XTPNetSendTimer;


# direct methods
.method public constructor <init>(Lcom/wssyncmldm/tp/XTPNetSendTimer;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/wssyncmldm/tp/XTPNetSendTimer$XTPHttpSendTimerTask;->this$0:Lcom/wssyncmldm/tp/XTPNetSendTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wssyncmldm/tp/XTPNetSendTimer$XTPHttpSendTimerTask;->isCloseTimer:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 67
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->access$000()I

    move-result v0

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_26

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->access$002(I)I

    .line 70
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 71
    const-string v0, "===Send Fail==="

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->access$100()I

    move-result v0

    if-nez v0, :cond_20

    .line 73
    sget-object v0, Lcom/wssyncmldm/XDMService;->g_Task:Lcom/wssyncmldm/agent/XDMTask;

    invoke-virtual {v0}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentDmXXXFail()V

    .line 84
    :goto_1f
    return-void

    .line 75
    :cond_20
    sget-object v0, Lcom/wssyncmldm/XDMService;->g_Task:Lcom/wssyncmldm/agent/XDMTask;

    invoke-virtual {v0}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentDlXXXFail()V

    goto :goto_1f

    .line 79
    :cond_26
    const-string v0, "============================="

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "== send Timer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 81
    const-string v0, "============================="

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->access$008()I

    goto :goto_1f
.end method

.method public xtpGetCloseTimer()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/wssyncmldm/tp/XTPNetSendTimer$XTPHttpSendTimerTask;->isCloseTimer:Z

    return v0
.end method

.method public xtpSetCloseTimer(Z)V
    .registers 2
    .parameter "isclose"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/wssyncmldm/tp/XTPNetSendTimer$XTPHttpSendTimerTask;->isCloseTimer:Z

    .line 94
    return-void
.end method
