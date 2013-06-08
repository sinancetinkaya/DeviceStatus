.class Lcom/wssyncmldm/ui/XUIDownloadProgress$1;
.super Landroid/os/Handler;
.source "XUIDownloadProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/ui/XUIDownloadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIDownloadProgress;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIDownloadProgress;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress$1;->this$0:Lcom/wssyncmldm/ui/XUIDownloadProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 73
    :goto_8
    return-void

    .line 66
    :pswitch_9
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress$1;->this$0:Lcom/wssyncmldm/ui/XUIDownloadProgress;

    #calls: Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiUpdateDownloadProgressBar()V
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->access$000(Lcom/wssyncmldm/ui/XUIDownloadProgress;)V

    goto :goto_8

    .line 63
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
