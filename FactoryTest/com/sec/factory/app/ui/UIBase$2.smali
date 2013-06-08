.class Lcom/sec/factory/app/ui/UIBase$2;
.super Landroid/os/Handler;
.source "UIBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIBase;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIBase;)V
    .registers 2
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBase$2;->this$0:Lcom/sec/factory/app/ui/UIBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    .line 335
    :goto_5
    return-void

    .line 324
    :pswitch_6
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$2;->this$0:Lcom/sec/factory/app/ui/UIBase;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage"

    const-string v2, "Dismiss!"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$2;->this$0:Lcom/sec/factory/app/ui/UIBase;

    #getter for: Lcom/sec/factory/app/ui/UIBase;->mLogProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBase;->access$000(Lcom/sec/factory/app/ui/UIBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 326
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$2;->this$0:Lcom/sec/factory/app/ui/UIBase;

    #calls: Lcom/sec/factory/app/ui/UIBase;->infoLogAll()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBase;->access$100(Lcom/sec/factory/app/ui/UIBase;)V

    goto :goto_5

    .line 329
    :pswitch_20
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$2;->this$0:Lcom/sec/factory/app/ui/UIBase;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage"

    const-string v2, "Copy Dump"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$2;->this$0:Lcom/sec/factory/app/ui/UIBase;

    #calls: Lcom/sec/factory/app/ui/UIBase;->doCopyDumpOperation()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBase;->access$200(Lcom/sec/factory/app/ui/UIBase;)V

    goto :goto_5

    .line 322
    nop

    :pswitch_data_32
    .packed-switch 0x3e8
        :pswitch_20
        :pswitch_6
    .end packed-switch
.end method
