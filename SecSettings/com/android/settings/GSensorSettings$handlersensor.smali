.class Lcom/android/settings/GSensorSettings$handlersensor;
.super Ljava/lang/Object;
.source "GSensorSettings.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "handlersensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings/GSensorSettings$handlersensor;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$handlersensor;-><init>(Lcom/android/settings/GSensorSettings;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 212
    :cond_7
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 215
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_a

    .line 224
    :pswitch_9
    return-void

    .line 215
    :pswitch_data_a
    .packed-switch 0x4
        :pswitch_9
    .end packed-switch
.end method
