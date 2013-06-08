.class public Lcom/sec/android/app/camera/framework/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mFocusMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/sec/android/app/camera/framework/CameraSettings;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method public static getSupportedAutofocus()Z
    .registers 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public static hasFlash()Z
    .registers 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public static hasZoom(I)Z
    .registers 3
    .parameter "camera_id"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    if-nez p0, :cond_5

    .line 145
    :goto_4
    return v0

    .line 142
    :cond_5
    if-ne v0, p0, :cond_9

    move v0, v1

    .line 143
    goto :goto_4

    :cond_9
    move v0, v1

    .line 145
    goto :goto_4
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .registers 4
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 220
    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static needToCheckCamcorderPreviewTest()Z
    .registers 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public static needToCheckDTP(I)Z
    .registers 3
    .parameter "camera_id"

    .prologue
    const/4 v1, 0x1

    .line 150
    const/4 v0, 0x1

    .line 151
    .local v0, data_output:I
    if-nez p0, :cond_9

    .line 152
    const/4 v0, 0x1

    .line 157
    :cond_5
    :goto_5
    if-ne v0, v1, :cond_8

    .line 158
    const/4 v1, 0x0

    .line 160
    :cond_8
    return v1

    .line 153
    :cond_9
    if-ne p0, v1, :cond_5

    .line 154
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public getFocusMode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/framework/CameraSettings;->mFocusMode:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportedFocusModes(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, focusmodes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/framework/CameraSettings;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 239
    const/4 v0, 0x1

    .line 243
    :goto_7
    return v0

    .line 241
    :cond_8
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSupportedFocusModes(Ljava/util/List;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, focusmodes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 224
    const-string v1, "auto"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/framework/CameraSettings;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 225
    const-string v1, "auto"

    iput-object v1, p0, Lcom/sec/android/app/camera/framework/CameraSettings;->mFocusMode:Ljava/lang/String;

    .line 234
    :goto_d
    return v0

    .line 227
    :cond_e
    const-string v1, "fixed"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/framework/CameraSettings;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 228
    const-string v1, "fixed"

    iput-object v1, p0, Lcom/sec/android/app/camera/framework/CameraSettings;->mFocusMode:Ljava/lang/String;

    goto :goto_d

    .line 230
    :cond_1b
    const-string v1, "infinity"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/framework/CameraSettings;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 231
    const-string v1, "infinity"

    iput-object v1, p0, Lcom/sec/android/app/camera/framework/CameraSettings;->mFocusMode:Ljava/lang/String;

    goto :goto_d

    .line 234
    :cond_28
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setPictureSize(ILandroid/hardware/Camera$Parameters;)V
    .registers 11
    .parameter "camera_id"
    .parameter "parameters"

    .prologue
    .line 173
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 174
    .local v3, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v3, :cond_19

    .line 175
    const/4 v5, 0x1

    if-ne p1, v5, :cond_11

    .line 176
    const-string v5, "picture-size"

    const-string v6, "640x480"

    invoke-virtual {p2, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_10
    return-void

    .line 178
    :cond_11
    const-string v5, "picture-size"

    const-string v6, "640x480"

    invoke-virtual {p2, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 181
    :cond_19
    const/4 v4, 0x0

    .line 182
    .local v4, width:I
    const/4 v0, 0x0

    .line 183
    .local v0, height:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 184
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    mul-int v6, v4, v0

    if-le v5, v6, :cond_1f

    .line 185
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    .line 186
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_1f

    .line 189
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_39
    const-string v5, "CameraSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPictureSize - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p2, v4, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_10
.end method
