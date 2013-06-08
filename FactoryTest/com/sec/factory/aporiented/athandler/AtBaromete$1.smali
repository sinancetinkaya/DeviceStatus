.class Lcom/sec/factory/aporiented/athandler/AtBaromete$1;
.super Landroid/os/Handler;
.source "AtBaromete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/aporiented/athandler/AtBaromete;->getDataBaroHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtBaromete;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtBaromete;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBaromete;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBaromete;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_GET_DATA:I
    invoke-static {v1}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->access$000(Lcom/sec/factory/aporiented/athandler/AtBaromete;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 268
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBaromete;

    #calls: Lcom/sec/factory/aporiented/athandler/AtBaromete;->getDataBaro()V
    invoke-static {v0}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->access$100(Lcom/sec/factory/aporiented/athandler/AtBaromete;)V

    .line 274
    :cond_f
    :goto_f
    return-void

    .line 269
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBaromete;

    #getter for: Lcom/sec/factory/aporiented/athandler/AtBaromete;->WHAT_UPDATE:I
    invoke-static {v1}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->access$200(Lcom/sec/factory/aporiented/athandler/AtBaromete;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 270
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBaromete;

    iget-object v0, v0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage"

    const-string v2, "WHAT_UPDATE"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBaromete;

    #calls: Lcom/sec/factory/aporiented/athandler/AtBaromete;->getPressureResultUpdate()V
    invoke-static {v0}, Lcom/sec/factory/aporiented/athandler/AtBaromete;->access$300(Lcom/sec/factory/aporiented/athandler/AtBaromete;)V

    .line 272
    iget-object v0, p0, Lcom/sec/factory/aporiented/athandler/AtBaromete$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtBaromete;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/factory/aporiented/athandler/AtBaromete;->mCurrentIndex:I

    goto :goto_f
.end method
