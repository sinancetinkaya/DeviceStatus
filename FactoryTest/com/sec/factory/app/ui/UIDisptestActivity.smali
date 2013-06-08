.class public Lcom/sec/factory/app/ui/UIDisptestActivity;
.super Landroid/app/Activity;
.source "UIDisptestActivity.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initSetting()V
    .registers 3

    .prologue
    .line 127
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/ui/UIDisptestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIDisptestActivity;->mImageView:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIDisptestActivity;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 129
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIDisptestActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 130
    return-void
.end method

.method private performRequest(II)V
    .registers 11
    .parameter "testtype"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 64
    packed-switch p1, :pswitch_data_b8

    .line 112
    :cond_5
    :goto_5
    return-void

    .line 66
    :pswitch_6
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIDisptestActivity;->mImageView:Landroid/widget/ImageView;

    const/high16 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_5

    .line 69
    :pswitch_e
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIDisptestActivity;->mImageView:Landroid/widget/ImageView;

    const v5, -0xff0100

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_5

    .line 72
    :pswitch_17
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIDisptestActivity;->mImageView:Landroid/widget/ImageView;

    const v5, -0xffff01

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_5

    .line 75
    :pswitch_20
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIDisptestActivity;->mImageView:Landroid/widget/ImageView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_5

    .line 78
    :pswitch_27
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIDisptestActivity;->mImageView:Landroid/widget/ImageView;

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_5

    .line 81
    :pswitch_2f
    invoke-static {p0}, Lcom/sec/factory/modules/ModuleDevice;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v3

    .line 82
    .local v3, mdevice:Lcom/sec/factory/modules/ModuleDevice;
    const/4 v0, -0x1

    .line 83
    .local v0, brightness:I
    const-string v2, ""

    .line 84
    .local v2, filepath:Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 85
    invoke-virtual {v3, v5}, Lcom/sec/factory/modules/ModuleDevice;->getStoragePath(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    :goto_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".bmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v4, "UIDisptestActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filepath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, dispfile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 95
    const-string v4, "UIDisptestActivity"

    const-string v5, "Create image from src"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, v2}, Lcom/sec/factory/app/ui/UIDisptestActivity;->readImageFromMemory(Ljava/lang/String;)V

    .line 97
    if-nez p2, :cond_a2

    const/16 v0, 0x1e

    .line 98
    :goto_8e
    invoke-static {p0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/factory/modules/ModulePower;->setBrightness(I)V

    goto/16 :goto_5

    .line 86
    .end local v1           #dispfile:Ljava/io/File;
    :cond_97
    invoke-virtual {v3, v7}, Lcom/sec/factory/modules/ModuleDevice;->isMountedStorage(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 87
    invoke-virtual {v3, v7}, Lcom/sec/factory/modules/ModuleDevice;->getStoragePath(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_40

    .line 97
    .restart local v1       #dispfile:Ljava/io/File;
    :cond_a2
    const/16 v0, 0xff

    goto :goto_8e

    .line 100
    :cond_a5
    const-string v4, "UIDisptestActivity"

    const-string v5, "File does not exist!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v4, "File not found!"

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 64
    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_17
        :pswitch_20
        :pswitch_27
        :pswitch_2f
    .end packed-switch
.end method

.method private readImageFromMemory(Ljava/lang/String;)V
    .registers 9
    .parameter "filepath"

    .prologue
    .line 133
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/sec/factory/app/ui/UIDisptestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 135
    .local v1, mDisplay:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 136
    .local v2, outpoint:Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 137
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 139
    .local v3, sizeScaledBitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/factory/app/ui/UIDisptestActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "arg0"

    .prologue
    const/4 v4, -0x1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v2, 0x7f03000e

    invoke-virtual {p0, v2}, Lcom/sec/factory/app/ui/UIDisptestActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UIDisptestActivity;->initSetting()V

    .line 57
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIDisptestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "VALUE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, value:I
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UIDisptestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TEST_TYPE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, testType:I
    const-string v2, "UIDisptestActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIDisptestActivity;->performRequest(II)V

    .line 61
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 118
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    return-void
.end method
