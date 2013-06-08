.class Lcom/sec/factory/app/ui/UIOrientation$1;
.super Landroid/os/Handler;
.source "UIOrientation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIOrientation;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIOrientation;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 257
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mHandler-handleMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStatus=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIOrientation;->access$000(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "msg.what=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_52

    .line 261
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_0:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$100(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v2

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->popupShow(I)V
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$200(Lcom/sec/factory/app/ui/UIOrientation;I)V

    .line 439
    :cond_51
    :goto_51
    return-void

    .line 262
    :cond_52
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x62

    if-ne v1, v2, :cond_77

    .line 263
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->displayImage()V
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$300(Lcom/sec/factory/app/ui/UIOrientation;)V

    .line 264
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->FLAG_TEST_EXIT:Z
    invoke-static {v1, v6}, Lcom/sec/factory/app/ui/UIOrientation;->access$402(Lcom/sec/factory/app/ui/UIOrientation;Z)Z

    .line 265
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->controlAccelerometerSensor(I)V
    invoke-static {v1, v6}, Lcom/sec/factory/app/ui/UIOrientation;->access$500(Lcom/sec/factory/app/ui/UIOrientation;I)V

    .line 266
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$700(Lcom/sec/factory/app/ui/UIOrientation;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->WHAT_FIRST:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$600(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_51

    .line 267
    :cond_77
    iget v1, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/sec/factory/modules/SensorNotification;->WHAT_NOTI_SENSOR_UPDATAE:I

    if-ne v1, v2, :cond_616

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->FLAG_TEST_EXIT:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$400(Lcom/sec/factory/app/ui/UIOrientation;)Z

    move-result v1

    if-eqz v1, :cond_616

    .line 269
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->isStatusCPSensorPending()Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$800(Lcom/sec/factory/app/ui/UIOrientation;)Z

    move-result v1

    if-nez v1, :cond_1f2

    .line 270
    const-string v1, "IS_SIMPLE_TEST_ACC_SYSFS"

    invoke-static {v1}, Lcom/sec/factory/support/Support$TestCase;->getEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1df

    .line 271
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1000(Lcom/sec/factory/app/ui/UIOrientation;)Lcom/sec/factory/modules/ModuleSensor;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_FILE____ACCELEROMETER_N_ANGLE:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$902(Lcom/sec/factory/app/ui/UIOrientation;[Ljava/lang/String;)[Ljava/lang/String;

    .line 280
    :goto_a6
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16f

    .line 283
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->isStatusCPSensorPending()Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$800(Lcom/sec/factory/app/ui/UIOrientation;)Z

    move-result v1

    if-nez v1, :cond_205

    .line 285
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AP [Coordinates] X:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t, Y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t, Z:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AP [___Angle___] X:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t, Y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t, Z:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->mSensorValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1102(Lcom/sec/factory/app/ui/UIOrientation;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    :cond_13a
    :goto_13a
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$000(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    if-ne v1, v8, :cond_293

    .line 296
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n[AP Angle__Base] Z:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Z:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$1200(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1184(Lcom/sec/factory/app/ui/UIOrientation;Ljava/lang/Object;)Ljava/lang/String;

    .line 304
    :cond_160
    :goto_160
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mTextCoordinates:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$1500(Lcom/sec/factory/app/ui/UIOrientation;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mSensorValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1100(Lcom/sec/factory/app/ui/UIOrientation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_16f
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 308
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$000(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    if-ne v1, v8, :cond_32f

    .line 309
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_Z:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$1600(Lcom/sec/factory/app/ui/UIOrientation;)Z

    move-result v1

    if-ne v1, v6, :cond_18c

    .line 310
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_Z:Z
    invoke-static {v1, v5}, Lcom/sec/factory/app/ui/UIOrientation;->access$1602(Lcom/sec/factory/app/ui/UIOrientation;Z)Z

    .line 313
    :cond_18c
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->startZTest30degree([Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1700(Lcom/sec/factory/app/ui/UIOrientation;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 314
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mHandler-handleMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Z => Base : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Z:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIOrientation;->access$1200(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Curr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIOrientation;->access$1800(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_2:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1900(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v2

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->popupShow(I)V
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$200(Lcom/sec/factory/app/ui/UIOrientation;I)V

    .line 317
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    const/4 v2, 0x3

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$002(Lcom/sec/factory/app/ui/UIOrientation;I)I

    goto/16 :goto_51

    .line 274
    :cond_1df
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1000(Lcom/sec/factory/app/ui/UIOrientation;)Lcom/sec/factory/modules/ModuleSensor;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_MANAGER_ACCELEROMETER_N_ANGLE:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$902(Lcom/sec/factory/app/ui/UIOrientation;[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_a6

    .line 277
    :cond_1f2
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mModuleSensor:Lcom/sec/factory/modules/ModuleSensor;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1000(Lcom/sec/factory/app/ui/UIOrientation;)Lcom/sec/factory/modules/ModuleSensor;

    move-result-object v2

    sget v3, Lcom/sec/factory/modules/ModuleSensor;->ID_INTENT__CP_ACCELEROMETER:I

    invoke-virtual {v2, v3}, Lcom/sec/factory/modules/ModuleSensor;->getData(I)[Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$902(Lcom/sec/factory/app/ui/UIOrientation;[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_a6

    .line 289
    :cond_205
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->isStatusCPSensorPending()Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$800(Lcom/sec/factory/app/ui/UIOrientation;)Z

    move-result v1

    if-ne v1, v6, :cond_13a

    .line 290
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CP [Coordinates] X:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t, Y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t, Z:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CP [___Angle___] X:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t, Y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t, Z:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->mSensorValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1102(Lcom/sec/factory/app/ui/UIOrientation;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_13a

    .line 297
    :cond_293
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$000(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2cc

    .line 298
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n[AP Angle__Base] X:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_X:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$1300(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t, Y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Y:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$1400(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1184(Lcom/sec/factory/app/ui/UIOrientation;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_160

    .line 299
    :cond_2cc
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$000(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2f5

    .line 300
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n[CP Angle__Base] Z:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Z:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$1200(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1184(Lcom/sec/factory/app/ui/UIOrientation;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_160

    .line 301
    :cond_2f5
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$000(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_160

    .line 302
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n[CP Angle__Base] X:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_X:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$1300(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t, Y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Y:I
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIOrientation;->access$1400(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1184(Lcom/sec/factory/app/ui/UIOrientation;Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_160

    .line 319
    :cond_32f
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$000(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4cc

    .line 320
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_XY:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2000(Lcom/sec/factory/app/ui/UIOrientation;)Z

    move-result v1

    if-ne v1, v6, :cond_345

    .line 321
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_XY:Z
    invoke-static {v1, v5}, Lcom/sec/factory/app/ui/UIOrientation;->access$2002(Lcom/sec/factory/app/ui/UIOrientation;Z)Z

    .line 324
    :cond_345
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->startXYTest60degree([Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$2100(Lcom/sec/factory/app/ui/UIOrientation;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 325
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mHandler-handleMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X => Base : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_X:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIOrientation;->access$1300(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mHandler-handleMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Y => Base : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Y:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIOrientation;->access$1400(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->IS_SUPPORT_CP_ACCEL:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2200(Lcom/sec/factory/app/ui/UIOrientation;)Z

    move-result v1

    if-nez v1, :cond_429

    .line 330
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1, v9}, Lcom/sec/factory/app/ui/UIOrientation;->access$002(Lcom/sec/factory/app/ui/UIOrientation;I)I

    .line 332
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mOrientationStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2300(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    if-ne v1, v6, :cond_3ef

    .line 333
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mHandler-handleMessage"

    const-string v3, "AP - LANDSCAPE_MODE_RIGHT"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    invoke-virtual {v1, v7}, Lcom/sec/factory/app/ui/UIOrientation;->setRequestedOrientation(I)V

    .line 335
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    :cond_3dd
    :goto_3dd
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->WHAT_EXIT:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2500(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/factory/app/ui/UIOrientation$1;->sendEmptyMessageDelayed(IJ)Z

    .line 346
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->FLAG_TEST_EXIT:Z
    invoke-static {v1, v5}, Lcom/sec/factory/app/ui/UIOrientation;->access$402(Lcom/sec/factory/app/ui/UIOrientation;Z)Z

    goto/16 :goto_51

    .line 338
    :cond_3ef
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mOrientationStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2300(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    if-ne v1, v8, :cond_3dd

    .line 339
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mHandler-handleMessage"

    const-string v3, "AP - LANDSCAPE_MODE_LEFT"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    invoke-virtual {v1, v5}, Lcom/sec/factory/app/ui/UIOrientation;->setRequestedOrientation(I)V

    .line 341
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3dd

    .line 347
    :cond_429
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->IS_SUPPORT_CP_ACCEL:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2200(Lcom/sec/factory/app/ui/UIOrientation;)Z

    move-result v1

    if-ne v1, v6, :cond_51

    .line 348
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->controlAccelerometerSensor(I)V
    invoke-static {v1, v5}, Lcom/sec/factory/app/ui/UIOrientation;->access$500(Lcom/sec/factory/app/ui/UIOrientation;I)V

    .line 350
    const-wide/16 v1, 0x1f4

    :try_start_438
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_43b
    .catch Ljava/lang/Exception; {:try_start_438 .. :try_end_43b} :catch_48d

    .line 354
    :goto_43b
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    const/4 v2, 0x3

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->controlAccelerometerSensor(I)V
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$500(Lcom/sec/factory/app/ui/UIOrientation;I)V

    .line 357
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mOrientationStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2300(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    if-ne v1, v6, :cond_492

    .line 358
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mHandler-handleMessage"

    const-string v3, "CP - LANDSCAPE_MODE_RIGHT"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    invoke-virtual {v1, v7}, Lcom/sec/factory/app/ui/UIOrientation;->setRequestedOrientation(I)V

    .line 360
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    :cond_47a
    :goto_47a
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->WHAT_CP_START:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2600(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/factory/app/ui/UIOrientation$1;->sendEmptyMessageDelayed(IJ)Z

    .line 373
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    const/4 v2, 0x6

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$002(Lcom/sec/factory/app/ui/UIOrientation;I)I

    goto/16 :goto_51

    .line 351
    :catch_48d
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43b

    .line 363
    .end local v0           #e:Ljava/lang/Exception;
    :cond_492
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mOrientationStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2300(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    if-ne v1, v8, :cond_47a

    .line 364
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mHandler-handleMessage"

    const-string v3, "CP - LANDSCAPE_MODE_LEFT"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    invoke-virtual {v1, v5}, Lcom/sec/factory/app/ui/UIOrientation;->setRequestedOrientation(I)V

    .line 366
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_47a

    .line 379
    :cond_4cc
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$000(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_534

    .line 380
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_Z:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$1600(Lcom/sec/factory/app/ui/UIOrientation;)Z

    move-result v1

    if-ne v1, v6, :cond_4e2

    .line 381
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_Z:Z
    invoke-static {v1, v5}, Lcom/sec/factory/app/ui/UIOrientation;->access$1602(Lcom/sec/factory/app/ui/UIOrientation;Z)Z

    .line 384
    :cond_4e2
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->startZTest30degree([Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$1700(Lcom/sec/factory/app/ui/UIOrientation;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 385
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mHandler-handleMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Z => Base : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Z:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIOrientation;->access$1200(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Curr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mAngleCurrZ:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIOrientation;->access$1800(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_4:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$2700(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v2

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->popupShow(I)V
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$200(Lcom/sec/factory/app/ui/UIOrientation;I)V

    .line 389
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1, v7}, Lcom/sec/factory/app/ui/UIOrientation;->access$002(Lcom/sec/factory/app/ui/UIOrientation;I)I

    goto/16 :goto_51

    .line 391
    :cond_534
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$000(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_51

    .line 392
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_XY:Z
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2000(Lcom/sec/factory/app/ui/UIOrientation;)Z

    move-result v1

    if-ne v1, v6, :cond_54b

    .line 393
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_XY:Z
    invoke-static {v1, v5}, Lcom/sec/factory/app/ui/UIOrientation;->access$2002(Lcom/sec/factory/app/ui/UIOrientation;Z)Z

    .line 396
    :cond_54b
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mCoordinates:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$900(Lcom/sec/factory/app/ui/UIOrientation;)[Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->startXYTest60degree([Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$2100(Lcom/sec/factory/app/ui/UIOrientation;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 397
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mHandler-handleMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X => Base : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_X:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIOrientation;->access$1300(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UIOrientation;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "mHandler-handleMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Y => Base : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->ANGLE_BASE_Y:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIOrientation;->access$1400(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1, v9}, Lcom/sec/factory/app/ui/UIOrientation;->access$002(Lcom/sec/factory/app/ui/UIOrientation;I)I

    .line 401
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->controlAccelerometerSensor(I)V
    invoke-static {v1, v8}, Lcom/sec/factory/app/ui/UIOrientation;->access$500(Lcom/sec/factory/app/ui/UIOrientation;I)V

    .line 403
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mOrientationStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2300(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    if-ne v1, v6, :cond_5e7

    .line 404
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    invoke-virtual {v1, v7}, Lcom/sec/factory/app/ui/UIOrientation;->setRequestedOrientation(I)V

    .line 405
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    :cond_5d5
    :goto_5d5
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->WHAT_EXIT:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2500(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/factory/app/ui/UIOrientation$1;->sendEmptyMessageDelayed(IJ)Z

    .line 415
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->FLAG_TEST_EXIT:Z
    invoke-static {v1, v5}, Lcom/sec/factory/app/ui/UIOrientation;->access$402(Lcom/sec/factory/app/ui/UIOrientation;Z)Z

    goto/16 :goto_51

    .line 408
    :cond_5e7
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mOrientationStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2300(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    if-ne v1, v8, :cond_5d5

    .line 409
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    invoke-virtual {v1, v5}, Lcom/sec/factory/app/ui/UIOrientation;->setRequestedOrientation(I)V

    .line 410
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mlinear:[Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$2400(Lcom/sec/factory/app/ui/UIOrientation;)[Landroid/widget/LinearLayout;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5d5

    .line 420
    :cond_616
    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->WHAT_FIRST:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$600(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v2

    if-ne v1, v2, :cond_632

    .line 421
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_1:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$2800(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v2

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->popupShow(I)V
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$200(Lcom/sec/factory/app/ui/UIOrientation;I)V

    .line 422
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->first_popup:Z
    invoke-static {v1, v6}, Lcom/sec/factory/app/ui/UIOrientation;->access$2902(Lcom/sec/factory/app/ui/UIOrientation;Z)Z

    goto/16 :goto_51

    .line 423
    :cond_632
    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->WHAT_EXIT:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$2500(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v2

    if-ne v1, v2, :cond_651

    .line 424
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->mStatus:I
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$000(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v1

    if-ne v1, v9, :cond_51

    .line 425
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->setResult(I)V

    .line 426
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    invoke-virtual {v1}, Lcom/sec/factory/app/ui/UIOrientation;->finish()V

    goto/16 :goto_51

    .line 430
    :cond_651
    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->WHAT_CP_START:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$2600(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v2

    if-ne v1, v2, :cond_51

    .line 431
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->setResumeOrientation()V
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIOrientation;->access$3000(Lcom/sec/factory/app/ui/UIOrientation;)V

    .line 433
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_Z:Z
    invoke-static {v1, v6}, Lcom/sec/factory/app/ui/UIOrientation;->access$1602(Lcom/sec/factory/app/ui/UIOrientation;Z)Z

    .line 434
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->POPUP_FLAG_TEST_XY:Z
    invoke-static {v1, v6}, Lcom/sec/factory/app/ui/UIOrientation;->access$2002(Lcom/sec/factory/app/ui/UIOrientation;Z)Z

    .line 435
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    iget-object v2, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #getter for: Lcom/sec/factory/app/ui/UIOrientation;->MESSAGE_TYPE_3:I
    invoke-static {v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$3100(Lcom/sec/factory/app/ui/UIOrientation;)I

    move-result v2

    #calls: Lcom/sec/factory/app/ui/UIOrientation;->popupShow(I)V
    invoke-static {v1, v2}, Lcom/sec/factory/app/ui/UIOrientation;->access$200(Lcom/sec/factory/app/ui/UIOrientation;I)V

    .line 436
    iget-object v1, p0, Lcom/sec/factory/app/ui/UIOrientation$1;->this$0:Lcom/sec/factory/app/ui/UIOrientation;

    #setter for: Lcom/sec/factory/app/ui/UIOrientation;->first_popup:Z
    invoke-static {v1, v6}, Lcom/sec/factory/app/ui/UIOrientation;->access$2902(Lcom/sec/factory/app/ui/UIOrientation;Z)Z

    goto/16 :goto_51
.end method
