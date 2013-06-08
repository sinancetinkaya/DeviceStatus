.class public Lcom/sec/factory/app/ui/UISimple;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UISimple.java"


# instance fields
.field private final FINISH_BLACK_VIBRATE_TEST:I

.field private final FINISH_FRONT_CAMERA_TEST:I

.field private final FINISH_ORIENTATION_TEST:I

.field private final FINISH_REAR_CAMERA_TEST:I

.field private final FINISH_VIBRATE_TEST:I

.field private final KEY_FRONT_PHOTO_PATH:Ljava/lang/String;

.field private final KEY_PHOTO_PATH:Ljava/lang/String;

.field private final KEY_REAR_PHOTO_PATH:Ljava/lang/String;

.field private final REQUEST_BLACK_VIBRATE_TEST:I

.field private final REQUEST_FRONT_CAMERA_TEST:I

.field private final REQUEST_ORIENTATION_TEST:I

.field private final REQUEST_REAR_CAMERA_TEST:I

.field private final REQUEST_VIBRATE_TEST:I

.field private mFrontCameraPhotoPath:Ljava/lang/String;

.field private mRearCameraPhotoPath:Ljava/lang/String;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mTestCase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    const-string v0, "UISimple"

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 19
    iput v1, p0, Lcom/sec/factory/app/ui/UISimple;->REQUEST_BLACK_VIBRATE_TEST:I

    .line 20
    iput v2, p0, Lcom/sec/factory/app/ui/UISimple;->REQUEST_VIBRATE_TEST:I

    .line 21
    iput v3, p0, Lcom/sec/factory/app/ui/UISimple;->REQUEST_REAR_CAMERA_TEST:I

    .line 22
    iput v4, p0, Lcom/sec/factory/app/ui/UISimple;->REQUEST_FRONT_CAMERA_TEST:I

    .line 23
    iput v5, p0, Lcom/sec/factory/app/ui/UISimple;->REQUEST_ORIENTATION_TEST:I

    .line 24
    iput v1, p0, Lcom/sec/factory/app/ui/UISimple;->FINISH_BLACK_VIBRATE_TEST:I

    .line 25
    iput v2, p0, Lcom/sec/factory/app/ui/UISimple;->FINISH_VIBRATE_TEST:I

    .line 26
    iput v3, p0, Lcom/sec/factory/app/ui/UISimple;->FINISH_REAR_CAMERA_TEST:I

    .line 27
    iput v4, p0, Lcom/sec/factory/app/ui/UISimple;->FINISH_FRONT_CAMERA_TEST:I

    .line 28
    iput v5, p0, Lcom/sec/factory/app/ui/UISimple;->FINISH_ORIENTATION_TEST:I

    .line 30
    const-string v0, "data_filepath"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->KEY_PHOTO_PATH:Ljava/lang/String;

    .line 31
    const-string v0, "mega_filepath"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->KEY_REAR_PHOTO_PATH:Ljava/lang/String;

    .line 32
    const-string v0, "vga_filepath"

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->KEY_FRONT_PHOTO_PATH:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/sec/factory/app/ui/UISimple$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/ui/UISimple$1;-><init>(Lcom/sec/factory/app/ui/UISimple;)V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    return-void
.end method

