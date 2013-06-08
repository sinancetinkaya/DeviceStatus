.class Lcom/wssyncmldm/ui/XUIBootstrapActivity$19;
.super Ljava/lang/Object;
.source "XUIBootstrapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 376
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$19;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/16 v3, 0x2c2

    .line 379
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$202(I)I

    .line 380
    const/16 v1, 0x203

    invoke-static {v1}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpReadPushData(I)Lcom/wssyncmldm/noti/XNOTIWapPush;

    move-result-object v0

    .line 381
    .local v0, ptWapPush:Lcom/wssyncmldm/noti/XNOTIWapPush;
    if-nez v0, :cond_f

    .line 400
    :goto_e
    return-void

    .line 383
    :cond_f
    iget-object v1, v0, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    iget v1, v1, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nSEC:I

    packed-switch v1, :pswitch_data_30

    .line 395
    sget-object v1, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e

    .line 387
    :pswitch_1c
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$19;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->showDialog(I)V

    goto :goto_e

    .line 391
    :pswitch_23
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity$19;->this$0:Lcom/wssyncmldm/ui/XUIBootstrapActivity;

    const-string v2, "NETPIN"

    #setter for: Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szInstallState:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->access$402(Lcom/wssyncmldm/ui/XUIBootstrapActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    sget-object v1, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e

    .line 383
    :pswitch_data_30
    .packed-switch 0x80
        :pswitch_23
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
