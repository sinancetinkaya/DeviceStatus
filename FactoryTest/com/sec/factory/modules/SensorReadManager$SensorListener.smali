.class Lcom/sec/factory/modules/SensorReadManager$SensorListener;
.super Ljava/lang/Object;
.source "SensorReadManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/SensorReadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/SensorReadManager;


# direct methods
.method private constructor <init>(Lcom/sec/factory/modules/SensorReadManager;)V
    .registers 2
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sec/factory/modules/SensorReadManager$SensorListener;->this$0:Lcom/sec/factory/modules/SensorReadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/factory/modules/SensorReadManager;Lcom/sec/factory/modules/SensorReadManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/SensorReadManager$SensorListener;-><init>(Lcom/sec/factory/modules/SensorReadManager;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 289
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 292
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_7a

    .line 318
    :goto_9
    :pswitch_9
    return-void

    .line 294
    :pswitch_a
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadManager$SensorListener;->this$0:Lcom/sec/factory/modules/SensorReadManager;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    #setter for: Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Accelerometer:[F
    invoke-static {v1, v0}, Lcom/sec/factory/modules/SensorReadManager;->access$102(Lcom/sec/factory/modules/SensorReadManager;[F)[F

    goto :goto_9

    .line 297
    :pswitch_18
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadManager$SensorListener;->this$0:Lcom/sec/factory/modules/SensorReadManager;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    #setter for: Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Barometer:[F
    invoke-static {v1, v0}, Lcom/sec/factory/modules/SensorReadManager;->access$202(Lcom/sec/factory/modules/SensorReadManager;[F)[F

    goto :goto_9

    .line 300
    :pswitch_26
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadManager$SensorListener;->this$0:Lcom/sec/factory/modules/SensorReadManager;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    #setter for: Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Gyro:[F
    invoke-static {v1, v0}, Lcom/sec/factory/modules/SensorReadManager;->access$302(Lcom/sec/factory/modules/SensorReadManager;[F)[F

    goto :goto_9

    .line 303
    :pswitch_34
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadManager$SensorListener;->this$0:Lcom/sec/factory/modules/SensorReadManager;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    #setter for: Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Light:[F
    invoke-static {v1, v0}, Lcom/sec/factory/modules/SensorReadManager;->access$402(Lcom/sec/factory/modules/SensorReadManager;[F)[F

    goto :goto_9

    .line 306
    :pswitch_42
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadManager$SensorListener;->this$0:Lcom/sec/factory/modules/SensorReadManager;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    #setter for: Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Magnetic:[F
    invoke-static {v1, v0}, Lcom/sec/factory/modules/SensorReadManager;->access$502(Lcom/sec/factory/modules/SensorReadManager;[F)[F

    goto :goto_9

    .line 309
    :pswitch_50
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadManager$SensorListener;->this$0:Lcom/sec/factory/modules/SensorReadManager;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    #setter for: Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Proximity:[F
    invoke-static {v1, v0}, Lcom/sec/factory/modules/SensorReadManager;->access$602(Lcom/sec/factory/modules/SensorReadManager;[F)[F

    goto :goto_9

    .line 312
    :pswitch_5e
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadManager$SensorListener;->this$0:Lcom/sec/factory/modules/SensorReadManager;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    #setter for: Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Temperature:[F
    invoke-static {v1, v0}, Lcom/sec/factory/modules/SensorReadManager;->access$702(Lcom/sec/factory/modules/SensorReadManager;[F)[F

    goto :goto_9

    .line 315
    :pswitch_6c
    iget-object v1, p0, Lcom/sec/factory/modules/SensorReadManager$SensorListener;->this$0:Lcom/sec/factory/modules/SensorReadManager;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    #setter for: Lcom/sec/factory/modules/SensorReadManager;->mBuffer_SensorValue_Humidity:[F
    invoke-static {v1, v0}, Lcom/sec/factory/modules/SensorReadManager;->access$802(Lcom/sec/factory/modules/SensorReadManager;[F)[F

    goto :goto_9

    .line 292
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_a
        :pswitch_42
        :pswitch_9
        :pswitch_26
        :pswitch_34
        :pswitch_18
        :pswitch_9
        :pswitch_50
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_6c
        :pswitch_5e
    .end packed-switch
.end method
