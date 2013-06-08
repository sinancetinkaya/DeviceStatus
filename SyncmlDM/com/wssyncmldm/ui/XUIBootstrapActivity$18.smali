.class Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;
.super Landroid/os/Handler;
.source "XUIBootstrapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIBootstrapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/16 v5, 0xb8

    const/4 v1, 0x5

    const/16 v4, 0x2c2

    const/16 v3, 0xb7

    const/4 v2, 0x7

    .line 300
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_ba

    .line 368
    :goto_10
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_1b

    .line 369
    sget-object v0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    :cond_1b
    return-void

    .line 304
    :sswitch_1c
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0, v3}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->showDialog(I)V

    .line 305
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpFreePushData()V

    goto :goto_10

    .line 308
    :sswitch_25
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0, v5}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->showDialog(I)V

    .line 309
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpFreePushData()V

    goto :goto_10

    .line 313
    :sswitch_2e
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->removeDialog(I)V

    .line 314
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->showDialog(I)V

    goto :goto_10

    .line 318
    :sswitch_3b
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0, v2}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->showDialog(I)V

    .line 320
    invoke-static {}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$200()I

    move-result v0

    if-lt v0, v1, :cond_aa

    .line 323
    const-string v0, "NETPIN"

    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szInstallState:Ljava/lang/String;
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$400(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_80

    .line 326
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szResponseText:Ljava/lang/String;
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$100(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_Context:Landroid/content/Context;
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$500(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpBootstrapInstallVerify(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 328
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0, v2}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->removeDialog(I)V

    .line 329
    sget-object v0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_10

    .line 333
    :cond_71
    const-string v0, "BootStrap Install Fail"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0, v2}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->removeDialog(I)V

    .line 336
    const/4 v0, 0x0

    invoke-static {v0, v5}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_10

    .line 343
    :cond_80
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szResponseText:Ljava/lang/String;
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$100(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_Context:Landroid/content/Context;
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$500(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpBootstrapInstallVerify(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 345
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0, v2}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->removeDialog(I)V

    .line 346
    sget-object v0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_10

    .line 350
    :cond_9e
    const-string v0, "BootStrap Install Fail"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-virtual {v0, v2}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->removeDialog(I)V

    goto/16 :goto_10

    .line 358
    :cond_aa
    invoke-static {}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$208()I

    .line 359
    sget-object v0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    sget-object v0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_10

    .line 301
    nop

    :sswitch_data_ba
    .sparse-switch
        0xb6 -> :sswitch_2e
        0xb7 -> :sswitch_1c
        0xb8 -> :sswitch_25
        0x2c2 -> :sswitch_3b
    .end sparse-switch
.end method
