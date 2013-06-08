.class Lcom/sec/factory/app/ui/UIProximityLight$1;
.super Landroid/os/Handler;
.source "UIProximityLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIProximityLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIProximityLight;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIProximityLight;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIProximityLight$1;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_READY:I

    if-ne v0, v1, :cond_28

    .line 187
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight$1;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage"

    const-string v2, "WHAT_NOTI_SENSOR_READY"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight$1;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIProximityLight;->access$100(Lcom/sec/factory/app/ui/UIProximityLight;)[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight$1;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIProximityLight;->access$100(Lcom/sec/factory/app/ui/UIProximityLight;)[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_27

    .line 189
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight$1;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #calls: Lcom/sec/factory/app/ui/UIProximityLight;->sensorReady()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIProximityLight;->access$200(Lcom/sec/factory/app/ui/UIProximityLight;)V

    .line 200
    :cond_27
    :goto_27
    return-void

    .line 191
    :cond_28
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_UPDATAE:I

    if-ne v0, v1, :cond_45

    .line 192
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight$1;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIProximityLight;->access$100(Lcom/sec/factory/app/ui/UIProximityLight;)[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight$1;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIProximityLight;->access$100(Lcom/sec/factory/app/ui/UIProximityLight;)[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_27

    .line 193
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight$1;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #calls: Lcom/sec/factory/app/ui/UIProximityLight;->startTest()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIProximityLight;->access$300(Lcom/sec/factory/app/ui/UIProximityLight;)V

    goto :goto_27

    .line 197
    :cond_45
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIProximityLight$1;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->WHAT_EXIT:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIProximityLight;->access$400(Lcom/sec/factory/app/ui/UIProximityLight;)I

    move-result v1

    if-ne v0, v1, :cond_27

    .line 198
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIProximityLight$1;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #calls: Lcom/sec/factory/app/ui/UIProximityLight;->exit()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIProximityLight;->access$500(Lcom/sec/factory/app/ui/UIProximityLight;)V

    goto :goto_27
.end method
