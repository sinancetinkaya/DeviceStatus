.class Lcom/sec/factory/app/ui/UIBarometer$1;
.super Landroid/os/Handler;
.source "UIBarometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIBarometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIBarometer;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIBarometer;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBarometer$1;->this$0:Lcom/sec/factory/app/ui/UIBarometer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBarometer$1;->this$0:Lcom/sec/factory/app/ui/UIBarometer;

    #getter for: Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIBarometer;->access$000(Lcom/sec/factory/app/ui/UIBarometer;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 108
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer$1;->this$0:Lcom/sec/factory/app/ui/UIBarometer;

    #calls: Lcom/sec/factory/app/ui/UIBarometer;->getDataBaro()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBarometer;->access$100(Lcom/sec/factory/app/ui/UIBarometer;)V

    .line 115
    :cond_f
    :goto_f
    return-void

    .line 109
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBarometer$1;->this$0:Lcom/sec/factory/app/ui/UIBarometer;

    #getter for: Lcom/sec/factory/app/ui/UIBarometer;->WHAT_GET_DATA2:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIBarometer;->access$200(Lcom/sec/factory/app/ui/UIBarometer;)I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 110
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer$1;->this$0:Lcom/sec/factory/app/ui/UIBarometer;

    #calls: Lcom/sec/factory/app/ui/UIBarometer;->getBaroDataDelay()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBarometer;->access$300(Lcom/sec/factory/app/ui/UIBarometer;)V

    goto :goto_f

    .line 111
    :cond_20
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBarometer$1;->this$0:Lcom/sec/factory/app/ui/UIBarometer;

    #getter for: Lcom/sec/factory/app/ui/UIBarometer;->WHAT_UPDATE:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIBarometer;->access$400(Lcom/sec/factory/app/ui/UIBarometer;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 112
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer$1;->this$0:Lcom/sec/factory/app/ui/UIBarometer;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIBarometer;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage"

    const-string v2, "WHAT_NOTI_SENSOR_READY"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarometer$1;->this$0:Lcom/sec/factory/app/ui/UIBarometer;

    #calls: Lcom/sec/factory/app/ui/UIBarometer;->update()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIBarometer;->access$500(Lcom/sec/factory/app/ui/UIBarometer;)V

    goto :goto_f
.end method
