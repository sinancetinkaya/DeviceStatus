.class Lcom/sec/factory/app/ui/UIGeomagneticGyro$1;
.super Landroid/os/Handler;
.source "UIGeomagneticGyro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIGeomagneticGyro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIGeomagneticGyro;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIGeomagneticGyro;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$1;->this$0:Lcom/sec/factory/app/ui/UIGeomagneticGyro;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_READY:I

    if-ne v0, v1, :cond_17

    .line 133
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$1;->this$0:Lcom/sec/factory/app/ui/UIGeomagneticGyro;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler.handleMessage"

    const-string v2, "WHAT_NOTI_SENSOR_READY"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$1;->this$0:Lcom/sec/factory/app/ui/UIGeomagneticGyro;

    #calls: Lcom/sec/factory/app/ui/UIGeomagneticGyro;->update()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->access$000(Lcom/sec/factory/app/ui/UIGeomagneticGyro;)V

    .line 137
    :goto_16
    return-void

    .line 136
    :cond_17
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$1;->this$0:Lcom/sec/factory/app/ui/UIGeomagneticGyro;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/sec/factory/app/ui/UIGeomagneticGyro;->checkResult(I)V
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->access$100(Lcom/sec/factory/app/ui/UIGeomagneticGyro;I)V

    goto :goto_16
.end method
