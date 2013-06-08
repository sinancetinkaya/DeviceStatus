.class Lcom/wssyncmldm/XDMService$1;
.super Landroid/os/Handler;
.source "XDMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/XDMService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/XDMService;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/XDMService;)V
    .registers 2
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/wssyncmldm/XDMService$1;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0x1f40

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 304
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 305
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_72

    .line 351
    :cond_c
    :goto_c
    sget-object v3, Lcom/wssyncmldm/XDMService;->g_hApnHandler:Landroid/os/Handler;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    :cond_13
    :goto_13
    return-void

    .line 308
    :pswitch_14
    const-string v3, "XDM_EVENT_DATA_STATE_CHANGED"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 309
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    if-eqz v3, :cond_13

    .line 314
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    invoke-virtual {v3}, Lcom/android/common/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 315
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eqz v3, :cond_31

    .line 317
    :cond_2b
    const-string v3, "info is not TYPE_MOBILE"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_13

    .line 321
    :cond_31
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 323
    const-string v3, "info is not connected"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_13

    .line 326
    :cond_3d
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 327
    invoke-virtual {p0, v4}, Lcom/wssyncmldm/XDMService$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v7}, Lcom/wssyncmldm/XDMService$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 331
    .end local v1           #info:Landroid/net/NetworkInfo;
    :pswitch_48
    const-string v3, "XDM_EVENT_CONTINUE_DM_CONNECTIVITY"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsConnected()Z

    move-result v0

    .line 333
    .local v0, Isconnected:Z
    const/4 v2, 0x0

    .line 334
    .local v2, ret:I
    if-nez v0, :cond_69

    .line 336
    sget-object v3, Lcom/wssyncmldm/XDMService;->g_Task:Lcom/wssyncmldm/agent/XDMTask;

    iget-object v3, v3, Lcom/wssyncmldm/agent/XDMTask;->m_DmAgent:Lcom/wssyncmldm/agent/XDMAgent;

    iget-object v3, v3, Lcom/wssyncmldm/agent/XDMAgent;->m_HttpDMAdapter:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-virtual {v3}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpApnActive()I

    move-result v2

    .line 337
    if-eqz v2, :cond_13

    .line 339
    const/4 v3, -0x2

    if-ne v2, v3, :cond_c

    .line 341
    const/16 v3, 0x71

    invoke-static {v3, v5, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    .line 345
    :cond_69
    invoke-virtual {p0, v4}, Lcom/wssyncmldm/XDMService$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v7}, Lcom/wssyncmldm/XDMService$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 305
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_14
        :pswitch_48
    .end packed-switch
.end method
