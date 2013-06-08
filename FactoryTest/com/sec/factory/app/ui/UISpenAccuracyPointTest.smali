.class public Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;
.super Lcom/sec/factory/app/ui/UIBase;
.source "UISpenAccuracyPointTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;
    }
.end annotation


# instance fields
.field private EDGE_NUM_X:I

.field private EDGE_NUM_Y:I

.field private NUMBER_OF_CIRCLES:I

.field private SIZE_CENTER_CIRCLE:I

.field private SIZE_MARGIN:I

.field private SIZE_OUT_CIRCLE:I

.field private SIZE_X:F

.field private SIZE_Y:F

.field private circleView:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;

.field private closerEdgeX:F

.field private closerEdgeY:F

.field delta_Distance:F

.field delta_Distance_MAX:F

.field delta_subtractionX:F

.field delta_subtractionX_MAX:F

.field delta_subtractionY:F

.field delta_subtractionY_MAX:F

.field private edgeArray_X:[F

.field private edgeArray_Y:[F

.field private edgeX:F

.field private edgeY:F

.field private mCloserEdgePaint:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private mIsClicked:[Z

.field private mIsPassFlag:Z

.field private mIsTablet:Z

.field private mIsWacom:Z

.field private mOldHoveringSetting:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    const-string v0, "UISpenAccuracyPointTest"

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIBase;-><init>(Ljava/lang/String;I)V

    .line 69
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->NUMBER_OF_CIRCLES:I

    .line 70
    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_OUT_CIRCLE:I

    .line 71
    iput v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_CENTER_CIRCLE:I

    .line 72
    iput v5, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_MARGIN:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsWacom:Z

    .line 76
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsPassFlag:Z

    .line 77
    iput-boolean v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsTablet:Z

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mHandler:Landroid/os/Handler;

    .line 83
    iput v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_X:I

    .line 84
    iput v4, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_Y:I

    .line 95
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_Distance:F

    .line 96
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionX:F

    .line 97
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionY:F

    .line 98
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_Distance_MAX:F

    .line 99
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionX_MAX:F

    .line 100
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->delta_subtractionY_MAX:F

    .line 101
    iput v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mOldHoveringSetting:I

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->initPoints()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_OUT_CIRCLE:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeX:F

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeX:F

    return p1
.end method

.method static synthetic access$1116(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeX:F

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeY:F

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeY:F

    return p1
.end method

.method static synthetic access$1216(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeY:F

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_X:F

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_X:F

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_Y:F

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_Y:F

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_X:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeArray_X:[F

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_Y:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeArray_Y:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_CENTER_CIRCLE:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->SIZE_MARGIN:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mCloserEdgePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mCloserEdgePaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->NUMBER_OF_CIRCLES:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsWacom:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsPassFlag:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsPassFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F

    return v0
.end method

.method static synthetic access$902(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->closerEdgeX:F

    return p1
.end method

.method private initPoints()V
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->NUMBER_OF_CIRCLES:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsClicked:[Z

    .line 246
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->circleView:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;

    if-eqz v0, :cond_f

    .line 247
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->circleView:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;->invalidate()V

    .line 249
    :cond_f
    return-void
.end method

.method private initValues()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 223
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, deviceType:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 226
    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsTablet:Z

    .line 229
    :cond_12
    iget-boolean v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mIsTablet:Z

    if-eqz v1, :cond_2b

    .line 230
    const/16 v1, 0x9

    iput v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->NUMBER_OF_CIRCLES:I

    .line 231
    iput v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_X:I

    .line 232
    iput v3, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_Y:I

    .line 239
    :goto_1e
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_X:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeArray_X:[F

    .line 240
    iget v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_Y:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->edgeArray_Y:[F

    .line 241
    return-void

    .line 234
    :cond_2b
    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->NUMBER_OF_CIRCLES:I

    .line 235
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_X:I

    .line 236
    iput v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->EDGE_NUM_Y:I

    goto :goto_1e
.end method

.method private turnOffRotationFix()V
    .registers 3

    .prologue
    .line 156
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "Return S-Pen Rotation to normal setting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v0, "/sys/class/sec/sec_epen/epen_rotation"

    const-string v1, "200"

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private turnOnRotationFix()V
    .registers 3

    .prologue
    .line 151
    const-string v0, "UISpenAccuracyPointTest"

    const-string v1, "Fix S-Pen Rotation to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v0, "/sys/class/sec/sec_epen/epen_rotation"

    const-string v1, "100"

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "filepath"
    .parameter "value"

    .prologue
    .line 190
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v4, outputFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_15

    .line 193
    const-string v5, "UISpenAccuracyPointTest"

    const-string v6, "File does not exist: Create New File"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :try_start_12
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_2c

    .line 203
    :cond_15
    :goto_15
    const/4 v2, 0x0

    .line 205
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_16
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_74
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_42

    .line 206
    .end local v2           #fw:Ljava/io/FileWriter;
    .local v3, fw:Ljava/io/FileWriter;
    :try_start_1b
    invoke-virtual {v3, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 207
    const-string v5, "UISpenAccuracyPointTest"

    const-string v6, "Write Success!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_84
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_87

    .line 211
    if-eqz v3, :cond_8a

    .line 213
    :try_start_27
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_38

    move-object v2, v3

    .line 219
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :cond_2b
    :goto_2b
    return-void

    .line 196
    .end local v2           #fw:Ljava/io/FileWriter;
    :catch_2c
    move-exception v1

    .line 197
    .local v1, e1:Ljava/io/IOException;
    const-string v5, "UISpenAccuracyPointTest"

    const-string v6, "outputFile IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 214
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_38
    move-exception v0

    .line 215
    .local v0, e:Ljava/io/IOException;
    const-string v5, "UISpenAccuracyPointTest"

    const-string v6, "IOException: close()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 216
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_2b

    .line 208
    .end local v0           #e:Ljava/io/IOException;
    :catch_42
    move-exception v0

    .line 209
    .restart local v0       #e:Ljava/io/IOException;
    :goto_43
    :try_start_43
    const-string v5, "UISpenAccuracyPointTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOExceptionfilepath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_43 .. :try_end_65} :catchall_74

    .line 211
    if-eqz v2, :cond_2b

    .line 213
    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_2b

    .line 214
    :catch_6b
    move-exception v0

    .line 215
    const-string v5, "UISpenAccuracyPointTest"

    const-string v6, "IOException: close()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 211
    .end local v0           #e:Ljava/io/IOException;
    :catchall_74
    move-exception v5

    :goto_75
    if-eqz v2, :cond_7a

    .line 213
    :try_start_77
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 216
    :cond_7a
    :goto_7a
    throw v5

    .line 214
    :catch_7b
    move-exception v0

    .line 215
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "UISpenAccuracyPointTest"

    const-string v7, "IOException: close()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 211
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catchall_84
    move-exception v5

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_75

    .line 208
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_87
    move-exception v0

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_43

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :cond_8a
    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_2b
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 110
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIBase;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->initValues()V

    .line 113
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->initPoints()V

    .line 114
    new-instance v7, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;

    invoke-direct {v7, p0, p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;-><init>(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->circleView:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;

    .line 115
    iget-object v7, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->circleView:Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$CircleView;

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->setContentView(Landroid/view/View;)V

    .line 118
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 120
    .local v5, mDisplay:Landroid/view/Display;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 121
    .local v6, outpoint:Landroid/graphics/Point;
    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 122
    iget v2, v6, Landroid/graphics/Point;->x:I

    .line 123
    .local v2, Width:I
    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 125
    .local v0, Height:I
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 126
    .local v3, btn:Landroid/widget/Button;
    const-string v7, "Reset"

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .local v1, RelativeLayout:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v4, buttonParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 132
    new-instance v7, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$1;

    invoke-direct {v7, p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest$1;-><init>(Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    div-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, -0x23

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setX(F)V

    .line 142
    mul-int/lit8 v7, v0, 0x2

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setY(F)V

    .line 144
    invoke-virtual {p0, v3, v4}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_hovering"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mOldHoveringSetting:I

    .line 147
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_hovering"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    iget v2, p0, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->mOldHoveringSetting:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onDestroy()V

    .line 187
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 162
    const/16 v0, 0x19

    if-eq p1, v0, :cond_8

    const/16 v0, 0x18

    if-ne p1, v0, :cond_b

    .line 163
    :cond_8
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->finish()V

    .line 165
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->turnOffRotationFix()V

    .line 172
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onPause()V

    .line 173
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 178
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIBase;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->turnOnRotationFix()V

    .line 180
    invoke-virtual {p0}, Lcom/sec/factory/app/ui/UISpenAccuracyPointTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setRemoveSystemUI(Landroid/view/Window;Z)V

    .line 181
    return-void
.end method
