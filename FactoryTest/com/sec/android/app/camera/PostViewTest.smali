.class public Lcom/sec/android/app/camera/PostViewTest;
.super Landroid/app/Activity;
.source "PostViewTest.java"


# instance fields
.field private mCameraBitmap:[Landroid/graphics/Bitmap;

.field private mFilePathMainCam:Ljava/lang/String;

.field private mFilePathSubCam:Ljava/lang/String;

.field private mFrontDisplayed:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mRearDisplayed:Z

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mCameraBitmap:[Landroid/graphics/Bitmap;

    .line 35
    iput-boolean v1, p0, Lcom/sec/android/app/camera/PostViewTest;->mRearDisplayed:Z

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/app/camera/PostViewTest;->mFrontDisplayed:Z

    .line 41
    return-void
.end method

.method private displayImage(I)V
    .registers 7
    .parameter "cameraType"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 166
    const-string v0, "PostViewTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayImage cameraType:%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-nez p1, :cond_37

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2e

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PostViewTest;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    :goto_2b
    iput-boolean v3, p0, Lcom/sec/android/app/camera/PostViewTest;->mRearDisplayed:Z

    .line 184
    :goto_2d
    return-void

    .line 172
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mImageView:Landroid/widget/ImageView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_2b

    .line 177
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-eqz v0, :cond_49

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PostViewTest;->mCameraBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    :goto_46
    iput-boolean v3, p0, Lcom/sec/android/app/camera/PostViewTest;->mFrontDisplayed:Z

    goto :goto_2d

    .line 180
    :cond_49
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mImageView:Landroid/widget/ImageView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_46
.end method

.method private getImage(I)V
    .registers 13
    .parameter "cameraType"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 130
    const-string v2, "PostViewTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImage cameraType:%d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/sec/android/app/camera/CameraStorage;->getInstance()Lcom/sec/android/app/camera/CameraStorage;

    move-result-object v7

    .line 133
    .local v7, cs:Lcom/sec/android/app/camera/CameraStorage;
    if-nez p1, :cond_76

    .line 135
    invoke-virtual {v7, v1}, Lcom/sec/android/app/camera/CameraStorage;->getFilePath(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/PostViewTest;->mFilePathMainCam:Ljava/lang/String;

    .line 136
    iget-object v2, p0, Lcom/sec/android/app/camera/PostViewTest;->mFilePathMainCam:Ljava/lang/String;

    if-eqz v2, :cond_6a

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/camera/PostViewTest;->mFilePathMainCam:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 137
    const-string v2, "SIMPLE_TEST_MEGACAM_SCALE_VALUE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$TestCase;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 138
    .local v9, sampleSize:I
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 139
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/camera/PostViewTest;->mFilePathMainCam:Ljava/lang/String;

    invoke-static {v2, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 142
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x42b4

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 143
    iget-object v10, p0, Lcom/sec/android/app/camera/PostViewTest;->mCameraBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v10, v1

    .line 163
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #sampleSize:I
    :cond_69
    :goto_69
    return-void

    .line 146
    :cond_6a
    iget-object v1, p0, Lcom/sec/android/app/camera/PostViewTest;->mFilePathMainCam:Ljava/lang/String;

    if-nez v1, :cond_69

    .line 147
    const-string v1, "PostViewTest"

    const-string v2, "mFilePathMainCam is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 151
    :cond_76
    invoke-virtual {v7, v6}, Lcom/sec/android/app/camera/CameraStorage;->getFilePath(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/PostViewTest;->mFilePathSubCam:Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lcom/sec/android/app/camera/PostViewTest;->mFilePathSubCam:Ljava/lang/String;

    if-eqz v2, :cond_b6

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/camera/PostViewTest;->mFilePathSubCam:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/camera/PostViewTest;->mFilePathSubCam:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 155
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    const/high16 v2, 0x4387

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 156
    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 157
    iget-object v10, p0, Lcom/sec/android/app/camera/PostViewTest;->mCameraBitmap:[Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v10, v6

    goto :goto_69

    .line 159
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_b6
    iget-object v1, p0, Lcom/sec/android/app/camera/PostViewTest;->mFilePathSubCam:Ljava/lang/String;

    if-nez v1, :cond_69

    .line 160
    const-string v1, "PostViewTest"

    const-string v2, "mFilePathSubCam is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method

.method private initialize()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 121
    const-string v0, "PostViewTest"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/PostViewTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mImageView:Landroid/widget/ImageView;

    .line 125
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/PostViewTest;->getImage(I)V

    .line 126
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/PostViewTest;->displayImage(I)V

    .line 127
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string v1, "PostViewTest"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/PostViewTest;->setContentView(I)V

    .line 50
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/PostViewTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 51
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "PostViewTest"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/PostViewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 55
    iget-object v1, p0, Lcom/sec/android/app/camera/PostViewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/PostViewTest;->initialize()V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 83
    const-string v0, "PostViewTest"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 89
    :cond_14
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 93
    packed-switch p1, :pswitch_data_2a

    .line 107
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_9
    :goto_9
    return v1

    .line 95
    :pswitch_a
    iget-boolean v2, p0, Lcom/sec/android/app/camera/PostViewTest;->mRearDisplayed:Z

    if-eqz v2, :cond_17

    .line 96
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/PostViewTest;->getImage(I)V

    .line 97
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/PostViewTest;->displayImage(I)V

    .line 98
    iput-boolean v3, p0, Lcom/sec/android/app/camera/PostViewTest;->mRearDisplayed:Z

    goto :goto_9

    .line 99
    :cond_17
    iget-boolean v2, p0, Lcom/sec/android/app/camera/PostViewTest;->mFrontDisplayed:Z

    if-eqz v2, :cond_9

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PostViewTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/PostViewTest;->setResult(ILandroid/content/Intent;)V

    .line 102
    iput-boolean v3, p0, Lcom/sec/android/app/camera/PostViewTest;->mFrontDisplayed:Z

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PostViewTest;->finish()V

    goto :goto_9

    .line 93
    nop

    :pswitch_data_2a
    .packed-switch 0x19
        :pswitch_a
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 111
    packed-switch p1, :pswitch_data_a

    .line 117
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :pswitch_8
    return v0

    .line 111
    nop

    :pswitch_data_a
    .packed-switch 0x18
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 72
    const-string v0, "PostViewTest"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 78
    :cond_14
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 79
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 61
    const-string v0, "PostViewTest"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 66
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/PostViewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    return-void
.end method
