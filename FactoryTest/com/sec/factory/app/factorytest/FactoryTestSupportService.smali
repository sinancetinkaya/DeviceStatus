.class public Lcom/sec/factory/app/factorytest/FactoryTestSupportService;
.super Landroid/app/Service;
.source "FactoryTestSupportService.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mTelePhony:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 58
    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mAudioManager:Landroid/media/AudioManager;

    .line 144
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestSupportService$1;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestSupportService;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 166
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService$2;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestSupportService$2;-><init>(Lcom/sec/factory/app/factorytest/FactoryTestSupportService;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/factorytest/FactoryTestSupportService;C)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->updateDetectedItem(C)V

    return-void
.end method

.method private upDateNVAPO(C)V
    .registers 5
    .parameter "id"

    .prologue
    .line 251
    const-string v0, "FactoryTestSupportService"

    const-string v1, "upDateNVAPO"

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    int-to-byte v0, p1

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/sec/factory/support/NVAccessor;->setNV(BB)V

    .line 253
    return-void
.end method

.method private upDateNVCPO(C)V
    .registers 5
    .parameter "id"

    .prologue
    .line 242
    const-string v0, "FactoryTestSupportService"

    const-string v1, "upDateNVCPO"

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-nez v0, :cond_1b

    .line 244
    new-instance v0, Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 245
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->bindSecPhoneService()V

    .line 247
    :cond_1b
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    int-to-byte v1, p1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->updateNVItem(BB)V

    .line 248
    return-void
.end method

.method private updateDetectedItem(C)V
    .registers 4
    .parameter "id"

    .prologue
    .line 214
    sparse-switch p1, :sswitch_data_12

    .line 231
    :goto_3
    return-void

    .line 221
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->updateNV(C)V

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.factory.app.factorytest.CALL_CONNECTION_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 214
    :sswitch_data_12
    .sparse-switch
        0x1d -> :sswitch_4
        0x37 -> :sswitch_4
    .end sparse-switch
.end method

.method private updateNV(C)V
    .registers 4
    .parameter "id"

    .prologue
    .line 234
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 235
    invoke-direct {p0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->upDateNVAPO(C)V

    .line 239
    :goto_a
    return-void

    .line 237
    :cond_b
    invoke-direct {p0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->upDateNVCPO(C)V

    goto :goto_a
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 66
    const-string v0, "FactoryTestSupportService"

    const-string v1, "onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mTelePhony:Landroid/telephony/TelephonyManager;

    .line 77
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mTelePhony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 85
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/factory/app/factorytest/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 88
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 262
    const-string v0, "FactoryTestSupportService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mTelePhony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 266
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    if-eqz v0, :cond_1b

    .line 267
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->unbindSecPhoneService()V

    .line 268
    iput-object v3, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mFactoryPhone:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    .line 270
    :cond_1b
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/factory/app/factorytest/FactoryTestSupportService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/factory/app/factorytest/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 272
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 257
    const-string v0, "FactoryTestSupportService"

    const-string v1, "onStartCommand"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    return v0
.end method