.method private finishKeyCode()V
    .registers 3

    .prologue
    .line 200
    iget v1, p0, Lcom/sec/factory/app/ui/UISimple;->TEST_ID:I

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemPosition_ID(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemResult(I)B

    move-result v0

    .line 208
    .local v0, nvValue:B
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISimple;->finish()V

    .line 209
    return-void
.end method

.method private start(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 151
    packed-switch p1, :pswitch_data_c6

    .line 193
    :cond_5
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISimple;->setTestResult(B)V

    .line 194
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISimple;->finish()V

    .line 197
    :goto_d
    return-void

    .line 153
    :pswitch_e
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    const-string v1, "MOTOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    const-string v1, "LED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    const-string v1, "RGB_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 155
    :cond_2c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UILedTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/factory/app/ui/UISimple;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 161
    :cond_37
    :pswitch_37
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    const-string v1, "MOTOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    const-string v1, "LED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    const-string v1, "RGB_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 163
    :cond_55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UIVibrate;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/sec/factory/app/ui/UISimple;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 169
    :cond_60
    :pswitch_60
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    const-string v1, "REAR_CAM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const-string v1, "camera_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UISimple;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 177
    :cond_80
    :pswitch_80
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    const-string v1, "FRONT_CAM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const-string v1, "camera_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UISimple;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 185
    :cond_a1
    :pswitch_a1
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    const-string v1, "ORIEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/factory/app/ui/UIOrientation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const-string v1, "mega_filepath"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISimple;->mRearCameraPhotoPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "vga_filepath"

    iget-object v2, p0, Lcom/sec/factory/app/ui/UISimple;->mFrontCameraPhotoPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/sec/factory/app/ui/UISimple;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 151
    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_e
        :pswitch_37
        :pswitch_60
        :pswitch_80
        :pswitch_a1
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/sec/factory/app/ui/UIBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    packed-switch p1, :pswitch_data_76

    .line 147
    :goto_8
    return-void

    .line 99
    :pswitch_9
    if-ne p2, v1, :cond_10

    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UISimple;->start(I)V

    goto :goto_8

    .line 102
    :cond_10
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 103
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISimple;->finishKeyCode()V

    goto :goto_8

    .line 107
    :pswitch_1b
    if-ne p2, v1, :cond_22

    .line 108
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UISimple;->start(I)V

    goto :goto_8

    .line 110
    :cond_22
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 111
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISimple;->finishKeyCode()V

    goto :goto_8

    .line 115
    :pswitch_2d
    if-eqz p3, :cond_42

    .line 116
    const-string v0, "data_filepath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mRearCameraPhotoPath:Ljava/lang/String;

    .line 119
    :goto_37
    if-ne p2, v1, :cond_45

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mRearCameraPhotoPath:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 120
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UISimple;->start(I)V

    goto :goto_8

    .line 118
    :cond_42
    iput-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mRearCameraPhotoPath:Ljava/lang/String;

    goto :goto_37

    .line 122
    :cond_45
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISimple;->finishKeyCode()V

    goto :goto_8

    .line 126
    :pswitch_49
    if-eqz p3, :cond_5e

    .line 127
    const-string v0, "data_filepath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mFrontCameraPhotoPath:Ljava/lang/String;

    .line 130
    :goto_53
    if-ne p2, v1, :cond_61

    iget-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mFrontCameraPhotoPath:Ljava/lang/String;

    if-eqz v0, :cond_61

    .line 131
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/factory/app/ui/UISimple;->start(I)V

    goto :goto_8

    .line 129
    :cond_5e
    iput-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mFrontCameraPhotoPath:Ljava/lang/String;

    goto :goto_53

    .line 133
    :cond_61
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISimple;->finishKeyCode()V

    goto :goto_8

    .line 139
    :pswitch_65
    if-ne p2, v1, :cond_70

    .line 140
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISimple;->setTestResult(B)V

    .line 144
    :goto_6c
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISimple;->finish()V

    goto :goto_8

    .line 142
    :cond_70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISimple;->setTestResultFailCase(B)V

    goto :goto_6c

    .line 97
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1b
        :pswitch_2d
        :pswitch_49
        :pswitch_65
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x2e

    const/4 v7, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISimple;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "requestCode"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    .line 65
    .local v2, test_id:B
    if-ne v4, v2, :cond_39

    .line 66
    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UISimple;->setTestId(I)V

    .line 67
    invoke-static {v4}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->convertorID_XML(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getTestCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    .line 69
    const-string v3, "UISimple"

    const-string v4, "onCreate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Act as LCD TEST, TEST_ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_39
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v1, mFilter:Landroid/content/IntentFilter;
    const-string v3, "com.android.samsungtest.CAMERA_GOOD"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v3, "com.android.samsungtest.CAMERA_BAD"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISimple;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sec/factory/app/ui/UISimple;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    iget-object v3, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    const-string v4, "LED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 78
    invoke-direct {p0, v7}, Lcom/sec/factory/app/ui/UISimple;->start(I)V

    .line 84
    :goto_5a
    const-string v3, "UISimple"

    const-string v4, "onCreate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Test case : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/app/ui/UISimple;->mTestCase:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void

    .line 80
    :cond_77
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sec/factory/app/ui/UISimple;->start(I)V

    goto :goto_5a
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISimple;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UISimple;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    return-void
.end method
