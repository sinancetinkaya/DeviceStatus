.class public Lcom/wssyncmldm/XDMService$XDMTopActivityCheckThread;
.super Ljava/lang/Thread;
.source "XDMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/XDMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XDMTopActivityCheckThread"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 169
    :cond_1
    const-wide/16 v2, 0x2710

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_21

    .line 176
    :goto_6
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckIdleScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetPendingUIEvent()I

    move-result v1

    .line 179
    .local v1, uiEvent:I
    if-eqz v1, :cond_1d

    .line 181
    invoke-static {}, Lcom/wssyncmldm/XDMService;->access$000()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 182
    const/4 v2, 0x0

    invoke-static {v4, v2}, Lcom/wssyncmldm/XDMService;->xdmSetPendingUIEvent(ILjava/lang/Object;)V

    .line 184
    :cond_1d
    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->access$102(Z)Z

    .line 188
    return-void

    .line 171
    .end local v1           #uiEvent:I
    :catch_21
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_6
.end method
