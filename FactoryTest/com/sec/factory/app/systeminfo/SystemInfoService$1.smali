.class Lcom/sec/factory/app/systeminfo/SystemInfoService$1;
.super Landroid/os/Handler;
.source "SystemInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/systeminfo/SystemInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/systeminfo/SystemInfoService;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/systeminfo/SystemInfoService;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService$1;->this$0:Lcom/sec/factory/app/systeminfo/SystemInfoService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 81
    :goto_5
    return-void

    .line 77
    :pswitch_6
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService$1;->this$0:Lcom/sec/factory/app/systeminfo/SystemInfoService;

    #getter for: Lcom/sec/factory/app/systeminfo/SystemInfoService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/app/systeminfo/SystemInfoService;->access$000(Lcom/sec/factory/app/systeminfo/SystemInfoService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService$1;->this$0:Lcom/sec/factory/app/systeminfo/SystemInfoService;

    #calls: Lcom/sec/factory/app/systeminfo/SystemInfoService;->DisplaySystemInfo()V
    invoke-static {v0}, Lcom/sec/factory/app/systeminfo/SystemInfoService;->access$100(Lcom/sec/factory/app/systeminfo/SystemInfoService;)V

    goto :goto_5

    .line 75
    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method
