.class Lcom/sec/factory/app/ui/UISensorHub$1;
.super Landroid/os/Handler;
.source "UISensorHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISensorHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISensorHub;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISensorHub;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1b4

    .line 118
    :goto_8
    return-void

    .line 62
    :pswitch_9
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler()"

    const-string v2, "Display SensorHub Info()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #calls: Lcom/sec/factory/app/ui/UISensorHub;->getMcuFirmware()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISensorHub;->access$000(Lcom/sec/factory/app/ui/UISensorHub;)V

    .line 64
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #calls: Lcom/sec/factory/app/ui/UISensorHub;->getBinFirmware()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISensorHub;->access$100(Lcom/sec/factory/app/ui/UISensorHub;)V

    .line 66
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler()"

    const-string v2, "Start SensorHub SelfTest"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/sec/factory/app/ui/UISensorHub;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v0, v4}, Lcom/sec/factory/modules/ModulePower;->doPartialWakeLock(Z)V

    .line 71
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    iget-boolean v0, v0, Lcom/sec/factory/app/ui/UISensorHub;->isFactoryMode:Z

    if-eqz v0, :cond_4f

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.STOP_FACTORY_TEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    invoke-virtual {v1}, Lcom/sec/factory/app/ui/UISensorHub;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "handleCommand"

    const-string v2, "AlarmManager Enable"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_4f
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #getter for: Lcom/sec/factory/app/ui/UISensorHub;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISensorHub;->access$200(Lcom/sec/factory/app/ui/UISensorHub;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->startSensorHubTest()V

    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    invoke-virtual {v1}, Lcom/sec/factory/app/ui/UISensorHub;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/factory/aporiented/WakeUpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string v1, "com.sec.factory.aporiented.athandler.AtSensorHb.WakeUp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "isAcquireWakelock"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    invoke-virtual {v1}, Lcom/sec/factory/app/ui/UISensorHub;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 82
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISensorHub;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 85
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #getter for: Lcom/sec/factory/app/ui/UISensorHub;->mPM:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISensorHub;->access$300(Lcom/sec/factory/app/ui/UISensorHub;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_8

    .line 89
    :pswitch_a0
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler()"

    const-string v2, "WakeUp device"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    iget-boolean v0, v0, Lcom/sec/factory/app/ui/UISensorHub;->isFactoryMode:Z

    if-eqz v0, :cond_cc

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_FACTORY_TEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    invoke-virtual {v1}, Lcom/sec/factory/app/ui/UISensorHub;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "handleCommand"

    const-string v2, "AlarmManager disable"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_cc
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #getter for: Lcom/sec/factory/app/ui/UISensorHub;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISensorHub;->access$200(Lcom/sec/factory/app/ui/UISensorHub;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleDevice;->readSensorHubResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/factory/app/ui/UISensorHub;->result:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISensorHub;->access$402(Lcom/sec/factory/app/ui/UISensorHub;[Ljava/lang/String;)[Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "Result - "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MCU name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #getter for: Lcom/sec/factory/app/ui/UISensorHub;->result:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISensorHub;->access$400(Lcom/sec/factory/app/ui/UISensorHub;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  /  Selftest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #getter for: Lcom/sec/factory/app/ui/UISensorHub;->result:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISensorHub;->access$400(Lcom/sec/factory/app/ui/UISensorHub;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  /  INT pin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #getter for: Lcom/sec/factory/app/ui/UISensorHub;->result:[Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UISensorHub;->access$400(Lcom/sec/factory/app/ui/UISensorHub;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #getter for: Lcom/sec/factory/app/ui/UISensorHub;->IntCheckResult:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISensorHub;->access$500(Lcom/sec/factory/app/ui/UISensorHub;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INT Check : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #getter for: Lcom/sec/factory/app/ui/UISensorHub;->result:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISensorHub;->access$400(Lcom/sec/factory/app/ui/UISensorHub;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #getter for: Lcom/sec/factory/app/ui/UISensorHub;->McuChipName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISensorHub;->access$600(Lcom/sec/factory/app/ui/UISensorHub;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MCU name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #getter for: Lcom/sec/factory/app/ui/UISensorHub;->result:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/factory/app/ui/UISensorHub;->access$400(Lcom/sec/factory/app/ui/UISensorHub;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_171
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #getter for: Lcom/sec/factory/app/ui/UISensorHub;->mPM:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISensorHub;->access$300(Lcom/sec/factory/app/ui/UISensorHub;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_171

    .line 104
    const-wide/16 v0, 0xc8

    :try_start_17f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_182
    .catch Ljava/lang/InterruptedException; {:try_start_17f .. :try_end_182} :catch_1a8

    .line 108
    :goto_182
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISensorHub;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModulePower;->setBrightness(I)V

    .line 110
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISensorHub;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "mHandler()"

    const-string v2, "checkPassResult()"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #calls: Lcom/sec/factory/app/ui/UISensorHub;->checkPassFail()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISensorHub;->access$700(Lcom/sec/factory/app/ui/UISensorHub;)V

    .line 112
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #calls: Lcom/sec/factory/app/ui/UISensorHub;->checkPassResult()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISensorHub;->access$800(Lcom/sec/factory/app/ui/UISensorHub;)V

    goto/16 :goto_8

    .line 105
    :catch_1a8
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_182

    .line 115
    :pswitch_1ad
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$1;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISensorHub;->finish()V

    goto/16 :goto_8

    .line 60
    :pswitch_data_1b4
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a0
        :pswitch_1ad
    .end packed-switch
.end method
